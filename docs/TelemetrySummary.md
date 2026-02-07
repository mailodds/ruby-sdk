# Mailodds::TelemetrySummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **window** | **String** |  | [optional] |
| **generated_at** | **Time** |  | [optional] |
| **timezone** | **String** |  | [optional] |
| **totals** | [**TelemetrySummaryTotals**](TelemetrySummaryTotals.md) |  | [optional] |
| **rates** | [**TelemetrySummaryRates**](TelemetrySummaryRates.md) |  | [optional] |
| **top_reasons** | [**Array&lt;TelemetrySummaryTopReasonsInner&gt;**](TelemetrySummaryTopReasonsInner.md) | Top rejection/status reasons | [optional] |
| **top_domains** | [**Array&lt;TelemetrySummaryTopDomainsInner&gt;**](TelemetrySummaryTopDomainsInner.md) | Top domains by volume | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::TelemetrySummary.new(
  schema_version: 1.0,
  window: null,
  generated_at: null,
  timezone: UTC,
  totals: null,
  rates: null,
  top_reasons: null,
  top_domains: null
)
```

