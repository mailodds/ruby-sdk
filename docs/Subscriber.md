# Mailodds::Subscriber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Subscriber UUID | [optional] |
| **list_id** | **String** | List UUID | [optional] |
| **email** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **consent_source_ip** | **String** | IP address of subscription | [optional] |
| **consent_page_url** | **String** | Page URL where form was submitted | [optional] |
| **consent_form_id** | **String** | Form identifier | [optional] |
| **consent_timestamp** | **Time** |  | [optional] |
| **confirmed_at** | **Time** |  | [optional] |
| **unsubscribed_at** | **Time** |  | [optional] |
| **validation_result** | **Object** | Email validation result | [optional] |
| **metadata** | **Object** | Custom metadata | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::Subscriber.new(
  id: null,
  list_id: null,
  email: null,
  name: null,
  status: null,
  consent_source_ip: null,
  consent_page_url: null,
  consent_form_id: null,
  consent_timestamp: null,
  confirmed_at: null,
  unsubscribed_at: null,
  validation_result: null,
  metadata: null,
  created_at: null
)
```

