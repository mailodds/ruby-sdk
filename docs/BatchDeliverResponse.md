# Mailodds::BatchDeliverResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **request_id** | **String** | Unique request identifier | [optional] |
| **total** | **Integer** | Total recipients submitted | [optional] |
| **accepted** | **Integer** | Number of recipients accepted for delivery | [optional] |
| **rejected** | [**Array&lt;BatchDeliverResponseRejectedInner&gt;**](BatchDeliverResponseRejectedInner.md) | Recipients that were rejected (suppressed or failed validation) | [optional] |
| **status** | **String** | Batch status | [optional] |
| **delivery** | [**BatchDeliverResponseDelivery**](BatchDeliverResponseDelivery.md) |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::BatchDeliverResponse.new(
  schema_version: null,
  request_id: null,
  total: null,
  accepted: null,
  rejected: null,
  status: null,
  delivery: null
)
```

