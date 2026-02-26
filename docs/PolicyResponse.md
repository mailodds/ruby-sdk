# Mailodds::PolicyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **request_id** | **String** | Unique request identifier | [optional] |
| **policy** | [**Policy**](Policy.md) |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::PolicyResponse.new(
  schema_version: null,
  request_id: null,
  policy: null
)
```

