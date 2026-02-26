# Mailodds::GetSendingStats200ResponseStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **period** | **String** |  | [optional] |
| **sent** | **Integer** |  | [optional] |
| **delivered** | **Integer** |  | [optional] |
| **bounced** | **Integer** |  | [optional] |
| **deferred** | **Integer** |  | [optional] |
| **failed** | **Integer** |  | [optional] |
| **opened_total** | **Integer** |  | [optional] |
| **opened_unique** | **Integer** |  | [optional] |
| **clicked_total** | **Integer** |  | [optional] |
| **clicked_unique** | **Integer** |  | [optional] |
| **unsubscribed** | **Integer** |  | [optional] |
| **delivery_rate** | **Float** |  | [optional] |
| **open_rate** | **Float** |  | [optional] |
| **click_rate** | **Float** |  | [optional] |
| **bot_opens** | **Integer** | Opens from known bots/scanners | [optional] |
| **human_opens** | **Integer** | Verified human opens | [optional] |
| **bot_open_pct** | **Float** | Percentage of opens from bots | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::GetSendingStats200ResponseStats.new(
  period: null,
  sent: null,
  delivered: null,
  bounced: null,
  deferred: null,
  failed: null,
  opened_total: null,
  opened_unique: null,
  clicked_total: null,
  clicked_unique: null,
  unsubscribed: null,
  delivery_rate: null,
  open_rate: null,
  click_rate: null,
  bot_opens: null,
  human_opens: null,
  bot_open_pct: null
)
```

