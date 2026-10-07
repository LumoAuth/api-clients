# LumoAuthApiClient::AdminAbacApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**abac_attributes_create**](AdminAbacApi.md#abac_attributes_create) | **POST** /orgs/{orgId}/api/v1/abac/attributes | Create an attribute definition |
| [**abac_attributes_delete**](AdminAbacApi.md#abac_attributes_delete) | **DELETE** /orgs/{orgId}/api/v1/abac/attributes/{id} | Delete an attribute definition |
| [**abac_attributes_get**](AdminAbacApi.md#abac_attributes_get) | **GET** /orgs/{orgId}/api/v1/abac/attributes/{id} | Get an attribute definition |
| [**abac_attributes_list**](AdminAbacApi.md#abac_attributes_list) | **GET** /orgs/{orgId}/api/v1/abac/attributes | List attribute definitions |
| [**abac_policies_create**](AdminAbacApi.md#abac_policies_create) | **POST** /orgs/{orgId}/api/v1/abac/policies | Create an ABAC policy |
| [**abac_policies_delete**](AdminAbacApi.md#abac_policies_delete) | **DELETE** /orgs/{orgId}/api/v1/abac/policies/{id} | Delete an ABAC policy |
| [**abac_policies_get**](AdminAbacApi.md#abac_policies_get) | **GET** /orgs/{orgId}/api/v1/abac/policies/{id} | Get an ABAC policy |
| [**abac_policies_list**](AdminAbacApi.md#abac_policies_list) | **GET** /orgs/{orgId}/api/v1/abac/policies | List ABAC policies |
| [**abac_policies_toggle**](AdminAbacApi.md#abac_policies_toggle) | **POST** /orgs/{orgId}/api/v1/abac/policies/{id}/toggle | Toggle a policy between active and inactive |
| [**patch_abac_attributes_update**](AdminAbacApi.md#patch_abac_attributes_update) | **PATCH** /orgs/{orgId}/api/v1/abac/attributes/{id} | Partially update an attribute definition |
| [**patch_abac_policies_update**](AdminAbacApi.md#patch_abac_policies_update) | **PATCH** /orgs/{orgId}/api/v1/abac/policies/{id} | Partially update an ABAC policy |
| [**put_abac_attributes_update**](AdminAbacApi.md#put_abac_attributes_update) | **PUT** /orgs/{orgId}/api/v1/abac/attributes/{id} | Update an attribute definition |
| [**put_abac_policies_update**](AdminAbacApi.md#put_abac_policies_update) | **PUT** /orgs/{orgId}/api/v1/abac/policies/{id} | Update an ABAC policy |


## abac_attributes_create

> <AbacAttributesCreateResponse> abac_attributes_create(org_id)

Create an attribute definition

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AdminAbacApi.new
org_id = 'org_id_example' # String | 

begin
  # Create an attribute definition
  result = api_instance.abac_attributes_create(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_attributes_create: #{e}"
end
```

#### Using the abac_attributes_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AbacAttributesCreateResponse>, Integer, Hash)> abac_attributes_create_with_http_info(org_id)

```ruby
begin
  # Create an attribute definition
  data, status_code, headers = api_instance.abac_attributes_create_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AbacAttributesCreateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_attributes_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AbacAttributesCreateResponse**](AbacAttributesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## abac_attributes_delete

> <MessageResponse> abac_attributes_delete(org_id, id)

Delete an attribute definition

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AdminAbacApi.new
org_id = 'org_id_example' # String | 
id = 'id_example' # String | 

begin
  # Delete an attribute definition
  result = api_instance.abac_attributes_delete(org_id, id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_attributes_delete: #{e}"
end
```

#### Using the abac_attributes_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> abac_attributes_delete_with_http_info(org_id, id)

```ruby
begin
  # Delete an attribute definition
  data, status_code, headers = api_instance.abac_attributes_delete_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_attributes_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## abac_attributes_get

> <AbacAttributesGetResponse> abac_attributes_get(org_id, id)

Get an attribute definition

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AdminAbacApi.new
org_id = 'org_id_example' # String | 
id = 'id_example' # String | 

begin
  # Get an attribute definition
  result = api_instance.abac_attributes_get(org_id, id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_attributes_get: #{e}"
end
```

#### Using the abac_attributes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AbacAttributesGetResponse>, Integer, Hash)> abac_attributes_get_with_http_info(org_id, id)

```ruby
begin
  # Get an attribute definition
  data, status_code, headers = api_instance.abac_attributes_get_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AbacAttributesGetResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_attributes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**AbacAttributesGetResponse**](AbacAttributesGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## abac_attributes_list

> <AbacAttributesListResponse> abac_attributes_list(org_id)

List attribute definitions

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AdminAbacApi.new
org_id = 'org_id_example' # String | 

begin
  # List attribute definitions
  result = api_instance.abac_attributes_list(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_attributes_list: #{e}"
end
```

#### Using the abac_attributes_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AbacAttributesListResponse>, Integer, Hash)> abac_attributes_list_with_http_info(org_id)

```ruby
begin
  # List attribute definitions
  data, status_code, headers = api_instance.abac_attributes_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AbacAttributesListResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_attributes_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AbacAttributesListResponse**](AbacAttributesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## abac_policies_create

> <AbacPoliciesCreateResponse> abac_policies_create(org_id)

Create an ABAC policy

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AdminAbacApi.new
org_id = 'org_id_example' # String | 

begin
  # Create an ABAC policy
  result = api_instance.abac_policies_create(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_policies_create: #{e}"
end
```

#### Using the abac_policies_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AbacPoliciesCreateResponse>, Integer, Hash)> abac_policies_create_with_http_info(org_id)

```ruby
begin
  # Create an ABAC policy
  data, status_code, headers = api_instance.abac_policies_create_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AbacPoliciesCreateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_policies_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AbacPoliciesCreateResponse**](AbacPoliciesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## abac_policies_delete

> <MessageResponse> abac_policies_delete(org_id, id)

Delete an ABAC policy

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AdminAbacApi.new
org_id = 'org_id_example' # String | 
id = 'id_example' # String | 

begin
  # Delete an ABAC policy
  result = api_instance.abac_policies_delete(org_id, id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_policies_delete: #{e}"
end
```

#### Using the abac_policies_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> abac_policies_delete_with_http_info(org_id, id)

```ruby
begin
  # Delete an ABAC policy
  data, status_code, headers = api_instance.abac_policies_delete_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_policies_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## abac_policies_get

> <AbacPoliciesGetResponse> abac_policies_get(org_id, id)

Get an ABAC policy

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AdminAbacApi.new
org_id = 'org_id_example' # String | 
id = 'id_example' # String | 

begin
  # Get an ABAC policy
  result = api_instance.abac_policies_get(org_id, id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_policies_get: #{e}"
end
```

#### Using the abac_policies_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AbacPoliciesGetResponse>, Integer, Hash)> abac_policies_get_with_http_info(org_id, id)

```ruby
begin
  # Get an ABAC policy
  data, status_code, headers = api_instance.abac_policies_get_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AbacPoliciesGetResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_policies_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**AbacPoliciesGetResponse**](AbacPoliciesGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## abac_policies_list

> <AbacPoliciesListResponse> abac_policies_list(org_id)

List ABAC policies

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AdminAbacApi.new
org_id = 'org_id_example' # String | 

begin
  # List ABAC policies
  result = api_instance.abac_policies_list(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_policies_list: #{e}"
end
```

#### Using the abac_policies_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AbacPoliciesListResponse>, Integer, Hash)> abac_policies_list_with_http_info(org_id)

```ruby
begin
  # List ABAC policies
  data, status_code, headers = api_instance.abac_policies_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AbacPoliciesListResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_policies_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AbacPoliciesListResponse**](AbacPoliciesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## abac_policies_toggle

> <AbacPoliciesToggleResponse> abac_policies_toggle(org_id, id)

Toggle a policy between active and inactive

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AdminAbacApi.new
org_id = 'org_id_example' # String | 
id = 'id_example' # String | 

begin
  # Toggle a policy between active and inactive
  result = api_instance.abac_policies_toggle(org_id, id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_policies_toggle: #{e}"
end
```

#### Using the abac_policies_toggle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AbacPoliciesToggleResponse>, Integer, Hash)> abac_policies_toggle_with_http_info(org_id, id)

```ruby
begin
  # Toggle a policy between active and inactive
  data, status_code, headers = api_instance.abac_policies_toggle_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AbacPoliciesToggleResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_policies_toggle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**AbacPoliciesToggleResponse**](AbacPoliciesToggleResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_abac_attributes_update

> <PutAbacAttributesUpdateResponse> patch_abac_attributes_update(org_id, id)

Partially update an attribute definition

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AdminAbacApi.new
org_id = 'org_id_example' # String | 
id = 'id_example' # String | 

begin
  # Partially update an attribute definition
  result = api_instance.patch_abac_attributes_update(org_id, id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->patch_abac_attributes_update: #{e}"
end
```

#### Using the patch_abac_attributes_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAbacAttributesUpdateResponse>, Integer, Hash)> patch_abac_attributes_update_with_http_info(org_id, id)

```ruby
begin
  # Partially update an attribute definition
  data, status_code, headers = api_instance.patch_abac_attributes_update_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAbacAttributesUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->patch_abac_attributes_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**PutAbacAttributesUpdateResponse**](PutAbacAttributesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_abac_policies_update

> <PutAbacPoliciesUpdateResponse> patch_abac_policies_update(org_id, id)

Partially update an ABAC policy

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AdminAbacApi.new
org_id = 'org_id_example' # String | 
id = 'id_example' # String | 

begin
  # Partially update an ABAC policy
  result = api_instance.patch_abac_policies_update(org_id, id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->patch_abac_policies_update: #{e}"
end
```

#### Using the patch_abac_policies_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAbacPoliciesUpdateResponse>, Integer, Hash)> patch_abac_policies_update_with_http_info(org_id, id)

```ruby
begin
  # Partially update an ABAC policy
  data, status_code, headers = api_instance.patch_abac_policies_update_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAbacPoliciesUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->patch_abac_policies_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**PutAbacPoliciesUpdateResponse**](PutAbacPoliciesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_abac_attributes_update

> <PutAbacAttributesUpdateResponse> put_abac_attributes_update(org_id, id)

Update an attribute definition

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AdminAbacApi.new
org_id = 'org_id_example' # String | 
id = 'id_example' # String | 

begin
  # Update an attribute definition
  result = api_instance.put_abac_attributes_update(org_id, id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->put_abac_attributes_update: #{e}"
end
```

#### Using the put_abac_attributes_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAbacAttributesUpdateResponse>, Integer, Hash)> put_abac_attributes_update_with_http_info(org_id, id)

```ruby
begin
  # Update an attribute definition
  data, status_code, headers = api_instance.put_abac_attributes_update_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAbacAttributesUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->put_abac_attributes_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**PutAbacAttributesUpdateResponse**](PutAbacAttributesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_abac_policies_update

> <PutAbacPoliciesUpdateResponse> put_abac_policies_update(org_id, id)

Update an ABAC policy

### Examples

```ruby
require 'time'
require 'lumoauth_api_client'
# setup authorization
LumoAuthApiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = LumoAuthApiClient::AdminAbacApi.new
org_id = 'org_id_example' # String | 
id = 'id_example' # String | 

begin
  # Update an ABAC policy
  result = api_instance.put_abac_policies_update(org_id, id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->put_abac_policies_update: #{e}"
end
```

#### Using the put_abac_policies_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAbacPoliciesUpdateResponse>, Integer, Hash)> put_abac_policies_update_with_http_info(org_id, id)

```ruby
begin
  # Update an ABAC policy
  data, status_code, headers = api_instance.put_abac_policies_update_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAbacPoliciesUpdateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->put_abac_policies_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**PutAbacPoliciesUpdateResponse**](PutAbacPoliciesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

