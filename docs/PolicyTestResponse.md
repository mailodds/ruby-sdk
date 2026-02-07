# Mailodds::PolicyTestResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **original** | **Object** | Original validation result before policy | [optional] |
| **modified** | **Object** | Result after policy applied | [optional] |
| **matched_rule** | **Object** | The rule that matched, or null if none matched | [optional] |
| **rules_evaluated** | **Integer** |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::PolicyTestResponse.new(
  schema_version: null,
  original: null,
  modified: null,
  matched_rule: null,
  rules_evaluated: null
)
```

