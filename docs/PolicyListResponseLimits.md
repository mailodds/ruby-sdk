# Mailodds::PolicyListResponseLimits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_policies** | **Integer** | -1 means unlimited | [optional] |
| **max_rules_per_policy** | **Integer** |  | [optional] |
| **plan** | **String** |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::PolicyListResponseLimits.new(
  max_policies: null,
  max_rules_per_policy: null,
  plan: null
)
```

