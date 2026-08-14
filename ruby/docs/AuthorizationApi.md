# LumoAuthApiClient::AuthorizationApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_abac**](AuthorizationApi.md#check_abac) | **POST** /orgs/{orgId}/api/v1/abac/check | Check ABAC authorization |
| [**check_abac_bulk**](AuthorizationApi.md#check_abac_bulk) | **POST** /orgs/{orgId}/api/v1/abac/check-bulk | Bulk check multiple authorization requests |
| [**check_all_permissions**](AuthorizationApi.md#check_all_permissions) | **POST** /api/v1/authz/check-all | Check if user has ALL of the specified permissions |
| [**check_any_permission**](AuthorizationApi.md#check_any_permission) | **POST** /api/v1/authz/check-any | Check if user has ANY of the specified permissions |
| [**check_permission**](AuthorizationApi.md#check_permission) | **POST** /api/v1/authz/check | Check if the authenticated user has a specific permission |
| [**check_permissions_bulk**](AuthorizationApi.md#check_permissions_bulk) | **POST** /api/v1/authz/check-bulk | Check multiple permissions at once |
| [**check_relation**](AuthorizationApi.md#check_relation) | **POST** /api/v1/authz/zanzibar/check | Zanzibar-style relationship check |
| [**check_relation_scoped**](AuthorizationApi.md#check_relation_scoped) | **POST** /orgs/{orgId}/api/v1/zanzibar/check |  |
| [**evaluate**](AuthorizationApi.md#evaluate) | **POST** /api/v1/authz/v1/evaluation | AuthZEN 1.0 single access evaluation. |
| [**evaluate_batch**](AuthorizationApi.md#evaluate_batch) | **POST** /api/v1/authz/v1/evaluations | AuthZEN 1.0 boxcarred access evaluations. |
| [**get_my_attributes**](AuthorizationApi.md#get_my_attributes) | **GET** /orgs/{orgId}/api/v1/abac/my-attributes | Get user&#39;s current attributes (for debugging/UI) |
| [**get_resource_attributes**](AuthorizationApi.md#get_resource_attributes) | **GET** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes | Get resource attributes |
| [**list_attribute_definitions**](AuthorizationApi.md#list_attribute_definitions) | **GET** /orgs/{orgId}/api/v1/abac/attribute-definitions | Get available attribute definitions |
| [**list_permissions**](AuthorizationApi.md#list_permissions) | **GET** /api/v1/authz/permissions | List all permissions for the authenticated user |
| [**set_resource_attribute**](AuthorizationApi.md#set_resource_attribute) | **PUT** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes/{attributeSlug} | Set resource attribute |
| [**set_user_attribute**](AuthorizationApi.md#set_user_attribute) | **PUT** /orgs/{orgId}/api/v1/abac/users/{userId}/attributes/{attributeSlug} | Set user attribute |


## check_abac

> check_abac(org_id)

Check ABAC authorization

POST /api/v1/abac/check Body: {   resourceType: string,   action: string,   resourceId?: string,   environment?: { ip?: string, userAgent?: string, ... } }  Returns: { allowed: boolean, reason: string, matchedPolicies: [...] }

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

api_instance = LumoAuthApiClient::AuthorizationApi.new
org_id = 'org_id_example' # String | 

begin
  # Check ABAC authorization
  api_instance.check_abac(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_abac: #{e}"
end
```

#### Using the check_abac_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> check_abac_with_http_info(org_id)

```ruby
begin
  # Check ABAC authorization
  data, status_code, headers = api_instance.check_abac_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_abac_with_http_info: #{e}"
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


## check_abac_bulk

> check_abac_bulk(org_id)

Bulk check multiple authorization requests

POST /api/v1/abac/check-bulk Body: {   checks: [     { resourceType: string, action: string, resourceId?: string },     ...   ],   environment?: { ... } }

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

api_instance = LumoAuthApiClient::AuthorizationApi.new
org_id = 'org_id_example' # String | 

begin
  # Bulk check multiple authorization requests
  api_instance.check_abac_bulk(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_abac_bulk: #{e}"
end
```

#### Using the check_abac_bulk_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> check_abac_bulk_with_http_info(org_id)

```ruby
begin
  # Bulk check multiple authorization requests
  data, status_code, headers = api_instance.check_abac_bulk_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_abac_bulk_with_http_info: #{e}"
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


## check_all_permissions

> check_all_permissions

Check if user has ALL of the specified permissions

POST /api/v1/authz/check-all Body: {   \"permissions\": [\"document.edit\", \"document.publish\"],   \"context\": {\"document_id\": 123} }

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

api_instance = LumoAuthApiClient::AuthorizationApi.new

begin
  # Check if user has ALL of the specified permissions
  api_instance.check_all_permissions
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_all_permissions: #{e}"
end
```

#### Using the check_all_permissions_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> check_all_permissions_with_http_info

```ruby
begin
  # Check if user has ALL of the specified permissions
  data, status_code, headers = api_instance.check_all_permissions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_all_permissions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## check_any_permission

> check_any_permission

Check if user has ANY of the specified permissions

POST /api/v1/authz/check-any Body: {   \"permissions\": [\"document.edit\", \"document.view\"],   \"context\": {\"document_id\": 123} }

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

api_instance = LumoAuthApiClient::AuthorizationApi.new

begin
  # Check if user has ANY of the specified permissions
  api_instance.check_any_permission
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_any_permission: #{e}"
end
```

#### Using the check_any_permission_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> check_any_permission_with_http_info

```ruby
begin
  # Check if user has ANY of the specified permissions
  data, status_code, headers = api_instance.check_any_permission_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_any_permission_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## check_permission

> check_permission

Check if the authenticated user has a specific permission

POST /api/v1/authz/check Body: {   \"permission\": \"document.edit\",   \"context\": {\"document_id\": 123, \"owner_id\": 456} }

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

api_instance = LumoAuthApiClient::AuthorizationApi.new

begin
  # Check if the authenticated user has a specific permission
  api_instance.check_permission
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_permission: #{e}"
end
```

#### Using the check_permission_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> check_permission_with_http_info

```ruby
begin
  # Check if the authenticated user has a specific permission
  data, status_code, headers = api_instance.check_permission_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_permission_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## check_permissions_bulk

> check_permissions_bulk

Check multiple permissions at once

POST /api/v1/authz/check-bulk Body: {   \"permissions\": [\"document.edit\", \"document.delete\"],   \"context\": {\"document_id\": 123} }

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

api_instance = LumoAuthApiClient::AuthorizationApi.new

begin
  # Check multiple permissions at once
  api_instance.check_permissions_bulk
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_permissions_bulk: #{e}"
end
```

#### Using the check_permissions_bulk_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> check_permissions_bulk_with_http_info

```ruby
begin
  # Check multiple permissions at once
  data, status_code, headers = api_instance.check_permissions_bulk_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_permissions_bulk_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## check_relation

> check_relation

Zanzibar-style relationship check

POST /api/v1/authz/zanzibar/check Body: {   \"object\": \"document:123\",   \"relation\": \"viewer\",   \"subject\": \"user:456\" }

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

api_instance = LumoAuthApiClient::AuthorizationApi.new

begin
  # Zanzibar-style relationship check
  api_instance.check_relation
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_relation: #{e}"
end
```

#### Using the check_relation_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> check_relation_with_http_info

```ruby
begin
  # Zanzibar-style relationship check
  data, status_code, headers = api_instance.check_relation_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_relation_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## check_relation_scoped

> check_relation_scoped(org_id)



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

api_instance = LumoAuthApiClient::AuthorizationApi.new
org_id = 'org_id_example' # String | 

begin
  
  api_instance.check_relation_scoped(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_relation_scoped: #{e}"
end
```

#### Using the check_relation_scoped_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> check_relation_scoped_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.check_relation_scoped_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->check_relation_scoped_with_http_info: #{e}"
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


## evaluate

> evaluate

AuthZEN 1.0 single access evaluation.

POST /api/v1/authz/v1/evaluation Body: {   \"subject\":  {\"type\": \"user\"|\"agent\", \"id\": \"...\"},   \"action\":   {\"name\": \"...\"},   \"resource\": {\"type\": \"...\", \"id\": \"...\"},   \"context\":  {...} } Response: {\"decision\": true|false, \"context\": {...}?}

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

api_instance = LumoAuthApiClient::AuthorizationApi.new

begin
  # AuthZEN 1.0 single access evaluation.
  api_instance.evaluate
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->evaluate: #{e}"
end
```

#### Using the evaluate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> evaluate_with_http_info

```ruby
begin
  # AuthZEN 1.0 single access evaluation.
  data, status_code, headers = api_instance.evaluate_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->evaluate_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## evaluate_batch

> evaluate_batch

AuthZEN 1.0 boxcarred access evaluations.

POST /api/v1/authz/v1/evaluations Body: {   \"subject\":  {...}?,   // optional defaults, overridden per item   \"action\":   {...}?,   \"resource\": {...}?,   \"context\":  {...}?,   \"evaluations\": [{...}, ...] } Response: {\"evaluations\": [{\"decision\": ...}, ...]} preserving order.

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

api_instance = LumoAuthApiClient::AuthorizationApi.new

begin
  # AuthZEN 1.0 boxcarred access evaluations.
  api_instance.evaluate_batch
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->evaluate_batch: #{e}"
end
```

#### Using the evaluate_batch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> evaluate_batch_with_http_info

```ruby
begin
  # AuthZEN 1.0 boxcarred access evaluations.
  data, status_code, headers = api_instance.evaluate_batch_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->evaluate_batch_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_my_attributes

> get_my_attributes(org_id)

Get user's current attributes (for debugging/UI)

GET /api/v1/abac/my-attributes

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

api_instance = LumoAuthApiClient::AuthorizationApi.new
org_id = 'org_id_example' # String | 

begin
  # Get user's current attributes (for debugging/UI)
  api_instance.get_my_attributes(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->get_my_attributes: #{e}"
end
```

#### Using the get_my_attributes_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_my_attributes_with_http_info(org_id)

```ruby
begin
  # Get user's current attributes (for debugging/UI)
  data, status_code, headers = api_instance.get_my_attributes_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->get_my_attributes_with_http_info: #{e}"
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


## get_resource_attributes

> get_resource_attributes(org_id, resource_type, resource_id)

Get resource attributes

GET /api/v1/abac/resources/{resourceType}/{resourceId}/attributes

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

api_instance = LumoAuthApiClient::AuthorizationApi.new
org_id = 'org_id_example' # String | 
resource_type = 'resource_type_example' # String | 
resource_id = 'resource_id_example' # String | 

begin
  # Get resource attributes
  api_instance.get_resource_attributes(org_id, resource_type, resource_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->get_resource_attributes: #{e}"
end
```

#### Using the get_resource_attributes_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_resource_attributes_with_http_info(org_id, resource_type, resource_id)

```ruby
begin
  # Get resource attributes
  data, status_code, headers = api_instance.get_resource_attributes_with_http_info(org_id, resource_type, resource_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->get_resource_attributes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **resource_type** | **String** |  |  |
| **resource_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_attribute_definitions

> list_attribute_definitions(org_id)

Get available attribute definitions

GET /api/v1/abac/attribute-definitions Query params: type (user|resource|environment)

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

api_instance = LumoAuthApiClient::AuthorizationApi.new
org_id = 'org_id_example' # String | 

begin
  # Get available attribute definitions
  api_instance.list_attribute_definitions(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->list_attribute_definitions: #{e}"
end
```

#### Using the list_attribute_definitions_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> list_attribute_definitions_with_http_info(org_id)

```ruby
begin
  # Get available attribute definitions
  data, status_code, headers = api_instance.list_attribute_definitions_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->list_attribute_definitions_with_http_info: #{e}"
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


## list_permissions

> list_permissions

List all permissions for the authenticated user

GET /api/v1/authz/permissions

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

api_instance = LumoAuthApiClient::AuthorizationApi.new

begin
  # List all permissions for the authenticated user
  api_instance.list_permissions
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->list_permissions: #{e}"
end
```

#### Using the list_permissions_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> list_permissions_with_http_info

```ruby
begin
  # List all permissions for the authenticated user
  data, status_code, headers = api_instance.list_permissions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->list_permissions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## set_resource_attribute

> set_resource_attribute(org_id, resource_type, resource_id, attribute_slug)

Set resource attribute

PUT /api/v1/abac/resources/{resourceType}/{resourceId}/attributes/{attributeSlug} Body: { value: any }

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

api_instance = LumoAuthApiClient::AuthorizationApi.new
org_id = 'org_id_example' # String | 
resource_type = 'resource_type_example' # String | 
resource_id = 'resource_id_example' # String | 
attribute_slug = 'attribute_slug_example' # String | 

begin
  # Set resource attribute
  api_instance.set_resource_attribute(org_id, resource_type, resource_id, attribute_slug)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->set_resource_attribute: #{e}"
end
```

#### Using the set_resource_attribute_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_resource_attribute_with_http_info(org_id, resource_type, resource_id, attribute_slug)

```ruby
begin
  # Set resource attribute
  data, status_code, headers = api_instance.set_resource_attribute_with_http_info(org_id, resource_type, resource_id, attribute_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->set_resource_attribute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **resource_type** | **String** |  |  |
| **resource_id** | **String** |  |  |
| **attribute_slug** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## set_user_attribute

> set_user_attribute(org_id, user_id, attribute_slug)

Set user attribute

PUT /api/v1/abac/users/{userId}/attributes/{attributeSlug} Body: { value: any }

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

api_instance = LumoAuthApiClient::AuthorizationApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 
attribute_slug = 'attribute_slug_example' # String | 

begin
  # Set user attribute
  api_instance.set_user_attribute(org_id, user_id, attribute_slug)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->set_user_attribute: #{e}"
end
```

#### Using the set_user_attribute_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_user_attribute_with_http_info(org_id, user_id, attribute_slug)

```ruby
begin
  # Set user attribute
  data, status_code, headers = api_instance.set_user_attribute_with_http_info(org_id, user_id, attribute_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AuthorizationApi->set_user_attribute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **attribute_slug** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

