# Mailodds::AddSuppressionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **request_id** | **String** | Unique request identifier | [optional] |
| **added** | **Integer** | Number of entries successfully added | [optional] |
| **duplicates** | **Integer** | Number of duplicate entries skipped | [optional] |
| **invalid** | **Integer** | Number of invalid entries rejected | [optional] |
| **total** | **Integer** | Total entries in the request | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::AddSuppressionResponse.new(
  schema_version: null,
  request_id: null,
  added: null,
  duplicates: null,
  invalid: null,
  total: null
)
```

