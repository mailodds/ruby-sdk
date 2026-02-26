# SDK smoke test -- validates build-from-source and API integration using the SDK client.
require 'mailodds'

api_key = ENV['MAILODDS_TEST_KEY']
abort('ERROR: MAILODDS_TEST_KEY not set') if api_key.nil? || api_key.empty?

Mailodds.configure do |c|
  c.access_token = api_key
  c.base_path = ''
end

api = Mailodds::EmailValidationApi.new

$passed = 0
$failed = 0

def check(label, expected, actual)
  if expected == actual
    $passed += 1
  else
    $failed += 1
    puts "  FAIL: #{label} expected=#{expected.inspect} got=#{actual.inspect}"
  end
end

def check_not_nil(label, actual)
  if !actual.nil?
    $passed += 1
  else
    $failed += 1
    puts "  FAIL: #{label} expected non-nil, got nil"
  end
end

def check_true(label, actual)
  if actual
    $passed += 1
  else
    $failed += 1
    puts "  FAIL: #{label} expected truthy, got #{actual.inspect}"
  end
end

ts = Time.now.to_i.to_s

# ---------------------------------------------------------------------------
# 1. Email Validation
# ---------------------------------------------------------------------------

cases = [
  ['test@deliverable.mailodds.com', 'valid', 'accept', nil, false, false, false, true, 'enhanced'],
  ['test@invalid.mailodds.com', 'invalid', 'reject', 'smtp_rejected', false, false, false, true, 'enhanced'],
  ['test@risky.mailodds.com', 'catch_all', 'accept_with_caution', 'catch_all_detected', false, false, false, true, 'enhanced'],
  ['test@disposable.mailodds.com', 'do_not_mail', 'reject', 'disposable', false, true, false, true, 'enhanced'],
  ['test@role.mailodds.com', 'do_not_mail', 'reject', 'role_account', false, false, true, true, 'enhanced'],
  ['test@timeout.mailodds.com', 'unknown', 'retry_later', 'smtp_unreachable', false, false, false, true, 'enhanced'],
  ['test@freeprovider.mailodds.com', 'valid', 'accept', nil, true, false, false, true, 'enhanced'],
]

cases.each do |email, exp_status, exp_action, exp_sub, exp_free, exp_disp, exp_role, exp_mx, exp_depth|
  domain = email.split('@')[1].split('.')[0]
  begin
    req = Mailodds::ValidateRequest.new(email: email)
    resp = api.validate_email(req)
    check("#{domain}.status", exp_status, resp.status)
    check("#{domain}.action", exp_action, resp.action)
    check("#{domain}.sub_status", exp_sub, resp.sub_status)
    check("#{domain}.free_provider", exp_free, resp.free_provider)
    check("#{domain}.disposable", exp_disp, resp.disposable)
    check("#{domain}.role_account", exp_role, resp.role_account)
    check("#{domain}.mx_found", exp_mx, resp.mx_found)
    check("#{domain}.depth", exp_depth, resp.depth)
    if !resp.processed_at || resp.processed_at.to_s.empty?
      $failed += 1
      puts "  FAIL: #{domain}.processed_at is empty"
    else
      $passed += 1
    end
  rescue => e
    $failed += 1
    puts "  FAIL: #{domain} #{e.class}: #{e.message}"
  end
end

# Error handling: 401 with bad key
begin
  bad_config = Mailodds::Configuration.new { |c| c.access_token = 'invalid_key'; c.base_path = '' }
  bad_api = Mailodds::EmailValidationApi.new(Mailodds::ApiClient.new(bad_config))
  bad_api.validate_email(Mailodds::ValidateRequest.new(email: 'test@deliverable.mailodds.com'))
  $failed += 1
  puts '  FAIL: error.401 no exception raised'
rescue Mailodds::ApiError => e
  check('error.401', 401, e.code)
end

# Error handling: 400/422 with missing email
begin
  api.validate_email(Mailodds::ValidateRequest.new(email: ''))
  $failed += 1
  puts '  FAIL: error.400 no exception raised'
rescue Mailodds::ApiError => e
  if [400, 422].include?(e.code)
    $passed += 1
  else
    $failed += 1
    puts "  FAIL: error.400 expected=400|422 got=#{e.code}"
  end
end

# ---------------------------------------------------------------------------
# 2. Bulk Validation
# ---------------------------------------------------------------------------

begin
  bulk_api = Mailodds::BulkValidationApi.new
  job_id = nil

  begin
    # Create job
    job_req = Mailodds::CreateJobRequest.new(emails: ['test@deliverable.mailodds.com'])
    job_resp = bulk_api.create_job(job_req)
    check_not_nil('bulk.create.job', job_resp.job)
    check_not_nil('bulk.create.job.id', job_resp.job&.id)
    check_true('bulk.create.job.id_prefix', job_resp.job&.id.to_s.start_with?('job_'))
    check('bulk.create.job.status', 'pending', job_resp.job&.status)
    job_id = job_resp.job&.id

    # Get job
    if job_id
      get_resp = bulk_api.get_job(job_id)
      check_not_nil('bulk.get.job', get_resp.job)
      check('bulk.get.job.id', job_id, get_resp.job&.id)
    else
      $failed += 1
      puts '  FAIL: bulk.get skipped (no job_id)'
    end
  rescue => e
    $failed += 1
    puts "  FAIL: bulk.create/get #{e.class}: #{e.message}"
  ensure
    # Cleanup: delete job
    if job_id
      begin
        del_resp = bulk_api.delete_job(job_id)
        check('bulk.delete.deleted', true, del_resp.deleted)
      rescue => e
        $failed += 1
        puts "  FAIL: bulk.delete #{e.class}: #{e.message}"
      end
    end
  end
rescue => e
  $failed += 1
  puts "  FAIL: bulk.init #{e.class}: #{e.message}"
end

# ---------------------------------------------------------------------------
# 3. Suppression Lists
# ---------------------------------------------------------------------------

begin
  supp_api = Mailodds::SuppressionListsApi.new
  test_email = "smoketest-#{ts}@example.com"

  begin
    # Add suppression
    entry = Mailodds::AddSuppressionRequestEntriesInner.new(
      type: 'email',
      value: test_email,
      reason: 'smoke_test'
    )
    add_req = Mailodds::AddSuppressionRequest.new(entries: [entry])
    add_resp = supp_api.add_suppression(add_req)
    check_true('suppression.add.added', add_resp.added.to_i >= 1)

    # Check suppression
    check_req = Mailodds::CheckSuppressionRequest.new(email: test_email)
    check_resp = supp_api.check_suppression(check_req)
    check('suppression.check.suppressed', true, check_resp.suppressed)

    # Stats
    stats_resp = supp_api.get_suppression_stats
    check_not_nil('suppression.stats.total', stats_resp.total)
  rescue => e
    $failed += 1
    puts "  FAIL: suppression.ops #{e.class}: #{e.message}"
  ensure
    # Cleanup: remove suppression
    begin
      rm_req = Mailodds::RemoveSuppressionRequest.new(entries: [test_email])
      rm_resp = supp_api.remove_suppression(rm_req)
      check_true('suppression.remove.removed', rm_resp.removed.to_i >= 1)
    rescue => e
      $failed += 1
      puts "  FAIL: suppression.remove #{e.class}: #{e.message}"
    end
  end
rescue => e
  $failed += 1
  puts "  FAIL: suppression.init #{e.class}: #{e.message}"
end

# ---------------------------------------------------------------------------
# 4. Validation Policies
# ---------------------------------------------------------------------------

begin
  pol_api = Mailodds::ValidationPoliciesApi.new

  # Cleanup leftover smoke policies (free plan allows only 1)
  begin
    existing = pol_api.list_policies
    (existing.policies || []).each do |p|
      if p.name && p.name.start_with?('smoke', 'ruby-smoke')
        begin; pol_api.delete_policy(p.id); rescue; end
      end
    end
  rescue; end
  policy_id = nil

  begin
    # Get presets
    presets_resp = pol_api.get_policy_presets
    check_not_nil('policies.presets', presets_resp.presets)
    check_true('policies.presets.length', presets_resp.presets.length > 0)

    # Create from preset (use the first preset)
    preset_id = presets_resp.presets[0].id
    create_req = Mailodds::CreatePolicyFromPresetRequest.new(
      preset_id: preset_id,
      name: "ruby-smoke-#{ts}"
    )
    create_resp = pol_api.create_policy_from_preset(create_req)
    check_not_nil('policies.create.policy', create_resp.policy)
    check_not_nil('policies.create.policy.id', create_resp.policy&.id)
    policy_id = create_resp.policy&.id
  rescue => e
    $failed += 1
    puts "  FAIL: policies.ops #{e.class}: #{e.message}"
  ensure
    # Cleanup: delete policy
    if policy_id
      begin
        del_resp = pol_api.delete_policy(policy_id)
        check('policies.delete.deleted', true, del_resp.deleted)
      rescue => e
        $failed += 1
        puts "  FAIL: policies.delete #{e.class}: #{e.message}"
      end
    end
  end
rescue => e
  $failed += 1
  puts "  FAIL: policies.init #{e.class}: #{e.message}"
end

# ---------------------------------------------------------------------------
# 5. System
# ---------------------------------------------------------------------------

# Health check (no auth required)
begin
  no_auth_config = Mailodds::Configuration.new { |c| c.base_path = '' }
  no_auth_client = Mailodds::ApiClient.new(no_auth_config)
  sys_no_auth = Mailodds::SystemApi.new(no_auth_client)
  health_resp = sys_no_auth.health_check
  check('system.health.status', 'healthy', health_resp.status)
rescue => e
  $failed += 1
  puts "  FAIL: system.health #{e.class}: #{e.message}"
end

# Telemetry (auth required)
begin
  sys_api = Mailodds::SystemApi.new
  telem_resp = sys_api.get_telemetry_summary
  check_not_nil('system.telemetry', telem_resp)
  check_not_nil('system.telemetry.window', telem_resp.window)
rescue => e
  $failed += 1
  puts "  FAIL: system.telemetry #{e.class}: #{e.message}"
end

# ---------------------------------------------------------------------------
# 6. Sending Domains
# ---------------------------------------------------------------------------

begin
  dom_api = Mailodds::SendingDomainsApi.new
  domain_id = nil

  begin
    # List domains
    list_resp = dom_api.list_sending_domains
    check_not_nil('domains.list.domains', list_resp.domains)
    check_true('domains.list.is_array', list_resp.domains.is_a?(Array))

    # Create domain
    create_req = Mailodds::CreateSendingDomainRequest.new(
      domain: "ruby-smoke-#{ts}.example.com"
    )
    create_resp = dom_api.create_sending_domain(create_req)
    check_not_nil('domains.create.domain', create_resp.domain)
    check_not_nil('domains.create.domain.id', create_resp.domain&.id)
    domain_id = create_resp.domain&.id
  rescue => e
    $failed += 1
    puts "  FAIL: domains.ops #{e.class}: #{e.message}"
  ensure
    # Cleanup: delete domain
    if domain_id
      begin
        del_resp = dom_api.delete_sending_domain(domain_id)
        check('domains.delete.deleted', true, del_resp.deleted)
      rescue => e
        $failed += 1
        puts "  FAIL: domains.delete #{e.class}: #{e.message}"
      end
    end
  end
rescue => e
  $failed += 1
  puts "  FAIL: domains.init #{e.class}: #{e.message}"
end

# ---------------------------------------------------------------------------
# 7. Subscriber Lists
# ---------------------------------------------------------------------------

begin
  lists_api = Mailodds::SubscriberListsApi.new
  list_id = nil

  begin
    # Create list
    create_req = Mailodds::CreateListRequest.new(
      name: "ruby-smoke-#{ts}"
    )
    create_resp = lists_api.create_list(create_req)
    check_not_nil('lists.create.list', create_resp.list)
    check_not_nil('lists.create.list.id', create_resp.list&.id)
    list_id = create_resp.list&.id

    if list_id
      # List all lists
      get_lists_resp = lists_api.get_lists
      check_not_nil('lists.get_lists.lists', get_lists_resp.lists)
      check_true('lists.get_lists.length', get_lists_resp.lists.length > 0)

      # Subscribe
      sub_req = Mailodds::SubscribeRequest.new(
        email: "ruby-sub-#{ts}@example.com",
        name: 'Ruby Smoke Test'
      )
      sub_resp = lists_api.subscribe(list_id, sub_req)
      check_not_nil('lists.subscribe.subscriber', sub_resp.subscriber)
      check_not_nil('lists.subscribe.subscriber.id', sub_resp.subscriber&.id)
    else
      $failed += 2
      puts '  FAIL: lists.get_lists skipped (no list_id)'
      puts '  FAIL: lists.subscribe skipped (no list_id)'
    end
  rescue => e
    $failed += 1
    puts "  FAIL: lists.ops #{e.class}: #{e.message}"
  ensure
    # Cleanup: delete list
    if list_id
      begin
        del_resp = lists_api.delete_list(list_id)
        check('lists.delete.deleted', true, del_resp.deleted)
      rescue => e
        $failed += 1
        puts "  FAIL: lists.delete #{e.class}: #{e.message}"
      end
    end
  end
rescue => e
  $failed += 1
  puts "  FAIL: lists.init #{e.class}: #{e.message}"
end

# ---------------------------------------------------------------------------
# 8. Email Sending (import-only -- do not call live endpoints)
# ---------------------------------------------------------------------------

begin
  check('sending.class_exists', true, Mailodds::EmailSendingApi.method_defined?(:deliver_email))
  check('sending.batch_exists', true, Mailodds::EmailSendingApi.method_defined?(:deliver_batch))
rescue => e
  $failed += 1
  puts "  FAIL: sending.class_check #{e.class}: #{e.message}"
end

# ---------------------------------------------------------------------------
# Results
# ---------------------------------------------------------------------------

total = $passed + $failed
result = $failed == 0 ? 'PASS' : 'FAIL'
puts "\n#{result}: Ruby SDK (#{$passed}/#{total})"
exit($failed == 0 ? 0 : 1)
