# Mailodds::Job

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **total_count** | **Integer** |  | [optional] |
| **processed_count** | **Integer** |  | [optional] |
| **progress_percent** | **Integer** |  | [optional] |
| **summary** | [**JobSummary**](JobSummary.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **completed_at** | **Time** |  | [optional] |
| **metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'mailodds'

instance = Mailodds::Job.new(
  id: job_abc123xyz,
  status: null,
  total_count: null,
  processed_count: null,
  progress_percent: null,
  summary: null,
  created_at: null,
  completed_at: null,
  metadata: null
)
```

