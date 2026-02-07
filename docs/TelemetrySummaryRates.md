# Mailodds::TelemetrySummaryRates

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deliverable** | **Float** | Rate of valid + catch_all emails | [optional] |
| **reject** | **Float** | Rate of invalid + do_not_mail emails | [optional] |
| **unknown** | **Float** | Rate of unknown status | [optional] |
| **suppressed** | **Float** | Rate of suppressed emails | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::TelemetrySummaryRates.new(
  deliverable: null,
  reject: null,
  unknown: null,
  suppressed: null
)
```

