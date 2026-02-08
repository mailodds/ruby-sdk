# Mailodds::ValidateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address to validate |  |
| **depth** | **String** | Validation depth. &#39;standard&#39; skips SMTP verification. | [optional][default to &#39;enhanced&#39;] |
| **policy_id** | **Integer** | Optional policy ID to use instead of default policy | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::ValidateRequest.new(
  email: null,
  depth: null,
  policy_id: null
)
```

