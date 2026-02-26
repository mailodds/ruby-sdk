# Mailodds::DeliverResponseDelivery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pool** | **String** | IP pool used | [optional] |
| **lane** | **String** | Delivery lane | [optional] |
| **warmup_limited** | **Boolean** | Whether warmup throttling was applied | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::DeliverResponseDelivery.new(
  pool: null,
  lane: null,
  warmup_limited: null
)
```

