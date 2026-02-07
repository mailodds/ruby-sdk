# Mailodds::CreateJobRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **emails** | **Array&lt;String&gt;** | List of emails to validate |  |
| **dedup** | **Boolean** | Remove duplicate emails | [optional][default to false] |
| **metadata** | **Object** | Custom metadata for the job | [optional] |
| **webhook_url** | **String** | URL for completion webhook | [optional] |
| **idempotency_key** | **String** | Unique key for idempotent requests | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::CreateJobRequest.new(
  emails: null,
  dedup: null,
  metadata: null,
  webhook_url: null,
  idempotency_key: null
)
```

