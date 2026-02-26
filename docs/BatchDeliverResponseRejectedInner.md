# Mailodds::BatchDeliverResponseRejectedInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  | [optional] |
| **reason** | **String** | Rejection reason (suppressed, validation_rejected) | [optional] |
| **status** | **String** | Validation status if rejected by validation | [optional] |
| **sub_status** | **String** | Validation sub-status if rejected by validation | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::BatchDeliverResponseRejectedInner.new(
  email: null,
  reason: null,
  status: null,
  sub_status: null
)
```

