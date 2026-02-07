# Mailodds::CreateJobFromS3Request

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **s3_key** | **String** | S3 key from presigned upload |  |
| **dedup** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::CreateJobFromS3Request.new(
  s3_key: null,
  dedup: null
)
```

