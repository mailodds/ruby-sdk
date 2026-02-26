# Mailodds::DeliverResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **request_id** | **String** | Unique request identifier | [optional] |
| **message_id** | **String** | Unique message identifier | [optional] |
| **status** | **String** | Delivery status | [optional] |
| **delivery** | [**DeliverResponseDelivery**](DeliverResponseDelivery.md) |  | [optional] |
| **validation** | **Object** | Pre-send validation results (when validate_first is true) | [optional] |
| **content_scan** | **Object** | Content scan results | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::DeliverResponse.new(
  schema_version: null,
  request_id: null,
  message_id: null,
  status: null,
  delivery: null,
  validation: null,
  content_scan: null
)
```

