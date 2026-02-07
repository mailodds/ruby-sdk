# MailOdds SDK for Ruby

Official Ruby client for the [MailOdds Email Validation API](https://mailodds.com/docs).

## Installation

```shell
gem install mailodds
```

Or add to your Gemfile:

```ruby
gem 'mailodds', '~> 1.0'
```

## Quick Start

```ruby
require 'mailodds'

Mailodds.configure do |config|
  config.access_token = 'mo_live_your_api_key'
end

api = Mailodds::EmailValidationApi.new
request = Mailodds::ValidateRequest.new(email: 'user@example.com')
result = api.validate_email(request)

case result.action
when 'accept'
  puts 'Safe to send'
when 'accept_with_caution'
  puts 'Valid but risky -- flag for review'
when 'reject'
  puts 'Do not send'
when 'retry_later'
  puts 'Temporary failure -- retry after backoff'
end
```

## Response Handling

Branch on the `action` field for decisioning:

| Action | Meaning | Recommended |
|--------|---------|-------------|
| `accept` | Safe to send | Add to mailing list |
| `accept_with_caution` | Valid but risky (catch-all, role account) | Flag for review |
| `reject` | Invalid or disposable | Do not send |
| `retry_later` | Temporary failure | Retry after backoff |

## Test Mode

Use an `mo_test_` prefixed API key with test domains for predictable responses without consuming credits.

## API Reference

Full API documentation: https://mailodds.com/docs
OpenAPI spec: https://mailodds.com/openapi.yaml

## License

MIT
