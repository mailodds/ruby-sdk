# Mailodds::PolicyRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **type** | **String** | Rule type determines how condition is evaluated |  |
| **condition** | **Object** | Condition depends on rule type. status_override: {status}, domain_filter: {domain_mode, domains}, check_requirement: {check, required}, sub_status_override: {sub_status} |  |
| **action** | [**PolicyRuleAction**](PolicyRuleAction.md) |  |  |
| **sequence** | **Integer** |  | [optional] |
| **is_enabled** | **Boolean** |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::PolicyRule.new(
  id: null,
  type: null,
  condition: null,
  action: null,
  sequence: null,
  is_enabled: null
)
```

