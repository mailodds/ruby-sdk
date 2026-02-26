# Mailodds::SubscribeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Subscriber email address |  |
| **name** | **String** | Subscriber name | [optional] |
| **metadata** | **Object** | Custom metadata key-value pairs | [optional] |
| **page_url** | **String** | URL of the page where the subscription form was submitted (for consent proof) | [optional] |
| **form_id** | **String** | Identifier of the form used to subscribe (for consent proof) | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::SubscribeRequest.new(
  email: null,
  name: null,
  metadata: null,
  page_url: null,
  form_id: null
)
```

