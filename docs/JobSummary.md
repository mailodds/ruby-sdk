# Mailodds::JobSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **valid** | **Integer** |  | [optional] |
| **invalid** | **Integer** |  | [optional] |
| **catch_all** | **Integer** |  | [optional] |
| **do_not_mail** | **Integer** |  | [optional] |
| **unknown** | **Integer** |  | [optional] |
| **cancelled_pending** | **Integer** |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::JobSummary.new(
  valid: null,
  invalid: null,
  catch_all: null,
  do_not_mail: null,
  unknown: null,
  cancelled_pending: null
)
```

