# Mailodds::CreatePolicyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **is_default** | **Boolean** |  | [optional][default to false] |
| **rules** | [**Array&lt;PolicyRule&gt;**](PolicyRule.md) |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::CreatePolicyRequest.new(
  name: null,
  description: null,
  is_default: null,
  rules: null
)
```

