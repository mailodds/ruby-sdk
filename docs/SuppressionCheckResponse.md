# Mailodds::SuppressionCheckResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **suppressed** | **Boolean** |  | [optional] |
| **match_type** | **String** |  | [optional] |
| **match_value** | **String** |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::SuppressionCheckResponse.new(
  schema_version: null,
  email: null,
  suppressed: null,
  match_type: null,
  match_value: null
)
```

