# Mailodds::SendingDomainIdentityScore

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **overall_score** | **Float** | Composite score 0-100 | [optional] |
| **checks** | [**SendingDomainIdentityScoreChecks**](SendingDomainIdentityScoreChecks.md) |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::SendingDomainIdentityScore.new(
  overall_score: null,
  checks: null
)
```

