# Mailodds::JobListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **request_id** | **String** | Unique request identifier | [optional] |
| **jobs** | [**Array&lt;Job&gt;**](Job.md) |  | [optional] |
| **pagination** | [**Pagination**](Pagination.md) |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::JobListResponse.new(
  schema_version: null,
  request_id: null,
  jobs: null,
  pagination: null
)
```

