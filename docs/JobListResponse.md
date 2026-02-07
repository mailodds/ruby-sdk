# Mailodds::JobListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **jobs** | [**Array&lt;Job&gt;**](Job.md) |  | [optional] |
| **pagination** | [**Pagination**](Pagination.md) |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::JobListResponse.new(
  schema_version: null,
  jobs: null,
  pagination: null
)
```

