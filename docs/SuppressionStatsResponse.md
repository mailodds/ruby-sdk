# Mailodds::SuppressionStatsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **total** | **Integer** |  | [optional] |
| **by_type** | [**SuppressionStatsResponseByType**](SuppressionStatsResponseByType.md) |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::SuppressionStatsResponse.new(
  schema_version: null,
  total: null,
  by_type: null
)
```

