# Mailodds::PolicyPresetsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **request_id** | **String** | Unique request identifier | [optional] |
| **presets** | [**Array&lt;PolicyPresetsResponsePresetsInner&gt;**](PolicyPresetsResponsePresetsInner.md) |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::PolicyPresetsResponse.new(
  schema_version: null,
  request_id: null,
  presets: null
)
```

