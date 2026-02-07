# Mailodds::ValidationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **email** | **String** |  |  |
| **status** | **String** | Validation status |  |
| **sub_status** | **String** | Detailed status reason | [optional] |
| **action** | **String** | Recommended action |  |
| **domain** | **String** |  | [optional] |
| **mx_found** | **Boolean** |  | [optional] |
| **smtp_check** | **Boolean** |  | [optional] |
| **disposable** | **Boolean** |  | [optional] |
| **role_account** | **Boolean** |  | [optional] |
| **free_provider** | **Boolean** |  | [optional] |
| **suppression_match** | [**ValidationResponseSuppressionMatch**](ValidationResponseSuppressionMatch.md) |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::ValidationResponse.new(
  schema_version: 1.0,
  email: null,
  status: null,
  sub_status: null,
  action: null,
  domain: null,
  mx_found: null,
  smtp_check: null,
  disposable: null,
  role_account: null,
  free_provider: null,
  suppression_match: null
)
```

