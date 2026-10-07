# LumoAuthApiClient::AdminPermissionsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_permissions_create**](AdminPermissionsApi.md#admin_permissions_create) | **POST** /orgs/{orgId}/api/v1/admin/permissions | Create a custom permission for the tenant |
| [**admin_permissions_delete**](AdminPermissionsApi.md#admin_permissions_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/permissions/{permissionId} | Delete a custom permission |
| [**admin_permissions_get**](AdminPermissionsApi.md#admin_permissions_get) | **GET** /orgs/{orgId}/api/v1/admin/permissions/{permissionId} | Get a single permission |
| [**admin_permissions_list**](AdminPermissionsApi.md#admin_permissions_list) | **GET** /orgs/{orgId}/api/v1/admin/permissions | List all available permissions for the tenant |
| [**admin_permissions_update**](AdminPermissionsApi.md#admin_permissions_update) | **PATCH** /orgs/{orgId}/api/v1/admin/permissions/{permissionId} | Update a permission |
| [**admin_permissions_usage**](AdminPermissionsApi.md#admin_permissions_usage) | **GET** /orgs/{orgId}/api/v1/admin/permissions/{permissionId}/usage | Get permission usage (roles assigned to this permission) |
| [**admin_scopes_create**](AdminPermissionsApi.md#admin_scopes_create) | **POST** /orgs/{orgId}/api/v1/admin/scopes | Create a custom OAuth scope |
| [**admin_scopes_delete**](AdminPermissionsApi.md#admin_scopes_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/scopes/{scopeId} | Delete a custom OAuth scope |
| [**admin_scopes_list**](AdminPermissionsApi.md#admin_scopes_list) | **GET** /orgs/{orgId}/api/v1/admin/scopes | List OAuth scopes |


## admin_permissions_create

> <AdminPermissionsCreateResponse> admin_permissions_create(org_id)

Create a custom permission for the tenant

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

api_instance = LumoAuthApiClient::AdminPermissionsApi.new
org_id = 'org_id_example' # String | 

begin
  # Create a custom permission for the tenant
  result = api_instance.admin_permissions_create(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_create: #{e}"
end
```

#### Using the admin_permissions_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminPermissionsCreateResponse>, Integer, Hash)> admin_permissions_create_with_http_info(org_id)

```ruby
begin
  # Create a custom permission for the tenant
  data, status_code, headers = api_instance.admin_permissions_create_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminPermissionsCreateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminPermissionsCreateResponse**](AdminPermissionsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_permissions_delete

> <MessageResponse> admin_permissions_delete(org_id, permission_id)

Delete a custom permission

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

api_instance = LumoAuthApiClient::AdminPermissionsApi.new
org_id = 'org_id_example' # String | 
permission_id = 'permission_id_example' # String | 

begin
  # Delete a custom permission
  result = api_instance.admin_permissions_delete(org_id, permission_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_delete: #{e}"
end
```

#### Using the admin_permissions_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> admin_permissions_delete_with_http_info(org_id, permission_id)

```ruby
begin
  # Delete a custom permission
  data, status_code, headers = api_instance.admin_permissions_delete_with_http_info(org_id, permission_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **permission_id** | **String** |  |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_permissions_get

> <AdminPermissionsGetResponse> admin_permissions_get(org_id, permission_id)

Get a single permission

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

api_instance = LumoAuthApiClient::AdminPermissionsApi.new
org_id = 'org_id_example' # String | 
permission_id = 'permission_id_example' # String | 

begin
  # Get a single permission
  result = api_instance.admin_permissions_get(org_id, permission_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_get: #{e}"
end
```

#### Using the admin_permissions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminPermissionsGetResponse>, Integer, Hash)> admin_permissions_get_with_http_info(org_id, permission_id)

```ruby
begin
  # Get a single permission
  data, status_code, headers = api_instance.admin_permissions_get_with_http_info(org_id, permission_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminPermissionsGetResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **permission_id** | **String** |  |  |

### Return type

[**AdminPermissionsGetResponse**](AdminPermissionsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_permissions_list

> <AdminPermissionsListResponse> admin_permissions_list(org_id)

List all available permissions for the tenant

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

api_instance = LumoAuthApiClient::AdminPermissionsApi.new
org_id = 'org_id_example' # String | 

begin
  # List all available permissions for the tenant
  result = api_instance.admin_permissions_list(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_list: #{e}"
end
```

#### Using the admin_permissions_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminPermissionsListResponse>, Integer, Hash)> admin_permissions_list_with_http_info(org_id)

```ruby
begin
  # List all available permissions for the tenant
  data, status_code, headers = api_instance.admin_permissions_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminPermissionsListResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminPermissionsListResponse**](AdminPermissionsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_permissions_update

> <AdminPermissionsCreateResponse> admin_permissions_update(org_id, permission_id)

Update a permission

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

api_instance = LumoAuthApiClient::AdminPermissionsApi.new
org_id = 'org_id_example' # String | 
permission_id = 'permission_id_example' # String | 

begin
  # Update a permission
  result = api_instance.admin_permissions_update(org_id, permission_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_update: #{e}"
end
```

#### Using the admin_permissions_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminPermissionsCreateResponse>, Integer, Hash)> admin_permissions_update_with_http_info(org_id, permission_id)

```ruby
begin
  # Update a permission
  data, status_code, headers = api_instance.admin_permissions_update_with_http_info(org_id, permission_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminPermissionsCreateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **permission_id** | **String** |  |  |

### Return type

[**AdminPermissionsCreateResponse**](AdminPermissionsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_permissions_usage

> <AdminPermissionsUsageResponse> admin_permissions_usage(org_id, permission_id)

Get permission usage (roles assigned to this permission)

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

api_instance = LumoAuthApiClient::AdminPermissionsApi.new
org_id = 'org_id_example' # String | 
permission_id = 'permission_id_example' # String | 

begin
  # Get permission usage (roles assigned to this permission)
  result = api_instance.admin_permissions_usage(org_id, permission_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_usage: #{e}"
end
```

#### Using the admin_permissions_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminPermissionsUsageResponse>, Integer, Hash)> admin_permissions_usage_with_http_info(org_id, permission_id)

```ruby
begin
  # Get permission usage (roles assigned to this permission)
  data, status_code, headers = api_instance.admin_permissions_usage_with_http_info(org_id, permission_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminPermissionsUsageResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **permission_id** | **String** |  |  |

### Return type

[**AdminPermissionsUsageResponse**](AdminPermissionsUsageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_scopes_create

> <AdminScopesCreateResponse> admin_scopes_create(org_id)

Create a custom OAuth scope

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

api_instance = LumoAuthApiClient::AdminPermissionsApi.new
org_id = 'org_id_example' # String | 

begin
  # Create a custom OAuth scope
  result = api_instance.admin_scopes_create(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_scopes_create: #{e}"
end
```

#### Using the admin_scopes_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminScopesCreateResponse>, Integer, Hash)> admin_scopes_create_with_http_info(org_id)

```ruby
begin
  # Create a custom OAuth scope
  data, status_code, headers = api_instance.admin_scopes_create_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminScopesCreateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_scopes_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminScopesCreateResponse**](AdminScopesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_scopes_delete

> <MessageResponse> admin_scopes_delete(org_id, scope_id)

Delete a custom OAuth scope

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

api_instance = LumoAuthApiClient::AdminPermissionsApi.new
org_id = 'org_id_example' # String | 
scope_id = 'scope_id_example' # String | 

begin
  # Delete a custom OAuth scope
  result = api_instance.admin_scopes_delete(org_id, scope_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_scopes_delete: #{e}"
end
```

#### Using the admin_scopes_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> admin_scopes_delete_with_http_info(org_id, scope_id)

```ruby
begin
  # Delete a custom OAuth scope
  data, status_code, headers = api_instance.admin_scopes_delete_with_http_info(org_id, scope_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_scopes_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **scope_id** | **String** |  |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_scopes_list

> <AdminScopesListResponse> admin_scopes_list(org_id)

List OAuth scopes

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

api_instance = LumoAuthApiClient::AdminPermissionsApi.new
org_id = 'org_id_example' # String | 

begin
  # List OAuth scopes
  result = api_instance.admin_scopes_list(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_scopes_list: #{e}"
end
```

#### Using the admin_scopes_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminScopesListResponse>, Integer, Hash)> admin_scopes_list_with_http_info(org_id)

```ruby
begin
  # List OAuth scopes
  data, status_code, headers = api_instance.admin_scopes_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminScopesListResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_scopes_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminScopesListResponse**](AdminScopesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

