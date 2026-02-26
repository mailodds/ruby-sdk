# Mailodds::PresignedUploadResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema_version** | **String** |  | [optional] |
| **request_id** | **String** | Unique request identifier | [optional] |
| **upload** | [**PresignedUploadResponseUpload**](PresignedUploadResponseUpload.md) |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::PresignedUploadResponse.new(
  schema_version: null,
  request_id: null,
  upload: null
)
```

