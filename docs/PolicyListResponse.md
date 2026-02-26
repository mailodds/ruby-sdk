# Mailodds::PolicyListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **request_id** | **String** | Unique request identifier | [optional] |
| **policies** | [**Array&lt;Policy&gt;**](Policy.md) |  | [optional] |
| **limits** | [**PolicyListResponseLimits**](PolicyListResponseLimits.md) |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::PolicyListResponse.new(
  schema_version: null,
  request_id: null,
  policies: null,
  limits: null
)
```

