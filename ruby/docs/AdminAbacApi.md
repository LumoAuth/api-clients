# LumoAuthApiClient::AdminAbacApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**abac_attributes_create**](AdminAbacApi.md#abac_attributes_create) | **POST** /orgs/{orgId}/api/v1/abac/attributes | Create a new attribute definition |
| [**abac_attributes_delete**](AdminAbacApi.md#abac_attributes_delete) | **DELETE** /orgs/{orgId}/api/v1/abac/attributes/{id} | Delete an attribute definition |
| [**abac_attributes_get**](AdminAbacApi.md#abac_attributes_get) | **GET** /orgs/{orgId}/api/v1/abac/attributes/{id} | Get a single attribute definition |
| [**abac_attributes_list**](AdminAbacApi.md#abac_attributes_list) | **GET** /orgs/{orgId}/api/v1/abac/attributes | List all attribute definitions |
| [**abac_policies_create**](AdminAbacApi.md#abac_policies_create) | **POST** /orgs/{orgId}/api/v1/abac/policies | Create a new ABAC policy |
| [**abac_policies_delete**](AdminAbacApi.md#abac_policies_delete) | **DELETE** /orgs/{orgId}/api/v1/abac/policies/{id} | Delete an ABAC policy |
| [**abac_policies_get**](AdminAbacApi.md#abac_policies_get) | **GET** /orgs/{orgId}/api/v1/abac/policies/{id} | Get a single ABAC policy |
| [**abac_policies_list**](AdminAbacApi.md#abac_policies_list) | **GET** /orgs/{orgId}/api/v1/abac/policies | List all ABAC policies |
| [**abac_policies_toggle**](AdminAbacApi.md#abac_policies_toggle) | **POST** /orgs/{orgId}/api/v1/abac/policies/{id}/toggle | Toggle policy active status |
| [**patch_abac_attributes_update**](AdminAbacApi.md#patch_abac_attributes_update) | **PATCH** /orgs/{orgId}/api/v1/abac/attributes/{id} | Update an attribute definition |
| [**patch_abac_policies_update**](AdminAbacApi.md#patch_abac_policies_update) | **PATCH** /orgs/{orgId}/api/v1/abac/policies/{id} | Update an ABAC policy |
| [**put_abac_attributes_update**](AdminAbacApi.md#put_abac_attributes_update) | **PUT** /orgs/{orgId}/api/v1/abac/attributes/{id} | Update an attribute definition |
| [**put_abac_policies_update**](AdminAbacApi.md#put_abac_policies_update) | **PUT** /orgs/{orgId}/api/v1/abac/policies/{id} | Update an ABAC policy |


## abac_attributes_create

> abac_attributes_create(org_id)

Create a new attribute definition

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
  # Create a new attribute definition
  api_instance.abac_attributes_create(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_attributes_create: #{e}"
end
```

#### Using the abac_attributes_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> abac_attributes_create_with_http_info(org_id)

```ruby
begin
  # Create a new attribute definition
  data, status_code, headers = api_instance.abac_attributes_create_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_attributes_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## abac_attributes_delete

> abac_attributes_delete(org_id, id)

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
  api_instance.abac_attributes_delete(org_id, id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_attributes_delete: #{e}"
end
```

#### Using the abac_attributes_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> abac_attributes_delete_with_http_info(org_id, id)

```ruby
begin
  # Delete an attribute definition
  data, status_code, headers = api_instance.abac_attributes_delete_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## abac_attributes_get

> abac_attributes_get(org_id, id)

Get a single attribute definition

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
  # Get a single attribute definition
  api_instance.abac_attributes_get(org_id, id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_attributes_get: #{e}"
end
```

#### Using the abac_attributes_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> abac_attributes_get_with_http_info(org_id, id)

```ruby
begin
  # Get a single attribute definition
  data, status_code, headers = api_instance.abac_attributes_get_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## abac_attributes_list

> abac_attributes_list(org_id)

List all attribute definitions

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
  # List all attribute definitions
  api_instance.abac_attributes_list(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_attributes_list: #{e}"
end
```

#### Using the abac_attributes_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> abac_attributes_list_with_http_info(org_id)

```ruby
begin
  # List all attribute definitions
  data, status_code, headers = api_instance.abac_attributes_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_attributes_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## abac_policies_create

> abac_policies_create(org_id)

Create a new ABAC policy

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
  # Create a new ABAC policy
  api_instance.abac_policies_create(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_policies_create: #{e}"
end
```

#### Using the abac_policies_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> abac_policies_create_with_http_info(org_id)

```ruby
begin
  # Create a new ABAC policy
  data, status_code, headers = api_instance.abac_policies_create_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_policies_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## abac_policies_delete

> abac_policies_delete(org_id, id)

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
  api_instance.abac_policies_delete(org_id, id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_policies_delete: #{e}"
end
```

#### Using the abac_policies_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> abac_policies_delete_with_http_info(org_id, id)

```ruby
begin
  # Delete an ABAC policy
  data, status_code, headers = api_instance.abac_policies_delete_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## abac_policies_get

> abac_policies_get(org_id, id)

Get a single ABAC policy

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
  # Get a single ABAC policy
  api_instance.abac_policies_get(org_id, id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_policies_get: #{e}"
end
```

#### Using the abac_policies_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> abac_policies_get_with_http_info(org_id, id)

```ruby
begin
  # Get a single ABAC policy
  data, status_code, headers = api_instance.abac_policies_get_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## abac_policies_list

> abac_policies_list(org_id)

List all ABAC policies

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
  # List all ABAC policies
  api_instance.abac_policies_list(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_policies_list: #{e}"
end
```

#### Using the abac_policies_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> abac_policies_list_with_http_info(org_id)

```ruby
begin
  # List all ABAC policies
  data, status_code, headers = api_instance.abac_policies_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_policies_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## abac_policies_toggle

> abac_policies_toggle(org_id, id)

Toggle policy active status

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
  # Toggle policy active status
  api_instance.abac_policies_toggle(org_id, id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->abac_policies_toggle: #{e}"
end
```

#### Using the abac_policies_toggle_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> abac_policies_toggle_with_http_info(org_id, id)

```ruby
begin
  # Toggle policy active status
  data, status_code, headers = api_instance.abac_policies_toggle_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## patch_abac_attributes_update

> patch_abac_attributes_update(org_id, id)

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
  api_instance.patch_abac_attributes_update(org_id, id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->patch_abac_attributes_update: #{e}"
end
```

#### Using the patch_abac_attributes_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> patch_abac_attributes_update_with_http_info(org_id, id)

```ruby
begin
  # Update an attribute definition
  data, status_code, headers = api_instance.patch_abac_attributes_update_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## patch_abac_policies_update

> patch_abac_policies_update(org_id, id)

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
  api_instance.patch_abac_policies_update(org_id, id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->patch_abac_policies_update: #{e}"
end
```

#### Using the patch_abac_policies_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> patch_abac_policies_update_with_http_info(org_id, id)

```ruby
begin
  # Update an ABAC policy
  data, status_code, headers = api_instance.patch_abac_policies_update_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## put_abac_attributes_update

> put_abac_attributes_update(org_id, id)

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
  api_instance.put_abac_attributes_update(org_id, id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->put_abac_attributes_update: #{e}"
end
```

#### Using the put_abac_attributes_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_abac_attributes_update_with_http_info(org_id, id)

```ruby
begin
  # Update an attribute definition
  data, status_code, headers = api_instance.put_abac_attributes_update_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## put_abac_policies_update

> put_abac_policies_update(org_id, id)

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
  api_instance.put_abac_policies_update(org_id, id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminAbacApi->put_abac_policies_update: #{e}"
end
```

#### Using the put_abac_policies_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_abac_policies_update_with_http_info(org_id, id)

```ruby
begin
  # Update an ABAC policy
  data, status_code, headers = api_instance.put_abac_policies_update_with_http_info(org_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

