# Mailodds::SystemApi

All URIs are relative to *https://api.mailodds.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_telemetry_summary**](SystemApi.md#get_telemetry_summary) | **GET** /v1/telemetry/summary | Get validation telemetry |
| [**health_check**](SystemApi.md#health_check) | **GET** /health | Health check |


## get_telemetry_summary

> <TelemetrySummary> get_telemetry_summary(opts)

Get validation telemetry

Get validation metrics for your account. Useful for building dashboards and monitoring. Supports ETag caching.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SystemApi.new
opts = {
  window: '1h' # String | Time window for metrics
}

begin
  # Get validation telemetry
  result = api_instance.get_telemetry_summary(opts)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SystemApi->get_telemetry_summary: #{e}"
end
```

#### Using the get_telemetry_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TelemetrySummary>, Integer, Hash)> get_telemetry_summary_with_http_info(opts)

```ruby
begin
  # Get validation telemetry
  data, status_code, headers = api_instance.get_telemetry_summary_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TelemetrySummary>
rescue Mailodds::ApiError => e
  puts "Error when calling SystemApi->get_telemetry_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **window** | **String** | Time window for metrics | [optional][default to &#39;24h&#39;] |

### Return type

[**TelemetrySummary**](TelemetrySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## health_check

> <HealthCheck200Response> health_check

Health check

Check API health status. No authentication required.

### Examples

```ruby
require 'time'
require 'mailodds'

api_instance = Mailodds::SystemApi.new

begin
  # Health check
  result = api_instance.health_check
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SystemApi->health_check: #{e}"
end
```

#### Using the health_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HealthCheck200Response>, Integer, Hash)> health_check_with_http_info

```ruby
begin
  # Health check
  data, status_code, headers = api_instance.health_check_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HealthCheck200Response>
rescue Mailodds::ApiError => e
  puts "Error when calling SystemApi->health_check_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**HealthCheck200Response**](HealthCheck200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

