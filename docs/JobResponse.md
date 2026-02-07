# Mailodds::JobResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **job** | [**Job**](Job.md) |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::JobResponse.new(
  schema_version: 1.0,
  job: null
)
```

