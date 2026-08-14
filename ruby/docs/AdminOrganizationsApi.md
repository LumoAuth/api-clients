# LumoAuthApiClient::AdminOrganizationsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_org_invitations_create**](AdminOrganizationsApi.md#admin_org_invitations_create) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations |  |
| [**admin_org_invitations_list**](AdminOrganizationsApi.md#admin_org_invitations_list) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations |  |
| [**admin_org_invitations_resend**](AdminOrganizationsApi.md#admin_org_invitations_resend) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId}/resend |  |
| [**admin_org_invitations_revoke**](AdminOrganizationsApi.md#admin_org_invitations_revoke) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId} |  |
| [**admin_org_members_add**](AdminOrganizationsApi.md#admin_org_members_add) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members |  |
| [**admin_org_members_list**](AdminOrganizationsApi.md#admin_org_members_list) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members |  |
| [**admin_org_members_remove**](AdminOrganizationsApi.md#admin_org_members_remove) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} |  |
| [**admin_org_roles_create**](AdminOrganizationsApi.md#admin_org_roles_create) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles |  |
| [**admin_org_roles_delete**](AdminOrganizationsApi.md#admin_org_roles_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} |  |
| [**admin_org_roles_list**](AdminOrganizationsApi.md#admin_org_roles_list) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles |  |
| [**admin_organizations_create**](AdminOrganizationsApi.md#admin_organizations_create) | **POST** /orgs/{orgId}/api/v1/admin/organizations |  |
| [**admin_organizations_delete**](AdminOrganizationsApi.md#admin_organizations_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} |  |
| [**admin_organizations_get**](AdminOrganizationsApi.md#admin_organizations_get) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} |  |
| [**admin_organizations_list**](AdminOrganizationsApi.md#admin_organizations_list) | **GET** /orgs/{orgId}/api/v1/admin/organizations |  |
| [**patch_admin_org_members_update**](AdminOrganizationsApi.md#patch_admin_org_members_update) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} |  |
| [**patch_admin_org_roles_update**](AdminOrganizationsApi.md#patch_admin_org_roles_update) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} |  |
| [**patch_admin_organizations_update**](AdminOrganizationsApi.md#patch_admin_organizations_update) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} |  |
| [**put_admin_org_members_update**](AdminOrganizationsApi.md#put_admin_org_members_update) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} |  |
| [**put_admin_org_roles_update**](AdminOrganizationsApi.md#put_admin_org_roles_update) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} |  |
| [**put_admin_organizations_update**](AdminOrganizationsApi.md#put_admin_organizations_update) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} |  |


## admin_org_invitations_create

> admin_org_invitations_create(org_id, organization_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 
organization_id = 'organization_id_example' # String | 

begin
  
  api_instance.admin_org_invitations_create(org_id, organization_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_invitations_create: #{e}"
end
```

#### Using the admin_org_invitations_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_org_invitations_create_with_http_info(org_id, organization_id)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_org_invitations_create_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_invitations_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **organization_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_org_invitations_list

> admin_org_invitations_list(org_id, organization_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 
organization_id = 'organization_id_example' # String | 

begin
  
  api_instance.admin_org_invitations_list(org_id, organization_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_invitations_list: #{e}"
end
```

#### Using the admin_org_invitations_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_org_invitations_list_with_http_info(org_id, organization_id)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_org_invitations_list_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_invitations_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **organization_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_org_invitations_resend

> admin_org_invitations_resend(org_id, organization_id, inv_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 
organization_id = 'organization_id_example' # String | 
inv_id = 'inv_id_example' # String | 

begin
  
  api_instance.admin_org_invitations_resend(org_id, organization_id, inv_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_invitations_resend: #{e}"
end
```

#### Using the admin_org_invitations_resend_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_org_invitations_resend_with_http_info(org_id, organization_id, inv_id)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_org_invitations_resend_with_http_info(org_id, organization_id, inv_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_invitations_resend_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **organization_id** | **String** |  |  |
| **inv_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_org_invitations_revoke

> admin_org_invitations_revoke(org_id, organization_id, inv_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 
organization_id = 'organization_id_example' # String | 
inv_id = 'inv_id_example' # String | 

begin
  
  api_instance.admin_org_invitations_revoke(org_id, organization_id, inv_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_invitations_revoke: #{e}"
end
```

#### Using the admin_org_invitations_revoke_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_org_invitations_revoke_with_http_info(org_id, organization_id, inv_id)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_org_invitations_revoke_with_http_info(org_id, organization_id, inv_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_invitations_revoke_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **organization_id** | **String** |  |  |
| **inv_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_org_members_add

> admin_org_members_add(org_id, organization_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 
organization_id = 'organization_id_example' # String | 

begin
  
  api_instance.admin_org_members_add(org_id, organization_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_members_add: #{e}"
end
```

#### Using the admin_org_members_add_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_org_members_add_with_http_info(org_id, organization_id)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_org_members_add_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_members_add_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **organization_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_org_members_list

> admin_org_members_list(org_id, organization_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 
organization_id = 'organization_id_example' # String | 

begin
  
  api_instance.admin_org_members_list(org_id, organization_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_members_list: #{e}"
end
```

#### Using the admin_org_members_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_org_members_list_with_http_info(org_id, organization_id)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_org_members_list_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_members_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **organization_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_org_members_remove

> admin_org_members_remove(org_id, organization_id, user_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 
organization_id = 'organization_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.admin_org_members_remove(org_id, organization_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_members_remove: #{e}"
end
```

#### Using the admin_org_members_remove_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_org_members_remove_with_http_info(org_id, organization_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_org_members_remove_with_http_info(org_id, organization_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_members_remove_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **organization_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_org_roles_create

> admin_org_roles_create(org_id, organization_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 
organization_id = 'organization_id_example' # String | 

begin
  
  api_instance.admin_org_roles_create(org_id, organization_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_roles_create: #{e}"
end
```

#### Using the admin_org_roles_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_org_roles_create_with_http_info(org_id, organization_id)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_org_roles_create_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_roles_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **organization_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_org_roles_delete

> admin_org_roles_delete(org_id, organization_id, role_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 
organization_id = 'organization_id_example' # String | 
role_id = 'role_id_example' # String | 

begin
  
  api_instance.admin_org_roles_delete(org_id, organization_id, role_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_roles_delete: #{e}"
end
```

#### Using the admin_org_roles_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_org_roles_delete_with_http_info(org_id, organization_id, role_id)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_org_roles_delete_with_http_info(org_id, organization_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_roles_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **organization_id** | **String** |  |  |
| **role_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_org_roles_list

> admin_org_roles_list(org_id, organization_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 
organization_id = 'organization_id_example' # String | 

begin
  
  api_instance.admin_org_roles_list(org_id, organization_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_roles_list: #{e}"
end
```

#### Using the admin_org_roles_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_org_roles_list_with_http_info(org_id, organization_id)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_org_roles_list_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_roles_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **organization_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_organizations_create

> admin_organizations_create(org_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 

begin
  
  api_instance.admin_organizations_create(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_organizations_create: #{e}"
end
```

#### Using the admin_organizations_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_organizations_create_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_organizations_create_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_organizations_create_with_http_info: #{e}"
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


## admin_organizations_delete

> admin_organizations_delete(org_id, organization_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 
organization_id = 'organization_id_example' # String | 

begin
  
  api_instance.admin_organizations_delete(org_id, organization_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_organizations_delete: #{e}"
end
```

#### Using the admin_organizations_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_organizations_delete_with_http_info(org_id, organization_id)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_organizations_delete_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_organizations_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **organization_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_organizations_get

> admin_organizations_get(org_id, organization_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 
organization_id = 'organization_id_example' # String | 

begin
  
  api_instance.admin_organizations_get(org_id, organization_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_organizations_get: #{e}"
end
```

#### Using the admin_organizations_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_organizations_get_with_http_info(org_id, organization_id)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_organizations_get_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_organizations_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **organization_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## admin_organizations_list

> admin_organizations_list(org_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 

begin
  
  api_instance.admin_organizations_list(org_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_organizations_list: #{e}"
end
```

#### Using the admin_organizations_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> admin_organizations_list_with_http_info(org_id)

```ruby
begin
  
  data, status_code, headers = api_instance.admin_organizations_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_organizations_list_with_http_info: #{e}"
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


## patch_admin_org_members_update

> patch_admin_org_members_update(org_id, organization_id, user_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 
organization_id = 'organization_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.patch_admin_org_members_update(org_id, organization_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->patch_admin_org_members_update: #{e}"
end
```

#### Using the patch_admin_org_members_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> patch_admin_org_members_update_with_http_info(org_id, organization_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.patch_admin_org_members_update_with_http_info(org_id, organization_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->patch_admin_org_members_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **organization_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## patch_admin_org_roles_update

> patch_admin_org_roles_update(org_id, organization_id, role_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 
organization_id = 'organization_id_example' # String | 
role_id = 'role_id_example' # String | 

begin
  
  api_instance.patch_admin_org_roles_update(org_id, organization_id, role_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->patch_admin_org_roles_update: #{e}"
end
```

#### Using the patch_admin_org_roles_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> patch_admin_org_roles_update_with_http_info(org_id, organization_id, role_id)

```ruby
begin
  
  data, status_code, headers = api_instance.patch_admin_org_roles_update_with_http_info(org_id, organization_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->patch_admin_org_roles_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **organization_id** | **String** |  |  |
| **role_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## patch_admin_organizations_update

> patch_admin_organizations_update(org_id, organization_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 
organization_id = 'organization_id_example' # String | 

begin
  
  api_instance.patch_admin_organizations_update(org_id, organization_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->patch_admin_organizations_update: #{e}"
end
```

#### Using the patch_admin_organizations_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> patch_admin_organizations_update_with_http_info(org_id, organization_id)

```ruby
begin
  
  data, status_code, headers = api_instance.patch_admin_organizations_update_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->patch_admin_organizations_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **organization_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## put_admin_org_members_update

> put_admin_org_members_update(org_id, organization_id, user_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 
organization_id = 'organization_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  
  api_instance.put_admin_org_members_update(org_id, organization_id, user_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->put_admin_org_members_update: #{e}"
end
```

#### Using the put_admin_org_members_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_admin_org_members_update_with_http_info(org_id, organization_id, user_id)

```ruby
begin
  
  data, status_code, headers = api_instance.put_admin_org_members_update_with_http_info(org_id, organization_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->put_admin_org_members_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **organization_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## put_admin_org_roles_update

> put_admin_org_roles_update(org_id, organization_id, role_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 
organization_id = 'organization_id_example' # String | 
role_id = 'role_id_example' # String | 

begin
  
  api_instance.put_admin_org_roles_update(org_id, organization_id, role_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->put_admin_org_roles_update: #{e}"
end
```

#### Using the put_admin_org_roles_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_admin_org_roles_update_with_http_info(org_id, organization_id, role_id)

```ruby
begin
  
  data, status_code, headers = api_instance.put_admin_org_roles_update_with_http_info(org_id, organization_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->put_admin_org_roles_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **organization_id** | **String** |  |  |
| **role_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## put_admin_organizations_update

> put_admin_organizations_update(org_id, organization_id)



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

api_instance = LumoAuthApiClient::AdminOrganizationsApi.new
org_id = 'org_id_example' # String | 
organization_id = 'organization_id_example' # String | 

begin
  
  api_instance.put_admin_organizations_update(org_id, organization_id)
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->put_admin_organizations_update: #{e}"
end
```

#### Using the put_admin_organizations_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_admin_organizations_update_with_http_info(org_id, organization_id)

```ruby
begin
  
  data, status_code, headers = api_instance.put_admin_organizations_update_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->put_admin_organizations_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **organization_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

