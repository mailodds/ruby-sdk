# Mailodds::ErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **error** | **String** | Machine-readable error code |  |
| **message** | **String** | Human-readable error message |  |

## Example

```ruby
require 'mailodds'

instance = Mailodds::ErrorResponse.new(
  schema_version: 1.0,
  error: null,
  message: null
)
```

