# Mailodds::ValidationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  |  |
| **email** | **String** |  |  |
| **status** | **String** | Validation status |  |
| **action** | **String** | Recommended action |  |
| **sub_status** | **String** | Detailed status reason. Omitted when none. | [optional] |
| **domain** | **String** |  |  |
| **mx_found** | **Boolean** | Whether MX records were found for the domain |  |
| **mx_host** | **String** | Primary MX hostname. Omitted when MX not resolved. | [optional] |
| **smtp_check** | **Boolean** | Whether SMTP verification passed. Omitted when SMTP not checked. | [optional] |
| **catch_all** | **Boolean** | Whether domain is catch-all. Omitted when SMTP not checked. | [optional] |
| **disposable** | **Boolean** | Whether domain is a known disposable email provider |  |
| **role_account** | **Boolean** | Whether address is a role account (e.g., info@, admin@) |  |
| **free_provider** | **Boolean** | Whether domain is a known free email provider (e.g., gmail.com) |  |
| **depth** | **String** | Validation depth used for this check |  |
| **processed_at** | **Time** | ISO 8601 timestamp of validation |  |
| **suggested_email** | **String** | Typo correction suggestion. Omitted when no typo detected. | [optional] |
| **retry_after_ms** | **Integer** | Suggested retry delay in milliseconds. Present only for retry_later action. | [optional] |
| **suppression_match** | [**ValidationResponseSuppressionMatch**](ValidationResponseSuppressionMatch.md) |  | [optional] |
| **policy_applied** | [**ValidationResponsePolicyApplied**](ValidationResponsePolicyApplied.md) |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::ValidationResponse.new(
  schema_version: 1.0,
  email: null,
  status: null,
  action: null,
  sub_status: null,
  domain: null,
  mx_found: null,
  mx_host: null,
  smtp_check: null,
  catch_all: null,
  disposable: null,
  role_account: null,
  free_provider: null,
  depth: null,
  processed_at: null,
  suggested_email: null,
  retry_after_ms: null,
  suppression_match: null,
  policy_applied: null
)
```

