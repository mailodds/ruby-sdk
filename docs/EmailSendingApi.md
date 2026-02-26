# Mailodds::EmailSendingApi

All URIs are relative to *https://api.mailodds.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**deliver_batch**](EmailSendingApi.md#deliver_batch) | **POST** /v1/deliver/batch | Send to multiple recipients (max 100) |
| [**deliver_email**](EmailSendingApi.md#deliver_email) | **POST** /v1/deliver | Send a single email |


## deliver_batch

> <BatchDeliverResponse> deliver_batch(batch_deliver_request)

Send to multiple recipients (max 100)

Send a single message to up to 100 recipients. Shares the same message body across all recipients. Each recipient is processed independently.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::EmailSendingApi.new
batch_deliver_request = Mailodds::BatchDeliverRequest.new({to: ['to_example'], from: 'from_example', subject: 'subject_example', domain_id: 'domain_id_example'}) # BatchDeliverRequest | 

begin
  # Send to multiple recipients (max 100)
  result = api_instance.deliver_batch(batch_deliver_request)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling EmailSendingApi->deliver_batch: #{e}"
end
```

#### Using the deliver_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchDeliverResponse>, Integer, Hash)> deliver_batch_with_http_info(batch_deliver_request)

```ruby
begin
  # Send to multiple recipients (max 100)
  data, status_code, headers = api_instance.deliver_batch_with_http_info(batch_deliver_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchDeliverResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling EmailSendingApi->deliver_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_deliver_request** | [**BatchDeliverRequest**](BatchDeliverRequest.md) |  |  |

### Return type

[**BatchDeliverResponse**](BatchDeliverResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deliver_email

> <DeliverResponse> deliver_email(deliver_request)

Send a single email

Send a transactional email through the safety pipeline. Validates recipients, checks domain ownership, and queues for delivery. Requires a verified sending domain.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::EmailSendingApi.new
deliver_request = Mailodds::DeliverRequest.new({to: [Mailodds::DeliverRequestToInner.new({email: 'email_example'})], from: 'from_example', subject: 'subject_example', domain_id: 'domain_id_example'}) # DeliverRequest | 

begin
  # Send a single email
  result = api_instance.deliver_email(deliver_request)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling EmailSendingApi->deliver_email: #{e}"
end
```

#### Using the deliver_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeliverResponse>, Integer, Hash)> deliver_email_with_http_info(deliver_request)

```ruby
begin
  # Send a single email
  data, status_code, headers = api_instance.deliver_email_with_http_info(deliver_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeliverResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling EmailSendingApi->deliver_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deliver_request** | [**DeliverRequest**](DeliverRequest.md) |  |  |

### Return type

[**DeliverResponse**](DeliverResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

