# LumoAuthApiClient::AdminGroupsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_groups_add_members**](AdminGroupsApi.md#admin_groups_add_members) | **POST** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members | Add member(s) to group — accepts {userId: UUID} or {userIds: [UUID, ...]} |
| [**admin_groups_add_role**](AdminGroupsApi.md#admin_groups_add_role) | **POST** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Add a single role to a group |
| [**admin_groups_create**](AdminGroupsApi.md#admin_groups_create) | **POST** /orgs/{orgId}/api/v1/admin/groups | Create a new group |
| [**admin_groups_delete**](AdminGroupsApi.md#admin_groups_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Delete a group |
| [**admin_groups_get**](AdminGroupsApi.md#admin_groups_get) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Get a single group by ID or slug |
| [**admin_groups_get_members**](AdminGroupsApi.md#admin_groups_get_members) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members | Get group members |
| [**admin_groups_groups_get_roles**](AdminGroupsApi.md#admin_groups_groups_get_roles) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Get group roles |
| [**admin_groups_list**](AdminGroupsApi.md#admin_groups_list) | **GET** /orgs/{orgId}/api/v1/admin/groups | List all groups in the tenant |
| [**admin_groups_remove_member**](AdminGroupsApi.md#admin_groups_remove_member) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members/{userId} | Remove member from group — userId is a UUID or email |
| [**admin_groups_remove_role**](AdminGroupsApi.md#admin_groups_remove_role) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles/{roleId} | Remove a role from a group |
| [**admin_groups_update_roles**](AdminGroupsApi.md#admin_groups_update_roles) | **PUT** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Update group roles (replaces all existing roles) |
| [**patch_admin_groups_update**](AdminGroupsApi.md#patch_admin_groups_update) | **PATCH** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Update an existing group |
| [**put_admin_groups_update**](AdminGroupsApi.md#put_admin_groups_update) | **PUT** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Update an existing group |


## admin_groups_add_members

> admin_groups_add_members(org_id, group_id)

Add member(s) to group — accepts {userId: UUID} or {userIds: [UUID, ...]}

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

api_instance = LumoAuthApiClient::AdminGroupsApi.new
org_id = 'org_id_example' # String | 
group_id = 'group_id_example' # String | 

begin
  # Add member(s) to group — accepts {userId: UUID} or {userIds: [UUID, ...]}
  api_instance.admin_groups_add_members(org_id, group_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_add_members: #{e}"
end
```

#### Using the admin_groups_add_members_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_groups_add_members_with_http_info(org_id, group_id)

```ruby
begin
  # Add member(s) to group — accepts {userId: UUID} or {userIds: [UUID, ...]}
  data, status_code, headers = api_instance.admin_groups_add_members_with_http_info(org_id, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_add_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **group_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_groups_add_role

> admin_groups_add_role(org_id, group_id)

Add a single role to a group

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

api_instance = LumoAuthApiClient::AdminGroupsApi.new
org_id = 'org_id_example' # String | 
group_id = 'group_id_example' # String | 

begin
  # Add a single role to a group
  api_instance.admin_groups_add_role(org_id, group_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_add_role: #{e}"
end
```

#### Using the admin_groups_add_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_groups_add_role_with_http_info(org_id, group_id)

```ruby
begin
  # Add a single role to a group
  data, status_code, headers = api_instance.admin_groups_add_role_with_http_info(org_id, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_add_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **group_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_groups_create

> admin_groups_create(org_id)

Create a new group

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

api_instance = LumoAuthApiClient::AdminGroupsApi.new
org_id = 'org_id_example' # String | 

begin
  # Create a new group
  api_instance.admin_groups_create(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_create: #{e}"
end
```

#### Using the admin_groups_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_groups_create_with_http_info(org_id)

```ruby
begin
  # Create a new group
  data, status_code, headers = api_instance.admin_groups_create_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_create_with_http_info: #{e}"
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


## admin_groups_delete

> admin_groups_delete(org_id, group_id)

Delete a group

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

api_instance = LumoAuthApiClient::AdminGroupsApi.new
org_id = 'org_id_example' # String | 
group_id = 'group_id_example' # String | 

begin
  # Delete a group
  api_instance.admin_groups_delete(org_id, group_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_delete: #{e}"
end
```

#### Using the admin_groups_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_groups_delete_with_http_info(org_id, group_id)

```ruby
begin
  # Delete a group
  data, status_code, headers = api_instance.admin_groups_delete_with_http_info(org_id, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **group_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_groups_get

> admin_groups_get(org_id, group_id)

Get a single group by ID or slug

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

api_instance = LumoAuthApiClient::AdminGroupsApi.new
org_id = 'org_id_example' # String | 
group_id = 'group_id_example' # String | 

begin
  # Get a single group by ID or slug
  api_instance.admin_groups_get(org_id, group_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_get: #{e}"
end
```

#### Using the admin_groups_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_groups_get_with_http_info(org_id, group_id)

```ruby
begin
  # Get a single group by ID or slug
  data, status_code, headers = api_instance.admin_groups_get_with_http_info(org_id, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **group_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_groups_get_members

> admin_groups_get_members(org_id, group_id)

Get group members

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

api_instance = LumoAuthApiClient::AdminGroupsApi.new
org_id = 'org_id_example' # String | 
group_id = 'group_id_example' # String | 

begin
  # Get group members
  api_instance.admin_groups_get_members(org_id, group_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_get_members: #{e}"
end
```

#### Using the admin_groups_get_members_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_groups_get_members_with_http_info(org_id, group_id)

```ruby
begin
  # Get group members
  data, status_code, headers = api_instance.admin_groups_get_members_with_http_info(org_id, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_get_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **group_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_groups_groups_get_roles

> admin_groups_groups_get_roles(org_id, group_id)

Get group roles

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

api_instance = LumoAuthApiClient::AdminGroupsApi.new
org_id = 'org_id_example' # String | 
group_id = 'group_id_example' # String | 

begin
  # Get group roles
  api_instance.admin_groups_groups_get_roles(org_id, group_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_groups_get_roles: #{e}"
end
```

#### Using the admin_groups_groups_get_roles_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_groups_groups_get_roles_with_http_info(org_id, group_id)

```ruby
begin
  # Get group roles
  data, status_code, headers = api_instance.admin_groups_groups_get_roles_with_http_info(org_id, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_groups_get_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **group_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_groups_list

> admin_groups_list(org_id)

List all groups in the tenant

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

api_instance = LumoAuthApiClient::AdminGroupsApi.new
org_id = 'org_id_example' # String | 

begin
  # List all groups in the tenant
  api_instance.admin_groups_list(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_list: #{e}"
end
```

#### Using the admin_groups_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_groups_list_with_http_info(org_id)

```ruby
begin
  # List all groups in the tenant
  data, status_code, headers = api_instance.admin_groups_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_list_with_http_info: #{e}"
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


## admin_groups_remove_member

> admin_groups_remove_member(org_id, group_id, user_id)

Remove member from group — userId is a UUID or email

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

api_instance = LumoAuthApiClient::AdminGroupsApi.new
org_id = 'org_id_example' # String | 
group_id = 'group_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # Remove member from group — userId is a UUID or email
  api_instance.admin_groups_remove_member(org_id, group_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_remove_member: #{e}"
end
```

#### Using the admin_groups_remove_member_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_groups_remove_member_with_http_info(org_id, group_id, user_id)

```ruby
begin
  # Remove member from group — userId is a UUID or email
  data, status_code, headers = api_instance.admin_groups_remove_member_with_http_info(org_id, group_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_remove_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **group_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_groups_remove_role

> admin_groups_remove_role(org_id, group_id, role_id)

Remove a role from a group

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

api_instance = LumoAuthApiClient::AdminGroupsApi.new
org_id = 'org_id_example' # String | 
group_id = 'group_id_example' # String | 
role_id = 'role_id_example' # String | 

begin
  # Remove a role from a group
  api_instance.admin_groups_remove_role(org_id, group_id, role_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_remove_role: #{e}"
end
```

#### Using the admin_groups_remove_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_groups_remove_role_with_http_info(org_id, group_id, role_id)

```ruby
begin
  # Remove a role from a group
  data, status_code, headers = api_instance.admin_groups_remove_role_with_http_info(org_id, group_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_remove_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **group_id** | **String** |  |  |
| **role_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_groups_update_roles

> admin_groups_update_roles(org_id, group_id)

Update group roles (replaces all existing roles)

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

api_instance = LumoAuthApiClient::AdminGroupsApi.new
org_id = 'org_id_example' # String | 
group_id = 'group_id_example' # String | 

begin
  # Update group roles (replaces all existing roles)
  api_instance.admin_groups_update_roles(org_id, group_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_update_roles: #{e}"
end
```

#### Using the admin_groups_update_roles_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_groups_update_roles_with_http_info(org_id, group_id)

```ruby
begin
  # Update group roles (replaces all existing roles)
  data, status_code, headers = api_instance.admin_groups_update_roles_with_http_info(org_id, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->admin_groups_update_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **group_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## patch_admin_groups_update

> patch_admin_groups_update(org_id, group_id)

Update an existing group

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

api_instance = LumoAuthApiClient::AdminGroupsApi.new
org_id = 'org_id_example' # String | 
group_id = 'group_id_example' # String | 

begin
  # Update an existing group
  api_instance.patch_admin_groups_update(org_id, group_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->patch_admin_groups_update: #{e}"
end
```

#### Using the patch_admin_groups_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> patch_admin_groups_update_with_http_info(org_id, group_id)

```ruby
begin
  # Update an existing group
  data, status_code, headers = api_instance.patch_admin_groups_update_with_http_info(org_id, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->patch_admin_groups_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **group_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## put_admin_groups_update

> put_admin_groups_update(org_id, group_id)

Update an existing group

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

api_instance = LumoAuthApiClient::AdminGroupsApi.new
org_id = 'org_id_example' # String | 
group_id = 'group_id_example' # String | 

begin
  # Update an existing group
  api_instance.put_admin_groups_update(org_id, group_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->put_admin_groups_update: #{e}"
end
```

#### Using the put_admin_groups_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_admin_groups_update_with_http_info(org_id, group_id)

```ruby
begin
  # Update an existing group
  data, status_code, headers = api_instance.put_admin_groups_update_with_http_info(org_id, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminGroupsApi->put_admin_groups_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **group_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

