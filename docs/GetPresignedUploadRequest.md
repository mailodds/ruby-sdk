# Mailodds::GetPresignedUploadRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filename** | **String** | Original filename |  |
| **content_type** | **String** | File MIME type | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::GetPresignedUploadRequest.new(
  filename: null,
  content_type: null
)
```

