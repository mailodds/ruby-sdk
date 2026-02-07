# Mailodds::ResultsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **results** | [**Array&lt;ValidationResult&gt;**](ValidationResult.md) |  | [optional] |
| **pagination** | [**Pagination**](Pagination.md) |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::ResultsResponse.new(
  schema_version: null,
  results: null,
  pagination: null
)
```

