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

cases = [
  ['test@deliverable.mailodds.com', 'valid', 'accept', nil],
  ['test@invalid.mailodds.com', 'invalid', 'reject', 'smtp_rejected'],
  ['test@risky.mailodds.com', 'catch_all', 'accept_with_caution', 'catch_all_detected'],
  ['test@disposable.mailodds.com', 'do_not_mail', 'reject', 'disposable'],
  ['test@role.mailodds.com', 'do_not_mail', 'reject', 'role_account'],
  ['test@timeout.mailodds.com', 'unknown', 'retry_later', 'smtp_unreachable'],
  ['test@freeprovider.mailodds.com', 'valid', 'accept', nil],
]

cases.each do |email, exp_status, exp_action, exp_sub|
  domain = email.split('@')[1].split('.')[0]
  begin
    req = Mailodds::ValidateRequest.new(email: email)
    resp = api.validate_email(req)
    check("#{domain}.status", exp_status, resp.status)
    check("#{domain}.action", exp_action, resp.action)
    check("#{domain}.sub_status", exp_sub, resp.sub_status)
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

total = $passed + $failed
result = $failed == 0 ? 'PASS' : 'FAIL'
puts "\n#{result}: Ruby SDK (#{$passed}/#{total})"
exit($failed == 0 ? 0 : 1)
