# Mailodds::ValidationPoliciesApi

All URIs are relative to *https://api.mailodds.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_policy_rule**](ValidationPoliciesApi.md#add_policy_rule) | **POST** /v1/policies/{policy_id}/rules | Add rule to policy |
| [**create_policy**](ValidationPoliciesApi.md#create_policy) | **POST** /v1/policies | Create policy |
| [**create_policy_from_preset**](ValidationPoliciesApi.md#create_policy_from_preset) | **POST** /v1/policies/from-preset | Create policy from preset |
| [**delete_policy**](ValidationPoliciesApi.md#delete_policy) | **DELETE** /v1/policies/{policy_id} | Delete policy |
| [**delete_policy_rule**](ValidationPoliciesApi.md#delete_policy_rule) | **DELETE** /v1/policies/{policy_id}/rules/{rule_id} | Delete rule |
| [**get_policy**](ValidationPoliciesApi.md#get_policy) | **GET** /v1/policies/{policy_id} | Get policy |
| [**get_policy_presets**](ValidationPoliciesApi.md#get_policy_presets) | **GET** /v1/policies/presets | Get policy presets |
| [**list_policies**](ValidationPoliciesApi.md#list_policies) | **GET** /v1/policies | List policies |
| [**test_policy**](ValidationPoliciesApi.md#test_policy) | **POST** /v1/policies/test | Test policy evaluation |
| [**update_policy**](ValidationPoliciesApi.md#update_policy) | **PUT** /v1/policies/{policy_id} | Update policy |


## add_policy_rule

> <AddPolicyRule201Response> add_policy_rule(policy_id, policy_rule)

Add rule to policy

Add a new rule to an existing policy.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::ValidationPoliciesApi.new
policy_id = 56 # Integer | 
policy_rule = Mailodds::PolicyRule.new({type: 'status_override', condition: 3.56, action: Mailodds::PolicyRuleAction.new}) # PolicyRule | 

begin
  # Add rule to policy
  result = api_instance.add_policy_rule(policy_id, policy_rule)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->add_policy_rule: #{e}"
end
```

#### Using the add_policy_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddPolicyRule201Response>, Integer, Hash)> add_policy_rule_with_http_info(policy_id, policy_rule)

```ruby
begin
  # Add rule to policy
  data, status_code, headers = api_instance.add_policy_rule_with_http_info(policy_id, policy_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddPolicyRule201Response>
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->add_policy_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **policy_id** | **Integer** |  |  |
| **policy_rule** | [**PolicyRule**](PolicyRule.md) |  |  |

### Return type

[**AddPolicyRule201Response**](AddPolicyRule201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_policy

> <PolicyResponse> create_policy(create_policy_request)

Create policy

Create a new validation policy with rules.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::ValidationPoliciesApi.new
create_policy_request = Mailodds::CreatePolicyRequest.new({name: 'name_example'}) # CreatePolicyRequest | 

begin
  # Create policy
  result = api_instance.create_policy(create_policy_request)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->create_policy: #{e}"
end
```

#### Using the create_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyResponse>, Integer, Hash)> create_policy_with_http_info(create_policy_request)

```ruby
begin
  # Create policy
  data, status_code, headers = api_instance.create_policy_with_http_info(create_policy_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->create_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_policy_request** | [**CreatePolicyRequest**](CreatePolicyRequest.md) |  |  |

### Return type

[**PolicyResponse**](PolicyResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_policy_from_preset

> <PolicyResponse> create_policy_from_preset(create_policy_from_preset_request)

Create policy from preset

Create a policy using a preset template.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::ValidationPoliciesApi.new
create_policy_from_preset_request = Mailodds::CreatePolicyFromPresetRequest.new({preset_id: 'strict', name: 'name_example'}) # CreatePolicyFromPresetRequest | 

begin
  # Create policy from preset
  result = api_instance.create_policy_from_preset(create_policy_from_preset_request)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->create_policy_from_preset: #{e}"
end
```

#### Using the create_policy_from_preset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyResponse>, Integer, Hash)> create_policy_from_preset_with_http_info(create_policy_from_preset_request)

```ruby
begin
  # Create policy from preset
  data, status_code, headers = api_instance.create_policy_from_preset_with_http_info(create_policy_from_preset_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->create_policy_from_preset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_policy_from_preset_request** | [**CreatePolicyFromPresetRequest**](CreatePolicyFromPresetRequest.md) |  |  |

### Return type

[**PolicyResponse**](PolicyResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_policy

> <DeletePolicy200Response> delete_policy(policy_id)

Delete policy

Delete a policy and all its rules.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::ValidationPoliciesApi.new
policy_id = 56 # Integer | 

begin
  # Delete policy
  result = api_instance.delete_policy(policy_id)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->delete_policy: #{e}"
end
```

#### Using the delete_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletePolicy200Response>, Integer, Hash)> delete_policy_with_http_info(policy_id)

```ruby
begin
  # Delete policy
  data, status_code, headers = api_instance.delete_policy_with_http_info(policy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletePolicy200Response>
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->delete_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **policy_id** | **Integer** |  |  |

### Return type

[**DeletePolicy200Response**](DeletePolicy200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_policy_rule

> <DeletePolicyRule200Response> delete_policy_rule(policy_id, rule_id)

Delete rule

Delete a rule from a policy.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::ValidationPoliciesApi.new
policy_id = 56 # Integer | 
rule_id = 56 # Integer | 

begin
  # Delete rule
  result = api_instance.delete_policy_rule(policy_id, rule_id)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->delete_policy_rule: #{e}"
end
```

#### Using the delete_policy_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletePolicyRule200Response>, Integer, Hash)> delete_policy_rule_with_http_info(policy_id, rule_id)

```ruby
begin
  # Delete rule
  data, status_code, headers = api_instance.delete_policy_rule_with_http_info(policy_id, rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletePolicyRule200Response>
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->delete_policy_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **policy_id** | **Integer** |  |  |
| **rule_id** | **Integer** |  |  |

### Return type

[**DeletePolicyRule200Response**](DeletePolicyRule200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_policy

> <PolicyResponse> get_policy(policy_id)

Get policy

Get a single policy with its rules.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::ValidationPoliciesApi.new
policy_id = 56 # Integer | 

begin
  # Get policy
  result = api_instance.get_policy(policy_id)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->get_policy: #{e}"
end
```

#### Using the get_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyResponse>, Integer, Hash)> get_policy_with_http_info(policy_id)

```ruby
begin
  # Get policy
  data, status_code, headers = api_instance.get_policy_with_http_info(policy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->get_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **policy_id** | **Integer** |  |  |

### Return type

[**PolicyResponse**](PolicyResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_policy_presets

> <PolicyPresetsResponse> get_policy_presets

Get policy presets

Get available preset templates for quick policy creation.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::ValidationPoliciesApi.new

begin
  # Get policy presets
  result = api_instance.get_policy_presets
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->get_policy_presets: #{e}"
end
```

#### Using the get_policy_presets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyPresetsResponse>, Integer, Hash)> get_policy_presets_with_http_info

```ruby
begin
  # Get policy presets
  data, status_code, headers = api_instance.get_policy_presets_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyPresetsResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->get_policy_presets_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PolicyPresetsResponse**](PolicyPresetsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_policies

> <PolicyListResponse> list_policies(opts)

List policies

List all validation policies for your account. Includes plan limits.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::ValidationPoliciesApi.new
opts = {
  include_rules: true # Boolean | Include full rules in response
}

begin
  # List policies
  result = api_instance.list_policies(opts)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->list_policies: #{e}"
end
```

#### Using the list_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyListResponse>, Integer, Hash)> list_policies_with_http_info(opts)

```ruby
begin
  # List policies
  data, status_code, headers = api_instance.list_policies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyListResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->list_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_rules** | **Boolean** | Include full rules in response | [optional][default to false] |

### Return type

[**PolicyListResponse**](PolicyListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## test_policy

> <PolicyTestResponse> test_policy(test_policy_request)

Test policy evaluation

Test how a policy would evaluate a validation result without affecting production.

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::ValidationPoliciesApi.new
test_policy_request = Mailodds::TestPolicyRequest.new({policy_id: 37, test_result: Mailodds::TestPolicyRequestTestResult.new}) # TestPolicyRequest | 

begin
  # Test policy evaluation
  result = api_instance.test_policy(test_policy_request)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->test_policy: #{e}"
end
```

#### Using the test_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyTestResponse>, Integer, Hash)> test_policy_with_http_info(test_policy_request)

```ruby
begin
  # Test policy evaluation
  data, status_code, headers = api_instance.test_policy_with_http_info(test_policy_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyTestResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->test_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test_policy_request** | [**TestPolicyRequest**](TestPolicyRequest.md) |  |  |

### Return type

[**PolicyTestResponse**](PolicyTestResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_policy

> <PolicyResponse> update_policy(policy_id, update_policy_request)

Update policy

Update a policy's settings (name, enabled, default).

### Examples

```ruby
require 'time'
require 'mailodds'
# setup authorization
Mailodds.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Mailodds::ValidationPoliciesApi.new
policy_id = 56 # Integer | 
update_policy_request = Mailodds::UpdatePolicyRequest.new # UpdatePolicyRequest | 

begin
  # Update policy
  result = api_instance.update_policy(policy_id, update_policy_request)
  p result
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->update_policy: #{e}"
end
```

#### Using the update_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyResponse>, Integer, Hash)> update_policy_with_http_info(policy_id, update_policy_request)

```ruby
begin
  # Update policy
  data, status_code, headers = api_instance.update_policy_with_http_info(policy_id, update_policy_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyResponse>
rescue Mailodds::ApiError => e
  puts "Error when calling ValidationPoliciesApi->update_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **policy_id** | **Integer** |  |  |
| **update_policy_request** | [**UpdatePolicyRequest**](UpdatePolicyRequest.md) |  |  |

### Return type

[**PolicyResponse**](PolicyResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

