# Mailodds::SubscriberList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | List UUID | [optional] |
| **account_id** | **Integer** | Account ID | [optional] |
| **name** | **String** | List name | [optional] |
| **description** | **String** | List description | [optional] |
| **confirmation_redirect_url** | **String** | Redirect URL after confirmation | [optional] |
| **confirmation_subject** | **String** | Confirmation email subject | [optional] |
| **confirmation_from_name** | **String** | Confirmation email sender name | [optional] |
| **subscriber_count** | **Integer** | Total subscriber count | [optional] |
| **confirmed_count** | **Integer** | Confirmed subscriber count | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::SubscriberList.new(
  id: null,
  account_id: null,
  name: null,
  description: null,
  confirmation_redirect_url: null,
  confirmation_subject: null,
  confirmation_from_name: null,
  subscriber_count: null,
  confirmed_count: null,
  created_at: null,
  updated_at: null
)
```

