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

> admin_permissions_create(org_id)

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
  api_instance.admin_permissions_create(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_create: #{e}"
end
```

#### Using the admin_permissions_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_permissions_create_with_http_info(org_id)

```ruby
begin
  # Create a custom permission for the tenant
  data, status_code, headers = api_instance.admin_permissions_create_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_create_with_http_info: #{e}"
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


## admin_permissions_delete

> admin_permissions_delete(org_id, permission_id)

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
  api_instance.admin_permissions_delete(org_id, permission_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_delete: #{e}"
end
```

#### Using the admin_permissions_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_permissions_delete_with_http_info(org_id, permission_id)

```ruby
begin
  # Delete a custom permission
  data, status_code, headers = api_instance.admin_permissions_delete_with_http_info(org_id, permission_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_permissions_get

> admin_permissions_get(org_id, permission_id)

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
  api_instance.admin_permissions_get(org_id, permission_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_get: #{e}"
end
```

#### Using the admin_permissions_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_permissions_get_with_http_info(org_id, permission_id)

```ruby
begin
  # Get a single permission
  data, status_code, headers = api_instance.admin_permissions_get_with_http_info(org_id, permission_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_permissions_list

> admin_permissions_list(org_id)

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
  api_instance.admin_permissions_list(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_list: #{e}"
end
```

#### Using the admin_permissions_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_permissions_list_with_http_info(org_id)

```ruby
begin
  # List all available permissions for the tenant
  data, status_code, headers = api_instance.admin_permissions_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_list_with_http_info: #{e}"
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


## admin_permissions_update

> admin_permissions_update(org_id, permission_id)

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
  api_instance.admin_permissions_update(org_id, permission_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_update: #{e}"
end
```

#### Using the admin_permissions_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_permissions_update_with_http_info(org_id, permission_id)

```ruby
begin
  # Update a permission
  data, status_code, headers = api_instance.admin_permissions_update_with_http_info(org_id, permission_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_permissions_usage

> admin_permissions_usage(org_id, permission_id)

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
  api_instance.admin_permissions_usage(org_id, permission_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_permissions_usage: #{e}"
end
```

#### Using the admin_permissions_usage_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_permissions_usage_with_http_info(org_id, permission_id)

```ruby
begin
  # Get permission usage (roles assigned to this permission)
  data, status_code, headers = api_instance.admin_permissions_usage_with_http_info(org_id, permission_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_scopes_create

> admin_scopes_create(org_id)

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
  api_instance.admin_scopes_create(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_scopes_create: #{e}"
end
```

#### Using the admin_scopes_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_scopes_create_with_http_info(org_id)

```ruby
begin
  # Create a custom OAuth scope
  data, status_code, headers = api_instance.admin_scopes_create_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_scopes_create_with_http_info: #{e}"
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


## admin_scopes_delete

> admin_scopes_delete(org_id, scope_id)

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
  api_instance.admin_scopes_delete(org_id, scope_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_scopes_delete: #{e}"
end
```

#### Using the admin_scopes_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_scopes_delete_with_http_info(org_id, scope_id)

```ruby
begin
  # Delete a custom OAuth scope
  data, status_code, headers = api_instance.admin_scopes_delete_with_http_info(org_id, scope_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_scopes_list

> admin_scopes_list(org_id)

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
  api_instance.admin_scopes_list(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_scopes_list: #{e}"
end
```

#### Using the admin_scopes_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_scopes_list_with_http_info(org_id)

```ruby
begin
  # List OAuth scopes
  data, status_code, headers = api_instance.admin_scopes_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminPermissionsApi->admin_scopes_list_with_http_info: #{e}"
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

