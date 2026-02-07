# Mailodds::BulkValidationApi

All URIs are relative to *https://api.mailodds.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_job**](BulkValidationApi.md#cancel_job) | **POST** /v1/jobs/{job_id}/cancel | Cancel a job |
| [**create_job**](BulkValidationApi.md#create_job) | **POST** /v1/jobs | Create bulk validation job (JSON) |
| [**create_job_from_s3**](BulkValidationApi.md#create_job_from_s3) | **POST** /v1/jobs/upload/s3 | Create job from S3 upload |
| [**create_job_upload**](BulkValidationApi.md#create_job_upload) | **POST** /v1/jobs/upload | Create bulk validation job (file upload) |
| [**delete_job**](BulkValidationApi.md#delete_job) | **DELETE** /v1/jobs/{job_id} | Delete a job |
| [**get_job**](BulkValidationApi.md#get_job) | **GET** /v1/jobs/{job_id} | Get job status |
| [**get_job_results**](BulkValidationApi.md#get_job_results) | **GET** /v1/jobs/{job_id}/results | Get job results |
| [**get_presigned_upload**](BulkValidationApi.md#get_presigned_upload) | **POST** /v1/jobs/upload/presigned | Get S3 presigned upload URL |
| [**list_jobs**](BulkValidationApi.md#list_jobs) | **GET** /v1/jobs | List validation jobs |


## cancel_job

> <JobResponse> cancel_job(job_id)

Cancel a job

Cancel a pending or processing job. Partial results are preserved.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::BulkValidationApi.new
job_id = 'job_id_example' # String | 

begin
  # Cancel a job
  result = api_instance.cancel_job(job_id)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling BulkValidationApi->cancel_job: #{e}"
end
```

#### Using the cancel_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobResponse>, Integer, Hash)> cancel_job_with_http_info(job_id)

```ruby
begin
  # Cancel a job
  data, status_code, headers = api_instance.cancel_job_with_http_info(job_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling BulkValidationApi->cancel_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** |  |  |

### Return type

[**JobResponse**](JobResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_job

> <JobResponse> create_job(create_job_request)

Create bulk validation job (JSON)

Create a new bulk validation job by submitting a JSON array of emails.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::BulkValidationApi.new
create_job_request = Mailodds::CreateJobRequest.new({emails: ['emails_example']}) # CreateJobRequest | 

begin
  # Create bulk validation job (JSON)
  result = api_instance.create_job(create_job_request)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling BulkValidationApi->create_job: #{e}"
end
```

#### Using the create_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobResponse>, Integer, Hash)> create_job_with_http_info(create_job_request)

```ruby
begin
  # Create bulk validation job (JSON)
  data, status_code, headers = api_instance.create_job_with_http_info(create_job_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling BulkValidationApi->create_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_job_request** | [**CreateJobRequest**](CreateJobRequest.md) |  |  |

### Return type

[**JobResponse**](JobResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_job_from_s3

> <JobResponse> create_job_from_s3(create_job_from_s3_request)

Create job from S3 upload

Create a validation job from a file previously uploaded to S3.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::BulkValidationApi.new
create_job_from_s3_request = Mailodds::CreateJobFromS3Request.new({s3_key: 's3_key_example'}) # CreateJobFromS3Request | 

begin
  # Create job from S3 upload
  result = api_instance.create_job_from_s3(create_job_from_s3_request)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling BulkValidationApi->create_job_from_s3: #{e}"
end
```

#### Using the create_job_from_s3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobResponse>, Integer, Hash)> create_job_from_s3_with_http_info(create_job_from_s3_request)

```ruby
begin
  # Create job from S3 upload
  data, status_code, headers = api_instance.create_job_from_s3_with_http_info(create_job_from_s3_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling BulkValidationApi->create_job_from_s3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_job_from_s3_request** | [**CreateJobFromS3Request**](CreateJobFromS3Request.md) |  |  |

### Return type

[**JobResponse**](JobResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_job_upload

> <JobResponse> create_job_upload(file, opts)

Create bulk validation job (file upload)

Create a new bulk validation job by uploading a CSV, Excel, or TXT file.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::BulkValidationApi.new
file = File.new('/path/to/some/file') # File | CSV, Excel (.xlsx, .xls), ODS, or TXT file
opts = {
  dedup: true, # Boolean | Remove duplicate emails
  metadata: 'metadata_example' # String | JSON metadata for the job
}

begin
  # Create bulk validation job (file upload)
  result = api_instance.create_job_upload(file, opts)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling BulkValidationApi->create_job_upload: #{e}"
end
```

#### Using the create_job_upload_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobResponse>, Integer, Hash)> create_job_upload_with_http_info(file, opts)

```ruby
begin
  # Create bulk validation job (file upload)
  data, status_code, headers = api_instance.create_job_upload_with_http_info(file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling BulkValidationApi->create_job_upload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | CSV, Excel (.xlsx, .xls), ODS, or TXT file |  |
| **dedup** | **Boolean** | Remove duplicate emails | [optional][default to false] |
| **metadata** | **String** | JSON metadata for the job | [optional] |

### Return type

[**JobResponse**](JobResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## delete_job

> <DeleteJob200Response> delete_job(job_id)

Delete a job

Permanently delete a completed or cancelled job and its results.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::BulkValidationApi.new
job_id = 'job_id_example' # String | 

begin
  # Delete a job
  result = api_instance.delete_job(job_id)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling BulkValidationApi->delete_job: #{e}"
end
```

#### Using the delete_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteJob200Response>, Integer, Hash)> delete_job_with_http_info(job_id)

```ruby
begin
  # Delete a job
  data, status_code, headers = api_instance.delete_job_with_http_info(job_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteJob200Response>
rescue Mailodds::ApiError => e
  puts "Error when calling BulkValidationApi->delete_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** |  |  |

### Return type

[**DeleteJob200Response**](DeleteJob200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_job

> <JobResponse> get_job(job_id)

Get job status

Get the status and details of a specific validation job.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::BulkValidationApi.new
job_id = 'job_id_example' # String | 

begin
  # Get job status
  result = api_instance.get_job(job_id)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling BulkValidationApi->get_job: #{e}"
end
```

#### Using the get_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobResponse>, Integer, Hash)> get_job_with_http_info(job_id)

```ruby
begin
  # Get job status
  data, status_code, headers = api_instance.get_job_with_http_info(job_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling BulkValidationApi->get_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** |  |  |

### Return type

[**JobResponse**](JobResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_job_results

> <ResultsResponse> get_job_results(job_id, opts)

Get job results

Download validation results in JSON, CSV, or NDJSON format.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::BulkValidationApi.new
job_id = 'job_id_example' # String | 
opts = {
  format: 'json', # String | 
  filter: 'all', # String | 
  page: 56, # Integer | 
  per_page: 56 # Integer | 
}

begin
  # Get job results
  result = api_instance.get_job_results(job_id, opts)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling BulkValidationApi->get_job_results: #{e}"
end
```

#### Using the get_job_results_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultsResponse>, Integer, Hash)> get_job_results_with_http_info(job_id, opts)

```ruby
begin
  # Get job results
  data, status_code, headers = api_instance.get_job_results_with_http_info(job_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultsResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling BulkValidationApi->get_job_results_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** |  |  |
| **format** | **String** |  | [optional][default to &#39;json&#39;] |
| **filter** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 1000] |

### Return type

[**ResultsResponse**](ResultsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, text/csv, application/x-ndjson


## get_presigned_upload

> <PresignedUploadResponse> get_presigned_upload(get_presigned_upload_request)

Get S3 presigned upload URL

Get a presigned URL for uploading large files (>10MB) directly to S3.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::BulkValidationApi.new
get_presigned_upload_request = Mailodds::GetPresignedUploadRequest.new({filename: 'filename_example'}) # GetPresignedUploadRequest | 

begin
  # Get S3 presigned upload URL
  result = api_instance.get_presigned_upload(get_presigned_upload_request)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling BulkValidationApi->get_presigned_upload: #{e}"
end
```

#### Using the get_presigned_upload_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PresignedUploadResponse>, Integer, Hash)> get_presigned_upload_with_http_info(get_presigned_upload_request)

```ruby
begin
  # Get S3 presigned upload URL
  data, status_code, headers = api_instance.get_presigned_upload_with_http_info(get_presigned_upload_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PresignedUploadResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling BulkValidationApi->get_presigned_upload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_presigned_upload_request** | [**GetPresignedUploadRequest**](GetPresignedUploadRequest.md) |  |  |

### Return type

[**PresignedUploadResponse**](PresignedUploadResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_jobs

> <JobListResponse> list_jobs(opts)

List validation jobs

List all validation jobs for the authenticated account.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::BulkValidationApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  status: 'pending' # String | 
}

begin
  # List validation jobs
  result = api_instance.list_jobs(opts)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling BulkValidationApi->list_jobs: #{e}"
end
```

#### Using the list_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobListResponse>, Integer, Hash)> list_jobs_with_http_info(opts)

```ruby
begin
  # List validation jobs
  data, status_code, headers = api_instance.list_jobs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobListResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling BulkValidationApi->list_jobs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 20] |
| **status** | **String** |  | [optional] |

### Return type

[**JobListResponse**](JobListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

