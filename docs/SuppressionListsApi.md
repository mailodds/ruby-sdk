# Mailodds::SuppressionListsApi

All URIs are relative to *https://api.mailodds.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_suppression**](SuppressionListsApi.md#add_suppression) | **POST** /v1/suppression | Add suppression entries |
| [**check_suppression**](SuppressionListsApi.md#check_suppression) | **POST** /v1/suppression/check | Check suppression status |
| [**get_suppression_stats**](SuppressionListsApi.md#get_suppression_stats) | **GET** /v1/suppression/stats | Get suppression statistics |
| [**list_suppression**](SuppressionListsApi.md#list_suppression) | **GET** /v1/suppression | List suppression entries |
| [**remove_suppression**](SuppressionListsApi.md#remove_suppression) | **DELETE** /v1/suppression | Remove suppression entries |


## add_suppression

> <AddSuppressionResponse> add_suppression(add_suppression_request)

Add suppression entries

Add emails or domains to the suppression list.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SuppressionListsApi.new
add_suppression_request = Mailodds::AddSuppressionRequest.new({entries: [Mailodds::AddSuppressionRequestEntriesInner.new({type: 'email', value: 'value_example'})]}) # AddSuppressionRequest | 

begin
  # Add suppression entries
  result = api_instance.add_suppression(add_suppression_request)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SuppressionListsApi->add_suppression: #{e}"
end
```

#### Using the add_suppression_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddSuppressionResponse>, Integer, Hash)> add_suppression_with_http_info(add_suppression_request)

```ruby
begin
  # Add suppression entries
  data, status_code, headers = api_instance.add_suppression_with_http_info(add_suppression_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddSuppressionResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling SuppressionListsApi->add_suppression_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_suppression_request** | [**AddSuppressionRequest**](AddSuppressionRequest.md) |  |  |

### Return type

[**AddSuppressionResponse**](AddSuppressionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## check_suppression

> <SuppressionCheckResponse> check_suppression(check_suppression_request)

Check suppression status

Check if an email is suppressed.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SuppressionListsApi.new
check_suppression_request = Mailodds::CheckSuppressionRequest.new({email: 'email_example'}) # CheckSuppressionRequest | 

begin
  # Check suppression status
  result = api_instance.check_suppression(check_suppression_request)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SuppressionListsApi->check_suppression: #{e}"
end
```

#### Using the check_suppression_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuppressionCheckResponse>, Integer, Hash)> check_suppression_with_http_info(check_suppression_request)

```ruby
begin
  # Check suppression status
  data, status_code, headers = api_instance.check_suppression_with_http_info(check_suppression_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuppressionCheckResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling SuppressionListsApi->check_suppression_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_suppression_request** | [**CheckSuppressionRequest**](CheckSuppressionRequest.md) |  |  |

### Return type

[**SuppressionCheckResponse**](SuppressionCheckResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_suppression_stats

> <SuppressionStatsResponse> get_suppression_stats

Get suppression statistics

Get statistics about the suppression list.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SuppressionListsApi.new

begin
  # Get suppression statistics
  result = api_instance.get_suppression_stats
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SuppressionListsApi->get_suppression_stats: #{e}"
end
```

#### Using the get_suppression_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuppressionStatsResponse>, Integer, Hash)> get_suppression_stats_with_http_info

```ruby
begin
  # Get suppression statistics
  data, status_code, headers = api_instance.get_suppression_stats_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuppressionStatsResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling SuppressionListsApi->get_suppression_stats_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SuppressionStatsResponse**](SuppressionStatsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_suppression

> <SuppressionListResponse> list_suppression(opts)

List suppression entries

List all suppression entries for the account.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SuppressionListsApi.new
opts = {
  page: 56, # Integer | 
  per_page: 56, # Integer | 
  type: 'email', # String | 
  search: 'search_example' # String | 
}

begin
  # List suppression entries
  result = api_instance.list_suppression(opts)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SuppressionListsApi->list_suppression: #{e}"
end
```

#### Using the list_suppression_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuppressionListResponse>, Integer, Hash)> list_suppression_with_http_info(opts)

```ruby
begin
  # List suppression entries
  data, status_code, headers = api_instance.list_suppression_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuppressionListResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling SuppressionListsApi->list_suppression_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional][default to 1] |
| **per_page** | **Integer** |  | [optional][default to 50] |
| **type** | **String** |  | [optional] |
| **search** | **String** |  | [optional] |

### Return type

[**SuppressionListResponse**](SuppressionListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_suppression

> <RemoveSuppression200Response> remove_suppression(remove_suppression_request)

Remove suppression entries

Remove emails or domains from the suppression list.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SuppressionListsApi.new
remove_suppression_request = Mailodds::RemoveSuppressionRequest.new({entries: ['entries_example']}) # RemoveSuppressionRequest | 

begin
  # Remove suppression entries
  result = api_instance.remove_suppression(remove_suppression_request)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SuppressionListsApi->remove_suppression: #{e}"
end
```

#### Using the remove_suppression_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveSuppression200Response>, Integer, Hash)> remove_suppression_with_http_info(remove_suppression_request)

```ruby
begin
  # Remove suppression entries
  data, status_code, headers = api_instance.remove_suppression_with_http_info(remove_suppression_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveSuppression200Response>
rescue Mailodds::ApiError => e
  puts "Error when calling SuppressionListsApi->remove_suppression_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remove_suppression_request** | [**RemoveSuppressionRequest**](RemoveSuppressionRequest.md) |  |  |

### Return type

[**RemoveSuppression200Response**](RemoveSuppression200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

