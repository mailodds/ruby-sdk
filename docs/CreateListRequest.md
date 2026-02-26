# Mailodds::CreateListRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | List name (unique per account) |  |
| **description** | **String** | Optional list description | [optional] |
| **confirmation_redirect_url** | **String** | URL to redirect subscribers after confirmation | [optional] |
| **confirmation_subject** | **String** | Custom confirmation email subject | [optional] |
| **confirmation_from_name** | **String** | Custom sender name for confirmation emails | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::CreateListRequest.new(
  name: null,
  description: null,
  confirmation_redirect_url: null,
  confirmation_subject: null,
  confirmation_from_name: null
)
```

