# LumoAuthApiClient::AdminRolesApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_roles_add_permissions**](AdminRolesApi.md#admin_roles_add_permissions) | **POST** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Add permission(s) to a role |
| [**admin_roles_add_user**](AdminRolesApi.md#admin_roles_add_user) | **POST** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users | Assign a user to a role |
| [**admin_roles_create**](AdminRolesApi.md#admin_roles_create) | **POST** /orgs/{orgId}/api/v1/admin/roles | Create a new role |
| [**admin_roles_delete**](AdminRolesApi.md#admin_roles_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Delete a role |
| [**admin_roles_get**](AdminRolesApi.md#admin_roles_get) | **GET** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Get a single role by ID or slug |
| [**admin_roles_get_permissions**](AdminRolesApi.md#admin_roles_get_permissions) | **GET** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Get role permissions |
| [**admin_roles_get_users**](AdminRolesApi.md#admin_roles_get_users) | **GET** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users | Get users assigned to a role |
| [**admin_roles_list**](AdminRolesApi.md#admin_roles_list) | **GET** /orgs/{orgId}/api/v1/admin/roles | List all roles in the tenant |
| [**admin_roles_remove_permission**](AdminRolesApi.md#admin_roles_remove_permission) | **DELETE** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions/{permissionId} | Remove a permission from a role |
| [**admin_roles_remove_user**](AdminRolesApi.md#admin_roles_remove_user) | **DELETE** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users/{userId} | Remove a user from a role |
| [**admin_roles_update_permissions**](AdminRolesApi.md#admin_roles_update_permissions) | **PUT** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Update role permissions (replaces all) |
| [**patch_admin_roles_update**](AdminRolesApi.md#patch_admin_roles_update) | **PATCH** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Update an existing role |
| [**put_admin_roles_update**](AdminRolesApi.md#put_admin_roles_update) | **PUT** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Update an existing role |


## admin_roles_add_permissions

> admin_roles_add_permissions(org_id, role_id)

Add permission(s) to a role

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

api_instance = LumoAuthApiClient::AdminRolesApi.new
org_id = 'org_id_example' # String | 
role_id = 'role_id_example' # String | 

begin
  # Add permission(s) to a role
  api_instance.admin_roles_add_permissions(org_id, role_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_add_permissions: #{e}"
end
```

#### Using the admin_roles_add_permissions_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_roles_add_permissions_with_http_info(org_id, role_id)

```ruby
begin
  # Add permission(s) to a role
  data, status_code, headers = api_instance.admin_roles_add_permissions_with_http_info(org_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_add_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **role_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_roles_add_user

> admin_roles_add_user(org_id, role_id)

Assign a user to a role

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

api_instance = LumoAuthApiClient::AdminRolesApi.new
org_id = 'org_id_example' # String | 
role_id = 'role_id_example' # String | 

begin
  # Assign a user to a role
  api_instance.admin_roles_add_user(org_id, role_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_add_user: #{e}"
end
```

#### Using the admin_roles_add_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_roles_add_user_with_http_info(org_id, role_id)

```ruby
begin
  # Assign a user to a role
  data, status_code, headers = api_instance.admin_roles_add_user_with_http_info(org_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_add_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **role_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_roles_create

> admin_roles_create(org_id)

Create a new role

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

api_instance = LumoAuthApiClient::AdminRolesApi.new
org_id = 'org_id_example' # String | 

begin
  # Create a new role
  api_instance.admin_roles_create(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_create: #{e}"
end
```

#### Using the admin_roles_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_roles_create_with_http_info(org_id)

```ruby
begin
  # Create a new role
  data, status_code, headers = api_instance.admin_roles_create_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_create_with_http_info: #{e}"
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


## admin_roles_delete

> admin_roles_delete(org_id, role_id)

Delete a role

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

api_instance = LumoAuthApiClient::AdminRolesApi.new
org_id = 'org_id_example' # String | 
role_id = 'role_id_example' # String | 

begin
  # Delete a role
  api_instance.admin_roles_delete(org_id, role_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_delete: #{e}"
end
```

#### Using the admin_roles_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_roles_delete_with_http_info(org_id, role_id)

```ruby
begin
  # Delete a role
  data, status_code, headers = api_instance.admin_roles_delete_with_http_info(org_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **role_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_roles_get

> admin_roles_get(org_id, role_id)

Get a single role by ID or slug

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

api_instance = LumoAuthApiClient::AdminRolesApi.new
org_id = 'org_id_example' # String | 
role_id = 'role_id_example' # String | 

begin
  # Get a single role by ID or slug
  api_instance.admin_roles_get(org_id, role_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_get: #{e}"
end
```

#### Using the admin_roles_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_roles_get_with_http_info(org_id, role_id)

```ruby
begin
  # Get a single role by ID or slug
  data, status_code, headers = api_instance.admin_roles_get_with_http_info(org_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **role_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_roles_get_permissions

> admin_roles_get_permissions(org_id, role_id)

Get role permissions

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

api_instance = LumoAuthApiClient::AdminRolesApi.new
org_id = 'org_id_example' # String | 
role_id = 'role_id_example' # String | 

begin
  # Get role permissions
  api_instance.admin_roles_get_permissions(org_id, role_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_get_permissions: #{e}"
end
```

#### Using the admin_roles_get_permissions_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_roles_get_permissions_with_http_info(org_id, role_id)

```ruby
begin
  # Get role permissions
  data, status_code, headers = api_instance.admin_roles_get_permissions_with_http_info(org_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_get_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **role_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_roles_get_users

> admin_roles_get_users(org_id, role_id)

Get users assigned to a role

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

api_instance = LumoAuthApiClient::AdminRolesApi.new
org_id = 'org_id_example' # String | 
role_id = 'role_id_example' # String | 

begin
  # Get users assigned to a role
  api_instance.admin_roles_get_users(org_id, role_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_get_users: #{e}"
end
```

#### Using the admin_roles_get_users_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_roles_get_users_with_http_info(org_id, role_id)

```ruby
begin
  # Get users assigned to a role
  data, status_code, headers = api_instance.admin_roles_get_users_with_http_info(org_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_get_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **role_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_roles_list

> admin_roles_list(org_id)

List all roles in the tenant

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

api_instance = LumoAuthApiClient::AdminRolesApi.new
org_id = 'org_id_example' # String | 

begin
  # List all roles in the tenant
  api_instance.admin_roles_list(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_list: #{e}"
end
```

#### Using the admin_roles_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_roles_list_with_http_info(org_id)

```ruby
begin
  # List all roles in the tenant
  data, status_code, headers = api_instance.admin_roles_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_list_with_http_info: #{e}"
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


## admin_roles_remove_permission

> admin_roles_remove_permission(org_id, role_id, permission_id)

Remove a permission from a role

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

api_instance = LumoAuthApiClient::AdminRolesApi.new
org_id = 'org_id_example' # String | 
role_id = 'role_id_example' # String | 
permission_id = 'permission_id_example' # String | 

begin
  # Remove a permission from a role
  api_instance.admin_roles_remove_permission(org_id, role_id, permission_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_remove_permission: #{e}"
end
```

#### Using the admin_roles_remove_permission_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_roles_remove_permission_with_http_info(org_id, role_id, permission_id)

```ruby
begin
  # Remove a permission from a role
  data, status_code, headers = api_instance.admin_roles_remove_permission_with_http_info(org_id, role_id, permission_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_remove_permission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **role_id** | **String** |  |  |
| **permission_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_roles_remove_user

> admin_roles_remove_user(org_id, role_id, user_id)

Remove a user from a role

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

api_instance = LumoAuthApiClient::AdminRolesApi.new
org_id = 'org_id_example' # String | 
role_id = 'role_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # Remove a user from a role
  api_instance.admin_roles_remove_user(org_id, role_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_remove_user: #{e}"
end
```

#### Using the admin_roles_remove_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_roles_remove_user_with_http_info(org_id, role_id, user_id)

```ruby
begin
  # Remove a user from a role
  data, status_code, headers = api_instance.admin_roles_remove_user_with_http_info(org_id, role_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_remove_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **role_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_roles_update_permissions

> admin_roles_update_permissions(org_id, role_id)

Update role permissions (replaces all)

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

api_instance = LumoAuthApiClient::AdminRolesApi.new
org_id = 'org_id_example' # String | 
role_id = 'role_id_example' # String | 

begin
  # Update role permissions (replaces all)
  api_instance.admin_roles_update_permissions(org_id, role_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_update_permissions: #{e}"
end
```

#### Using the admin_roles_update_permissions_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_roles_update_permissions_with_http_info(org_id, role_id)

```ruby
begin
  # Update role permissions (replaces all)
  data, status_code, headers = api_instance.admin_roles_update_permissions_with_http_info(org_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->admin_roles_update_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **role_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## patch_admin_roles_update

> patch_admin_roles_update(org_id, role_id)

Update an existing role

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

api_instance = LumoAuthApiClient::AdminRolesApi.new
org_id = 'org_id_example' # String | 
role_id = 'role_id_example' # String | 

begin
  # Update an existing role
  api_instance.patch_admin_roles_update(org_id, role_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->patch_admin_roles_update: #{e}"
end
```

#### Using the patch_admin_roles_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> patch_admin_roles_update_with_http_info(org_id, role_id)

```ruby
begin
  # Update an existing role
  data, status_code, headers = api_instance.patch_admin_roles_update_with_http_info(org_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->patch_admin_roles_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **role_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## put_admin_roles_update

> put_admin_roles_update(org_id, role_id)

Update an existing role

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

api_instance = LumoAuthApiClient::AdminRolesApi.new
org_id = 'org_id_example' # String | 
role_id = 'role_id_example' # String | 

begin
  # Update an existing role
  api_instance.put_admin_roles_update(org_id, role_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->put_admin_roles_update: #{e}"
end
```

#### Using the put_admin_roles_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_admin_roles_update_with_http_info(org_id, role_id)

```ruby
begin
  # Update an existing role
  data, status_code, headers = api_instance.put_admin_roles_update_with_http_info(org_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminRolesApi->put_admin_roles_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **role_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

