# Mailodds::BatchDeliverResponseDelivery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pool** | **String** | IP pool used | [optional] |
| **lane** | **String** | Delivery lane (green or yellow) | [optional] |
| **queued_at** | **Time** | Timestamp when batch was queued | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::BatchDeliverResponseDelivery.new(
  pool: null,
  lane: null,
  queued_at: null
)
```

