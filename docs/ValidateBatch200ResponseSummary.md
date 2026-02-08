# Mailodds::ValidateBatch200ResponseSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **valid** | **Integer** |  | [optional] |
| **invalid** | **Integer** |  | [optional] |
| **catch_all** | **Integer** |  | [optional] |
| **unknown** | **Integer** |  | [optional] |
| **do_not_mail** | **Integer** |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::ValidateBatch200ResponseSummary.new(
  valid: null,
  invalid: null,
  catch_all: null,
  unknown: null,
  do_not_mail: null
)
```

