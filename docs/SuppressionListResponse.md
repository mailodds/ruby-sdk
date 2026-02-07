# Mailodds::SuppressionListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **entries** | [**Array&lt;SuppressionEntry&gt;**](SuppressionEntry.md) |  | [optional] |
| **pagination** | [**Pagination**](Pagination.md) |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::SuppressionListResponse.new(
  schema_version: null,
  entries: null,
  pagination: null
)
```

