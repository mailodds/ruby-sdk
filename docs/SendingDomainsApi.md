# Mailodds::SendingDomainsApi

All URIs are relative to *https://api.mailodds.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sending_domain**](SendingDomainsApi.md#create_sending_domain) | **POST** /v1/sending-domains | Add a sending domain |
| [**delete_sending_domain**](SendingDomainsApi.md#delete_sending_domain) | **DELETE** /v1/sending-domains/{domain_id} | Delete a sending domain |
| [**get_sending_domain**](SendingDomainsApi.md#get_sending_domain) | **GET** /v1/sending-domains/{domain_id} | Get a sending domain |
| [**get_sending_domain_identity_score**](SendingDomainsApi.md#get_sending_domain_identity_score) | **GET** /v1/sending-domains/{domain_id}/identity-score | Get domain identity score |
| [**get_sending_stats**](SendingDomainsApi.md#get_sending_stats) | **GET** /v1/sending-stats | Get sending statistics |
| [**list_sending_domains**](SendingDomainsApi.md#list_sending_domains) | **GET** /v1/sending-domains | List sending domains |
| [**verify_sending_domain**](SendingDomainsApi.md#verify_sending_domain) | **POST** /v1/sending-domains/{domain_id}/verify | Verify domain DNS records |


## create_sending_domain

> <CreateSendingDomain201Response> create_sending_domain(create_sending_domain_request)

Add a sending domain

Register a new sending domain with NS delegation. After adding, configure DNS records and verify.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SendingDomainsApi.new
create_sending_domain_request = Mailodds::CreateSendingDomainRequest.new({domain: 'example.com'}) # CreateSendingDomainRequest | 

begin
  # Add a sending domain
  result = api_instance.create_sending_domain(create_sending_domain_request)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SendingDomainsApi->create_sending_domain: #{e}"
end
```

#### Using the create_sending_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSendingDomain201Response>, Integer, Hash)> create_sending_domain_with_http_info(create_sending_domain_request)

```ruby
begin
  # Add a sending domain
  data, status_code, headers = api_instance.create_sending_domain_with_http_info(create_sending_domain_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSendingDomain201Response>
rescue Mailodds::ApiError => e
  puts "Error when calling SendingDomainsApi->create_sending_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_sending_domain_request** | [**CreateSendingDomainRequest**](CreateSendingDomainRequest.md) |  |  |

### Return type

[**CreateSendingDomain201Response**](CreateSendingDomain201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_sending_domain

> <DeletePolicyRule200Response> delete_sending_domain(domain_id)

Delete a sending domain

Permanently remove a sending domain from the account.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SendingDomainsApi.new
domain_id = 'domain_id_example' # String | 

begin
  # Delete a sending domain
  result = api_instance.delete_sending_domain(domain_id)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SendingDomainsApi->delete_sending_domain: #{e}"
end
```

#### Using the delete_sending_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletePolicyRule200Response>, Integer, Hash)> delete_sending_domain_with_http_info(domain_id)

```ruby
begin
  # Delete a sending domain
  data, status_code, headers = api_instance.delete_sending_domain_with_http_info(domain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletePolicyRule200Response>
rescue Mailodds::ApiError => e
  puts "Error when calling SendingDomainsApi->delete_sending_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_id** | **String** |  |  |

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sending_domain

> <CreateSendingDomain201Response> get_sending_domain(domain_id)

Get a sending domain

Get details of a specific sending domain including DNS verification status.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SendingDomainsApi.new
domain_id = 'domain_id_example' # String | 

begin
  # Get a sending domain
  result = api_instance.get_sending_domain(domain_id)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SendingDomainsApi->get_sending_domain: #{e}"
end
```

#### Using the get_sending_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSendingDomain201Response>, Integer, Hash)> get_sending_domain_with_http_info(domain_id)

```ruby
begin
  # Get a sending domain
  data, status_code, headers = api_instance.get_sending_domain_with_http_info(domain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSendingDomain201Response>
rescue Mailodds::ApiError => e
  puts "Error when calling SendingDomainsApi->get_sending_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_id** | **String** |  |  |

### Return type

[**CreateSendingDomain201Response**](CreateSendingDomain201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sending_domain_identity_score

> <GetSendingDomainIdentityScore200Response> get_sending_domain_identity_score(domain_id)

Get domain identity score

Get a composite DNS health score for the sending domain, checking DKIM, SPF, DMARC, MX, and return path configuration.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SendingDomainsApi.new
domain_id = 'domain_id_example' # String | 

begin
  # Get domain identity score
  result = api_instance.get_sending_domain_identity_score(domain_id)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SendingDomainsApi->get_sending_domain_identity_score: #{e}"
end
```

#### Using the get_sending_domain_identity_score_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSendingDomainIdentityScore200Response>, Integer, Hash)> get_sending_domain_identity_score_with_http_info(domain_id)

```ruby
begin
  # Get domain identity score
  data, status_code, headers = api_instance.get_sending_domain_identity_score_with_http_info(domain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSendingDomainIdentityScore200Response>
rescue Mailodds::ApiError => e
  puts "Error when calling SendingDomainsApi->get_sending_domain_identity_score_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_id** | **String** |  |  |

### Return type

[**GetSendingDomainIdentityScore200Response**](GetSendingDomainIdentityScore200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sending_stats

> <GetSendingStats200Response> get_sending_stats(opts)

Get sending statistics

Get aggregate sending statistics across all domains for the account, including delivery rates, open rates, and click rates.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SendingDomainsApi.new
opts = {
  period: '7d', # String | Time period
  domain_id: 'domain_id_example' # String | Filter by domain
}

begin
  # Get sending statistics
  result = api_instance.get_sending_stats(opts)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SendingDomainsApi->get_sending_stats: #{e}"
end
```

#### Using the get_sending_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSendingStats200Response>, Integer, Hash)> get_sending_stats_with_http_info(opts)

```ruby
begin
  # Get sending statistics
  data, status_code, headers = api_instance.get_sending_stats_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSendingStats200Response>
rescue Mailodds::ApiError => e
  puts "Error when calling SendingDomainsApi->get_sending_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **period** | **String** | Time period | [optional][default to &#39;7d&#39;] |
| **domain_id** | **String** | Filter by domain | [optional] |

### Return type

[**GetSendingStats200Response**](GetSendingStats200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_sending_domains

> <ListSendingDomains200Response> list_sending_domains

List sending domains

List all sending domains for the authenticated account.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SendingDomainsApi.new

begin
  # List sending domains
  result = api_instance.list_sending_domains
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SendingDomainsApi->list_sending_domains: #{e}"
end
```

#### Using the list_sending_domains_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSendingDomains200Response>, Integer, Hash)> list_sending_domains_with_http_info

```ruby
begin
  # List sending domains
  data, status_code, headers = api_instance.list_sending_domains_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSendingDomains200Response>
rescue Mailodds::ApiError => e
  puts "Error when calling SendingDomainsApi->list_sending_domains_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListSendingDomains200Response**](ListSendingDomains200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verify_sending_domain

> <CreateSendingDomain201Response> verify_sending_domain(domain_id)

Verify domain DNS records

Check and verify all DNS records (DKIM, SPF, DMARC, MX, return path) for the sending domain.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SendingDomainsApi.new
domain_id = 'domain_id_example' # String | 

begin
  # Verify domain DNS records
  result = api_instance.verify_sending_domain(domain_id)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SendingDomainsApi->verify_sending_domain: #{e}"
end
```

#### Using the verify_sending_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSendingDomain201Response>, Integer, Hash)> verify_sending_domain_with_http_info(domain_id)

```ruby
begin
  # Verify domain DNS records
  data, status_code, headers = api_instance.verify_sending_domain_with_http_info(domain_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSendingDomain201Response>
rescue Mailodds::ApiError => e
  puts "Error when calling SendingDomainsApi->verify_sending_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_id** | **String** |  |  |

### Return type

[**CreateSendingDomain201Response**](CreateSendingDomain201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

