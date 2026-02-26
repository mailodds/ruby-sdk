# Mailodds::DeliverRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | [**Array&lt;DeliverRequestToInner&gt;**](DeliverRequestToInner.md) | List of recipient email addresses |  |
| **from** | **String** | Sender email address (must match sending domain) |  |
| **subject** | **String** | Email subject line |  |
| **html** | **String** | HTML email body | [optional] |
| **text** | **String** | Plain text email body | [optional] |
| **domain_id** | **String** | Sending domain UUID |  |
| **reply_to** | **String** | Reply-to address | [optional] |
| **headers** | **Object** | Extra email headers | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for categorization | [optional] |
| **campaign_type** | **String** | Campaign type for JSON-LD auto-generation | [optional] |
| **structured_data** | [**DeliverRequestStructuredData**](DeliverRequestStructuredData.md) |  | [optional] |
| **options** | [**DeliverRequestOptions**](DeliverRequestOptions.md) |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::DeliverRequest.new(
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

