# Mailodds::EmailValidationApi

All URIs are relative to *https://api.mailodds.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**validate_batch**](EmailValidationApi.md#validate_batch) | **POST** /v1/validate/batch | Validate multiple emails (sync) |
| [**validate_email**](EmailValidationApi.md#validate_email) | **POST** /v1/validate | Validate single email |


## validate_batch

> <ValidateBatch200Response> validate_batch(validate_batch_request)

Validate multiple emails (sync)

Validate up to 100 email addresses synchronously. For larger lists, use the bulk jobs API.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::EmailValidationApi.new
validate_batch_request = Mailodds::ValidateBatchRequest.new({emails: ['emails_example']}) # ValidateBatchRequest | 

begin
  # Validate multiple emails (sync)
  result = api_instance.validate_batch(validate_batch_request)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling EmailValidationApi->validate_batch: #{e}"
end
```

#### Using the validate_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ValidateBatch200Response>, Integer, Hash)> validate_batch_with_http_info(validate_batch_request)

```ruby
begin
  # Validate multiple emails (sync)
  data, status_code, headers = api_instance.validate_batch_with_http_info(validate_batch_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ValidateBatch200Response>
rescue Mailodds::ApiError => e
  puts "Error when calling EmailValidationApi->validate_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **validate_batch_request** | [**ValidateBatchRequest**](ValidateBatchRequest.md) |  |  |

### Return type

[**ValidateBatch200Response**](ValidateBatch200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## validate_email

> <ValidationResponse> validate_email(validate_request)

Validate single email

Validate a single email address. Returns detailed validation results including status, sub-status, and recommended action.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::EmailValidationApi.new
validate_request = Mailodds::ValidateRequest.new({email: 'email_example'}) # ValidateRequest | 

begin
  # Validate single email
  result = api_instance.validate_email(validate_request)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling EmailValidationApi->validate_email: #{e}"
end
```

#### Using the validate_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ValidationResponse>, Integer, Hash)> validate_email_with_http_info(validate_request)

```ruby
begin
  # Validate single email
  data, status_code, headers = api_instance.validate_email_with_http_info(validate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ValidationResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling EmailValidationApi->validate_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **validate_request** | [**ValidateRequest**](ValidateRequest.md) |  |  |

### Return type

[**ValidationResponse**](ValidationResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

