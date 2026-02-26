# Mailodds::JobResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **request_id** | **String** | Unique request identifier | [optional] |
| **job** | [**Job**](Job.md) |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::JobResponse.new(
  schema_version: 1.0,
  request_id: null,
  job: null
)
```

