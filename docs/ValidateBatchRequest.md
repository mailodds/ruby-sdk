# Mailodds::ValidateBatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **emails** | **Array&lt;String&gt;** | List of emails to validate |  |
| **depth** | **String** |  | [optional][default to &#39;enhanced&#39;] |
| **policy_id** | **Integer** | Optional policy ID | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::ValidateBatchRequest.new(
  emails: null,
  depth: null,
  policy_id: null
)
```

