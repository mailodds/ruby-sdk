# Mailodds::SendingDomainIdentityScoreChecks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dkim** | [**SendingDomainIdentityScoreChecksDkim**](SendingDomainIdentityScoreChecksDkim.md) |  | [optional] |
| **spf** | [**SendingDomainIdentityScoreChecksDkim**](SendingDomainIdentityScoreChecksDkim.md) |  | [optional] |
| **dmarc** | [**SendingDomainIdentityScoreChecksDmarc**](SendingDomainIdentityScoreChecksDmarc.md) |  | [optional] |
| **mx** | [**SendingDomainIdentityScoreChecksDkim**](SendingDomainIdentityScoreChecksDkim.md) |  | [optional] |
| **return_path** | [**SendingDomainIdentityScoreChecksDkim**](SendingDomainIdentityScoreChecksDkim.md) |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::SendingDomainIdentityScoreChecks.new(
  dkim: null,
  spf: null,
  dmarc: null,
  mx: null,
  return_path: null
)
```

