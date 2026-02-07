# Mailodds::ValidateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address to validate |  |
| **policy_id** | **Integer** | Optional policy ID to use instead of default policy | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::ValidateRequest.new(
  email: null,
  policy_id: null
)
```

