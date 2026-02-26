# Mailodds::SendingDomainDnsRecordsNs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Record type (NS) | [optional] |
| **host** | **String** | NS record host (mo.yourdomain.com) | [optional] |
| **targets** | **Array&lt;String&gt;** | NS target servers | [optional] |
| **status** | **String** | Verification status | [optional] |
| **verified_at** | **Time** |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::SendingDomainDnsRecordsNs.new(
  type: null,
  host: null,
  targets: null,
  status: null,
  verified_at: null
)
```

