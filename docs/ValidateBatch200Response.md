# Mailodds::ValidateBatch200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **request_id** | **String** | Unique request identifier | [optional] |
| **total** | **Integer** |  | [optional] |
| **summary** | [**ValidateBatch200ResponseSummary**](ValidateBatch200ResponseSummary.md) |  | [optional] |
| **results** | [**Array&lt;ValidationResponse&gt;**](ValidationResponse.md) |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::ValidateBatch200Response.new(
  schema_version: null,
  request_id: null,
  total: null,
  summary: null,
  results: null
)
```

