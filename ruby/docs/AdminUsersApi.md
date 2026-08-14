# LumoAuthApiClient::AdminUsersApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_user_group**](AdminUsersApi.md#add_user_group) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/groups |  |
| [**add_user_permission**](AdminUsersApi.md#add_user_permission) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions |  |
| [**add_user_role**](AdminUsersApi.md#add_user_role) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/roles |  |
| [**block_user**](AdminUsersApi.md#block_user) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/block |  |
| [**create_user**](AdminUsersApi.md#create_user) | **POST** /orgs/{orgId}/api/v1/admin/users |  |
| [**delete_user**](AdminUsersApi.md#delete_user) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId} |  |
| [**get_user**](AdminUsersApi.md#get_user) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId} |  |
| [**list_user_groups**](AdminUsersApi.md#list_user_groups) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/groups |  |
| [**list_user_permissions**](AdminUsersApi.md#list_user_permissions) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions |  |
| [**list_user_roles**](AdminUsersApi.md#list_user_roles) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/roles |  |
| [**list_users**](AdminUsersApi.md#list_users) | **GET** /orgs/{orgId}/api/v1/admin/users |  |
| [**mark_user_verified**](AdminUsersApi.md#mark_user_verified) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/mark-verified |  |
| [**patch_user**](AdminUsersApi.md#patch_user) | **PATCH** /orgs/{orgId}/api/v1/admin/users/{userId} |  |
| [**remove_user_group**](AdminUsersApi.md#remove_user_group) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/groups/{groupId} |  |
| [**remove_user_permission**](AdminUsersApi.md#remove_user_permission) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions/{permissionId} |  |
| [**remove_user_role**](AdminUsersApi.md#remove_user_role) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/roles/{roleId} |  |
| [**reset_user_mfa**](AdminUsersApi.md#reset_user_mfa) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/mfa/reset |  |
| [**send_user_verification_email**](AdminUsersApi.md#send_user_verification_email) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/verify-email |  |
| [**set_user_password**](AdminUsersApi.md#set_user_password) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/password |  |
| [**set_user_password_post**](AdminUsersApi.md#set_user_password_post) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/password |  |
| [**trigger_user_password_reset**](AdminUsersApi.md#trigger_user_password_reset) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/password-reset |  |
| [**unblock_user**](AdminUsersApi.md#unblock_user) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/unblock |  |
| [**update_user**](AdminUsersApi.md#update_user) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId} |  |
| [**update_user_groups**](AdminUsersApi.md#update_user_groups) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/groups |  |
| [**update_user_roles**](AdminUsersApi.md#update_user_roles) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/roles |  |


## add_user_group

> add_user_group(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.add_user_group(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->add_user_group: #{e}"
end
```

#### Using the add_user_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_user_group_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.add_user_group_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->add_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## add_user_permission

> add_user_permission(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.add_user_permission(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->add_user_permission: #{e}"
end
```

#### Using the add_user_permission_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_user_permission_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.add_user_permission_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->add_user_permission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## add_user_role

> add_user_role(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.add_user_role(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->add_user_role: #{e}"
end
```

#### Using the add_user_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_user_role_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.add_user_role_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->add_user_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## block_user

> block_user(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.block_user(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->block_user: #{e}"
end
```

#### Using the block_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> block_user_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.block_user_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->block_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## create_user

> create_user(org_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 

begin
  
  api_instance.create_user(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->create_user: #{e}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_user_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.create_user_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->create_user_with_http_info: #{e}"
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


## delete_user

> delete_user(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.delete_user(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_user_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_user

> get_user(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.get_user(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_user_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_user_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_user_groups

> list_user_groups(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.list_user_groups(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->list_user_groups: #{e}"
end
```

#### Using the list_user_groups_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> list_user_groups_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_user_groups_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->list_user_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_user_permissions

> list_user_permissions(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.list_user_permissions(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->list_user_permissions: #{e}"
end
```

#### Using the list_user_permissions_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> list_user_permissions_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_user_permissions_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->list_user_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_user_roles

> list_user_roles(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.list_user_roles(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->list_user_roles: #{e}"
end
```

#### Using the list_user_roles_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> list_user_roles_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_user_roles_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->list_user_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## list_users

> list_users(org_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 

begin
  
  api_instance.list_users(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->list_users: #{e}"
end
```

#### Using the list_users_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> list_users_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.list_users_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->list_users_with_http_info: #{e}"
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


## mark_user_verified

> mark_user_verified(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.mark_user_verified(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->mark_user_verified: #{e}"
end
```

#### Using the mark_user_verified_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> mark_user_verified_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.mark_user_verified_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->mark_user_verified_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## patch_user

> patch_user(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.patch_user(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->patch_user: #{e}"
end
```

#### Using the patch_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> patch_user_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.patch_user_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->patch_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## remove_user_group

> remove_user_group(org_id, user_id, group_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 
group_id = 'group_id_example' # String | 

begin
  
  api_instance.remove_user_group(org_id, user_id, group_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->remove_user_group: #{e}"
end
```

#### Using the remove_user_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_user_group_with_http_info(org_id, user_id, group_id)

```ruby
begin
  
  data, status_code, headers = api_instance.remove_user_group_with_http_info(org_id, user_id, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->remove_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **group_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## remove_user_permission

> remove_user_permission(org_id, user_id, permission_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 
permission_id = 'permission_id_example' # String | 

begin
  
  api_instance.remove_user_permission(org_id, user_id, permission_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->remove_user_permission: #{e}"
end
```

#### Using the remove_user_permission_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_user_permission_with_http_info(org_id, user_id, permission_id)

```ruby
begin
  
  data, status_code, headers = api_instance.remove_user_permission_with_http_info(org_id, user_id, permission_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->remove_user_permission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **permission_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## remove_user_role

> remove_user_role(org_id, user_id, role_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 
role_id = 'role_id_example' # String | 

begin
  
  api_instance.remove_user_role(org_id, user_id, role_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->remove_user_role: #{e}"
end
```

#### Using the remove_user_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_user_role_with_http_info(org_id, user_id, role_id)

```ruby
begin
  
  data, status_code, headers = api_instance.remove_user_role_with_http_info(org_id, user_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->remove_user_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **role_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## reset_user_mfa

> reset_user_mfa(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.reset_user_mfa(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->reset_user_mfa: #{e}"
end
```

#### Using the reset_user_mfa_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> reset_user_mfa_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.reset_user_mfa_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->reset_user_mfa_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## send_user_verification_email

> send_user_verification_email(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.send_user_verification_email(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->send_user_verification_email: #{e}"
end
```

#### Using the send_user_verification_email_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_user_verification_email_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.send_user_verification_email_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->send_user_verification_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## set_user_password

> set_user_password(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.set_user_password(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->set_user_password: #{e}"
end
```

#### Using the set_user_password_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_user_password_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.set_user_password_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->set_user_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## set_user_password_post

> set_user_password_post(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.set_user_password_post(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->set_user_password_post: #{e}"
end
```

#### Using the set_user_password_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_user_password_post_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.set_user_password_post_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->set_user_password_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## trigger_user_password_reset

> trigger_user_password_reset(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.trigger_user_password_reset(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->trigger_user_password_reset: #{e}"
end
```

#### Using the trigger_user_password_reset_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> trigger_user_password_reset_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.trigger_user_password_reset_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->trigger_user_password_reset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## unblock_user

> unblock_user(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.unblock_user(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->unblock_user: #{e}"
end
```

#### Using the unblock_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unblock_user_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.unblock_user_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->unblock_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_user

> update_user(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.update_user(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_user_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.update_user_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_user_groups

> update_user_groups(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.update_user_groups(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->update_user_groups: #{e}"
end
```

#### Using the update_user_groups_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_user_groups_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.update_user_groups_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->update_user_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_user_roles

> update_user_roles(org_id, user_id)



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

api_instance = LumoAuthApiClient::AdminUsersApi.new
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.update_user_roles(org_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->update_user_roles: #{e}"
end
```

#### Using the update_user_roles_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_user_roles_with_http_info(org_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.update_user_roles_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->update_user_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

