# Mailodds::SubscriberListsApi

All URIs are relative to *https://api.mailodds.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**confirm_subscription**](SubscriberListsApi.md#confirm_subscription) | **GET** /v1/confirm/{token} | Confirm subscription |
| [**create_list**](SubscriberListsApi.md#create_list) | **POST** /v1/lists | Create a subscriber list |
| [**delete_list**](SubscriberListsApi.md#delete_list) | **DELETE** /v1/lists/{list_id} | Delete a subscriber list |
| [**get_list**](SubscriberListsApi.md#get_list) | **GET** /v1/lists/{list_id} | Get a subscriber list |
| [**get_lists**](SubscriberListsApi.md#get_lists) | **GET** /v1/lists | List subscriber lists |
| [**get_subscribers**](SubscriberListsApi.md#get_subscribers) | **GET** /v1/lists/{list_id}/subscribers | List subscribers |
| [**subscribe**](SubscriberListsApi.md#subscribe) | **POST** /v1/subscribe/{list_id} | Subscribe to a list |
| [**unsubscribe_subscriber**](SubscriberListsApi.md#unsubscribe_subscriber) | **DELETE** /v1/lists/{list_id}/subscribers/{subscriber_id} | Unsubscribe a subscriber |


## confirm_subscription

> <ConfirmSubscription200Response> confirm_subscription(token)

Confirm subscription

Confirm a pending subscription via the token sent in the confirmation email. No authentication required. Redirects to the list's configured redirect URL if set, otherwise returns JSON. Tokens expire after 72 hours.

### Examples

```ruby
require 'time'
require 'mailodds'

api_instance = Mailodds::SubscriberListsApi.new
token = 'token_example' # String | Confirmation token from email

begin
  # Confirm subscription
  result = api_instance.confirm_subscription(token)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SubscriberListsApi->confirm_subscription: #{e}"
end
```

#### Using the confirm_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConfirmSubscription200Response>, Integer, Hash)> confirm_subscription_with_http_info(token)

```ruby
begin
  # Confirm subscription
  data, status_code, headers = api_instance.confirm_subscription_with_http_info(token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConfirmSubscription200Response>
rescue Mailodds::ApiError => e
  puts "Error when calling SubscriberListsApi->confirm_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | Confirmation token from email |  |

### Return type

[**ConfirmSubscription200Response**](ConfirmSubscription200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_list

> <CreateList201Response> create_list(create_list_request)

Create a subscriber list

Create a new subscriber list. Use lists to organize subscribers and manage double opt-in confirmation flows.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SubscriberListsApi.new
create_list_request = Mailodds::CreateListRequest.new({name: 'name_example'}) # CreateListRequest | 

begin
  # Create a subscriber list
  result = api_instance.create_list(create_list_request)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SubscriberListsApi->create_list: #{e}"
end
```

#### Using the create_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateList201Response>, Integer, Hash)> create_list_with_http_info(create_list_request)

```ruby
begin
  # Create a subscriber list
  data, status_code, headers = api_instance.create_list_with_http_info(create_list_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateList201Response>
rescue Mailodds::ApiError => e
  puts "Error when calling SubscriberListsApi->create_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_list_request** | [**CreateListRequest**](CreateListRequest.md) |  |  |

### Return type

[**CreateList201Response**](CreateList201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_list

> <DeletePolicyRule200Response> delete_list(list_id)

Delete a subscriber list

Soft-delete a subscriber list. Existing subscribers are retained but the list is no longer usable.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SubscriberListsApi.new
list_id = 'list_id_example' # String | List UUID

begin
  # Delete a subscriber list
  result = api_instance.delete_list(list_id)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SubscriberListsApi->delete_list: #{e}"
end
```

#### Using the delete_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletePolicyRule200Response>, Integer, Hash)> delete_list_with_http_info(list_id)

```ruby
begin
  # Delete a subscriber list
  data, status_code, headers = api_instance.delete_list_with_http_info(list_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletePolicyRule200Response>
rescue Mailodds::ApiError => e
  puts "Error when calling SubscriberListsApi->delete_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **String** | List UUID |  |

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_list

> <CreateList201Response> get_list(list_id)

Get a subscriber list

Get details of a specific subscriber list including subscriber and confirmed counts.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SubscriberListsApi.new
list_id = 'list_id_example' # String | List UUID

begin
  # Get a subscriber list
  result = api_instance.get_list(list_id)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SubscriberListsApi->get_list: #{e}"
end
```

#### Using the get_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateList201Response>, Integer, Hash)> get_list_with_http_info(list_id)

```ruby
begin
  # Get a subscriber list
  data, status_code, headers = api_instance.get_list_with_http_info(list_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateList201Response>
rescue Mailodds::ApiError => e
  puts "Error when calling SubscriberListsApi->get_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **String** | List UUID |  |

### Return type

[**CreateList201Response**](CreateList201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lists

> <GetLists200Response> get_lists(opts)

List subscriber lists

List all subscriber lists for the authenticated account with pagination.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SubscriberListsApi.new
opts = {
  page: 56, # Integer | Page number
  per_page: 56 # Integer | Items per page
}

begin
  # List subscriber lists
  result = api_instance.get_lists(opts)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SubscriberListsApi->get_lists: #{e}"
end
```

#### Using the get_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLists200Response>, Integer, Hash)> get_lists_with_http_info(opts)

```ruby
begin
  # List subscriber lists
  data, status_code, headers = api_instance.get_lists_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLists200Response>
rescue Mailodds::ApiError => e
  puts "Error when calling SubscriberListsApi->get_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number | [optional][default to 1] |
| **per_page** | **Integer** | Items per page | [optional][default to 25] |

### Return type

[**GetLists200Response**](GetLists200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_subscribers

> <GetSubscribers200Response> get_subscribers(list_id, opts)

List subscribers

List paginated subscribers for a specific list. Optionally filter by status.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SubscriberListsApi.new
list_id = 'list_id_example' # String | List UUID
opts = {
  page: 56, # Integer | Page number
  per_page: 56, # Integer | Items per page
  status: 'pending' # String | Filter by subscriber status
}

begin
  # List subscribers
  result = api_instance.get_subscribers(list_id, opts)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SubscriberListsApi->get_subscribers: #{e}"
end
```

#### Using the get_subscribers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSubscribers200Response>, Integer, Hash)> get_subscribers_with_http_info(list_id, opts)

```ruby
begin
  # List subscribers
  data, status_code, headers = api_instance.get_subscribers_with_http_info(list_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSubscribers200Response>
rescue Mailodds::ApiError => e
  puts "Error when calling SubscriberListsApi->get_subscribers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **String** | List UUID |  |
| **page** | **Integer** | Page number | [optional][default to 1] |
| **per_page** | **Integer** | Items per page | [optional][default to 50] |
| **status** | **String** | Filter by subscriber status | [optional] |

### Return type

[**GetSubscribers200Response**](GetSubscribers200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## subscribe

> <UnsubscribeSubscriber200Response> subscribe(list_id, subscribe_request)

Subscribe to a list

Add a subscriber to a list and initiate the double opt-in confirmation flow. The subscriber receives a confirmation email and must click the link to confirm. Rate limited to 10 requests/min per IP and 1000/hour per account.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SubscriberListsApi.new
list_id = 'list_id_example' # String | List UUID
subscribe_request = Mailodds::SubscribeRequest.new({email: 'email_example'}) # SubscribeRequest | 

begin
  # Subscribe to a list
  result = api_instance.subscribe(list_id, subscribe_request)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SubscriberListsApi->subscribe: #{e}"
end
```

#### Using the subscribe_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnsubscribeSubscriber200Response>, Integer, Hash)> subscribe_with_http_info(list_id, subscribe_request)

```ruby
begin
  # Subscribe to a list
  data, status_code, headers = api_instance.subscribe_with_http_info(list_id, subscribe_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnsubscribeSubscriber200Response>
rescue Mailodds::ApiError => e
  puts "Error when calling SubscriberListsApi->subscribe_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **String** | List UUID |  |
| **subscribe_request** | [**SubscribeRequest**](SubscribeRequest.md) |  |  |

### Return type

[**UnsubscribeSubscriber200Response**](UnsubscribeSubscriber200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unsubscribe_subscriber

> <UnsubscribeSubscriber200Response> unsubscribe_subscriber(list_id, subscriber_id)

Unsubscribe a subscriber

Set a subscriber's status to unsubscribed. The consent record is retained for compliance.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::SubscriberListsApi.new
list_id = 'list_id_example' # String | List UUID
subscriber_id = 'subscriber_id_example' # String | Subscriber UUID

begin
  # Unsubscribe a subscriber
  result = api_instance.unsubscribe_subscriber(list_id, subscriber_id)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling SubscriberListsApi->unsubscribe_subscriber: #{e}"
end
```

#### Using the unsubscribe_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnsubscribeSubscriber200Response>, Integer, Hash)> unsubscribe_subscriber_with_http_info(list_id, subscriber_id)

```ruby
begin
  # Unsubscribe a subscriber
  data, status_code, headers = api_instance.unsubscribe_subscriber_with_http_info(list_id, subscriber_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnsubscribeSubscriber200Response>
rescue Mailodds::ApiError => e
  puts "Error when calling SubscriberListsApi->unsubscribe_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **String** | List UUID |  |
| **subscriber_id** | **String** | Subscriber UUID |  |

### Return type

[**UnsubscribeSubscriber200Response**](UnsubscribeSubscriber200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

