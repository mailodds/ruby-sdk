# Mailodds::ValidationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **sub_status** | **String** |  | [optional] |
| **action** | **String** |  | [optional] |
| **processed_at** | **Time** |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::ValidationResult.new(
  email: null,
  status: null,
  sub_status: null,
  action: null,
  processed_at: null
)
```

