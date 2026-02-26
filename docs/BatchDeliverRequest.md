# Mailodds::BatchDeliverRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **Array&lt;String&gt;** | List of recipient email addresses (max 100) |  |
| **from** | **String** |  |  |
| **subject** | **String** |  |  |
| **html** | **String** |  | [optional] |
| **text** | **String** |  | [optional] |
| **domain_id** | **String** |  |  |
| **reply_to** | **String** |  | [optional] |
| **headers** | **Object** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **campaign_type** | **String** |  | [optional] |
| **structured_data** | [**BatchDeliverRequestStructuredData**](BatchDeliverRequestStructuredData.md) |  | [optional] |
| **options** | **Object** |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::BatchDeliverRequest.new(
  to: null,
  from: null,
  subject: null,
  html: null,
  text: null,
  domain_id: null,
  reply_to: null,
  headers: null,
  tags: null,
  campaign_type: null,
  structured_data: null,
  options: null
)
```

