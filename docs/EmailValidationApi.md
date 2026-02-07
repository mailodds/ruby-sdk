# Mailodds::EmailValidationApi

All URIs are relative to *https://api.mailodds.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**validate_email**](EmailValidationApi.md#validate_email) | **POST** /v1/validate | Validate single email |


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

