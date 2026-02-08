# SDK smoke test -- validates build-from-source and API integration.
require 'net/http'
require 'json'
require 'uri'

API_URL = 'https://api.mailodds.com'
API_KEY = ENV['MAILODDS_TEST_KEY']
abort('ERROR: MAILODDS_TEST_KEY not set') if API_KEY.nil? || API_KEY.empty?

# Prove SDK is loadable
require 'mailodds'

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

def api_call(email, key = API_KEY)
  uri = URI("#{API_URL}/v1/validate")
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  http.open_timeout = 30
  http.read_timeout = 30

  req = Net::HTTP::Post.new(uri)
  req['Authorization'] = "Bearer #{key}"
  req['Content-Type'] = 'application/json'
  req.body = { email: email }.to_json

  resp = http.request(req)
  { code: resp.code.to_i, data: JSON.parse(resp.body) }
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
    r = api_call(email)
    d = r[:data]
    check("#{domain}.status", exp_status, d['status'])
    check("#{domain}.action", exp_action, d['action'])
    check("#{domain}.sub_status", exp_sub, d['sub_status'])
    check("#{domain}.test_mode", true, d['test_mode'])
  rescue => e
    $failed += 1
    puts "  FAIL: #{domain} error: #{e.message}"
  end
end

# Error handling
r401 = api_call('test@deliverable.mailodds.com', 'invalid_key')
check('error.401', 401, r401[:code])

uri = URI("#{API_URL}/v1/validate")
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
req = Net::HTTP::Post.new(uri)
req['Authorization'] = "Bearer #{API_KEY}"
req['Content-Type'] = 'application/json'
req.body = '{}'
resp = http.request(req)
code = resp.code.to_i
if [400, 422].include?(code)
  $passed += 1
else
  $failed += 1
  puts "  FAIL: error.400 expected=400|422 got=#{code}"
end

total = $passed + $failed
result = $failed == 0 ? 'PASS' : 'FAIL'
puts "\n#{result}: Ruby SDK (#{$passed}/#{total})"
exit($failed == 0 ? 0 : 1)
