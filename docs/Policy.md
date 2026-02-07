# Mailodds::Policy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **is_default** | **Boolean** |  | [optional] |
| **is_enabled** | **Boolean** |  | [optional] |
| **priority** | **Integer** |  | [optional] |
| **rule_count** | **Integer** |  | [optional] |
| **rules** | [**Array&lt;PolicyRule&gt;**](PolicyRule.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::Policy.new(
  id: null,
  name: null,
  description: null,
  is_default: null,
  is_enabled: null,
  priority: null,
  rule_count: null,
  rules: null,
  created_at: null
)
```

