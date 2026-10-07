# LumoAuthApiClient::AdminOrganizationsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**admin_org_invitations_create**](AdminOrganizationsApi.md#admin_org_invitations_create) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | Invite a user to an organization |
| [**admin_org_invitations_list**](AdminOrganizationsApi.md#admin_org_invitations_list) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | List organization invitations |
| [**admin_org_invitations_resend**](AdminOrganizationsApi.md#admin_org_invitations_resend) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId}/resend | Resend an invitation |
| [**admin_org_invitations_revoke**](AdminOrganizationsApi.md#admin_org_invitations_revoke) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId} | Revoke an invitation |
| [**admin_org_members_add**](AdminOrganizationsApi.md#admin_org_members_add) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | Add a member to an organization |
| [**admin_org_members_list**](AdminOrganizationsApi.md#admin_org_members_list) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | List organization members |
| [**admin_org_members_remove**](AdminOrganizationsApi.md#admin_org_members_remove) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Remove a member from an organization |
| [**admin_org_roles_create**](AdminOrganizationsApi.md#admin_org_roles_create) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | Create an organization role |
| [**admin_org_roles_delete**](AdminOrganizationsApi.md#admin_org_roles_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Delete an organization role |
| [**admin_org_roles_list**](AdminOrganizationsApi.md#admin_org_roles_list) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | List organization roles |
| [**admin_organizations_create**](AdminOrganizationsApi.md#admin_organizations_create) | **POST** /orgs/{orgId}/api/v1/admin/organizations | Create an organization |
| [**admin_organizations_delete**](AdminOrganizationsApi.md#admin_organizations_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Delete an organization |
| [**admin_organizations_get**](AdminOrganizationsApi.md#admin_organizations_get) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Get an organization |
| [**admin_organizations_list**](AdminOrganizationsApi.md#admin_organizations_list) | **GET** /orgs/{orgId}/api/v1/admin/organizations | List organizations |
| [**patch_admin_org_members_update**](AdminOrganizationsApi.md#patch_admin_org_members_update) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Update a member&#39;s role or status |
| [**patch_admin_org_roles_update**](AdminOrganizationsApi.md#patch_admin_org_roles_update) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Update an organization role |
| [**patch_admin_organizations_update**](AdminOrganizationsApi.md#patch_admin_organizations_update) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Update an organization |
| [**put_admin_org_members_update**](AdminOrganizationsApi.md#put_admin_org_members_update) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Update a member&#39;s role or status |
| [**put_admin_org_roles_update**](AdminOrganizationsApi.md#put_admin_org_roles_update) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Update an organization role |
| [**put_admin_organizations_update**](AdminOrganizationsApi.md#put_admin_organizations_update) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Update an organization |


## admin_org_invitations_create

> <AdminOrgInvitationsCreateResponse> admin_org_invitations_create(org_id, organization_id)

Invite a user to an organization

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
  # Invite a user to an organization
  result = api_instance.admin_org_invitations_create(org_id, organization_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_invitations_create: #{e}"
end
```

#### Using the admin_org_invitations_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminOrgInvitationsCreateResponse>, Integer, Hash)> admin_org_invitations_create_with_http_info(org_id, organization_id)

```ruby
begin
  # Invite a user to an organization
  data, status_code, headers = api_instance.admin_org_invitations_create_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminOrgInvitationsCreateResponse>
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

[**AdminOrgInvitationsCreateResponse**](AdminOrgInvitationsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_org_invitations_list

> <AdminOrgInvitationsListResponse> admin_org_invitations_list(org_id, organization_id)

List organization invitations

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
  # List organization invitations
  result = api_instance.admin_org_invitations_list(org_id, organization_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_invitations_list: #{e}"
end
```

#### Using the admin_org_invitations_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminOrgInvitationsListResponse>, Integer, Hash)> admin_org_invitations_list_with_http_info(org_id, organization_id)

```ruby
begin
  # List organization invitations
  data, status_code, headers = api_instance.admin_org_invitations_list_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminOrgInvitationsListResponse>
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

[**AdminOrgInvitationsListResponse**](AdminOrgInvitationsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_org_invitations_resend

> <MessageResponse> admin_org_invitations_resend(org_id, organization_id, inv_id)

Resend an invitation

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
  # Resend an invitation
  result = api_instance.admin_org_invitations_resend(org_id, organization_id, inv_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_invitations_resend: #{e}"
end
```

#### Using the admin_org_invitations_resend_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> admin_org_invitations_resend_with_http_info(org_id, organization_id, inv_id)

```ruby
begin
  # Resend an invitation
  data, status_code, headers = api_instance.admin_org_invitations_resend_with_http_info(org_id, organization_id, inv_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
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

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_org_invitations_revoke

> <MessageResponse> admin_org_invitations_revoke(org_id, organization_id, inv_id)

Revoke an invitation

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
  # Revoke an invitation
  result = api_instance.admin_org_invitations_revoke(org_id, organization_id, inv_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_invitations_revoke: #{e}"
end
```

#### Using the admin_org_invitations_revoke_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> admin_org_invitations_revoke_with_http_info(org_id, organization_id, inv_id)

```ruby
begin
  # Revoke an invitation
  data, status_code, headers = api_instance.admin_org_invitations_revoke_with_http_info(org_id, organization_id, inv_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
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

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_org_members_add

> <AdminOrgMembersAddResponse> admin_org_members_add(org_id, organization_id)

Add a member to an organization

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
  # Add a member to an organization
  result = api_instance.admin_org_members_add(org_id, organization_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_members_add: #{e}"
end
```

#### Using the admin_org_members_add_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminOrgMembersAddResponse>, Integer, Hash)> admin_org_members_add_with_http_info(org_id, organization_id)

```ruby
begin
  # Add a member to an organization
  data, status_code, headers = api_instance.admin_org_members_add_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminOrgMembersAddResponse>
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

[**AdminOrgMembersAddResponse**](AdminOrgMembersAddResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_org_members_list

> <AdminOrgMembersListResponse> admin_org_members_list(org_id, organization_id)

List organization members

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
  # List organization members
  result = api_instance.admin_org_members_list(org_id, organization_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_members_list: #{e}"
end
```

#### Using the admin_org_members_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminOrgMembersListResponse>, Integer, Hash)> admin_org_members_list_with_http_info(org_id, organization_id)

```ruby
begin
  # List organization members
  data, status_code, headers = api_instance.admin_org_members_list_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminOrgMembersListResponse>
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

[**AdminOrgMembersListResponse**](AdminOrgMembersListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_org_members_remove

> <MessageResponse> admin_org_members_remove(org_id, organization_id, user_id)

Remove a member from an organization

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
  # Remove a member from an organization
  result = api_instance.admin_org_members_remove(org_id, organization_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_members_remove: #{e}"
end
```

#### Using the admin_org_members_remove_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> admin_org_members_remove_with_http_info(org_id, organization_id, user_id)

```ruby
begin
  # Remove a member from an organization
  data, status_code, headers = api_instance.admin_org_members_remove_with_http_info(org_id, organization_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
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

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_org_roles_create

> <AdminOrgRolesCreateResponse> admin_org_roles_create(org_id, organization_id)

Create an organization role

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
  # Create an organization role
  result = api_instance.admin_org_roles_create(org_id, organization_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_roles_create: #{e}"
end
```

#### Using the admin_org_roles_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminOrgRolesCreateResponse>, Integer, Hash)> admin_org_roles_create_with_http_info(org_id, organization_id)

```ruby
begin
  # Create an organization role
  data, status_code, headers = api_instance.admin_org_roles_create_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminOrgRolesCreateResponse>
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

[**AdminOrgRolesCreateResponse**](AdminOrgRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_org_roles_delete

> <MessageResponse> admin_org_roles_delete(org_id, organization_id, role_id)

Delete an organization role

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
  # Delete an organization role
  result = api_instance.admin_org_roles_delete(org_id, organization_id, role_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_roles_delete: #{e}"
end
```

#### Using the admin_org_roles_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> admin_org_roles_delete_with_http_info(org_id, organization_id, role_id)

```ruby
begin
  # Delete an organization role
  data, status_code, headers = api_instance.admin_org_roles_delete_with_http_info(org_id, organization_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
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

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_org_roles_list

> <AdminOrgRolesListResponse> admin_org_roles_list(org_id, organization_id)

List organization roles

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
  # List organization roles
  result = api_instance.admin_org_roles_list(org_id, organization_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_org_roles_list: #{e}"
end
```

#### Using the admin_org_roles_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminOrgRolesListResponse>, Integer, Hash)> admin_org_roles_list_with_http_info(org_id, organization_id)

```ruby
begin
  # List organization roles
  data, status_code, headers = api_instance.admin_org_roles_list_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminOrgRolesListResponse>
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

[**AdminOrgRolesListResponse**](AdminOrgRolesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_organizations_create

> <AdminOrganizationsCreateResponse> admin_organizations_create(org_id)

Create an organization

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
  # Create an organization
  result = api_instance.admin_organizations_create(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_organizations_create: #{e}"
end
```

#### Using the admin_organizations_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminOrganizationsCreateResponse>, Integer, Hash)> admin_organizations_create_with_http_info(org_id)

```ruby
begin
  # Create an organization
  data, status_code, headers = api_instance.admin_organizations_create_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminOrganizationsCreateResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_organizations_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminOrganizationsCreateResponse**](AdminOrganizationsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_organizations_delete

> <MessageResponse> admin_organizations_delete(org_id, organization_id)

Delete an organization

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
  # Delete an organization
  result = api_instance.admin_organizations_delete(org_id, organization_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_organizations_delete: #{e}"
end
```

#### Using the admin_organizations_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> admin_organizations_delete_with_http_info(org_id, organization_id)

```ruby
begin
  # Delete an organization
  data, status_code, headers = api_instance.admin_organizations_delete_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
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

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_organizations_get

> <AdminOrganizationsGetResponse> admin_organizations_get(org_id, organization_id)

Get an organization

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
  # Get an organization
  result = api_instance.admin_organizations_get(org_id, organization_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_organizations_get: #{e}"
end
```

#### Using the admin_organizations_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminOrganizationsGetResponse>, Integer, Hash)> admin_organizations_get_with_http_info(org_id, organization_id)

```ruby
begin
  # Get an organization
  data, status_code, headers = api_instance.admin_organizations_get_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminOrganizationsGetResponse>
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

[**AdminOrganizationsGetResponse**](AdminOrganizationsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_organizations_list

> <AdminOrganizationsListResponse> admin_organizations_list(org_id)

List organizations

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
  # List organizations
  result = api_instance.admin_organizations_list(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_organizations_list: #{e}"
end
```

#### Using the admin_organizations_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminOrganizationsListResponse>, Integer, Hash)> admin_organizations_list_with_http_info(org_id)

```ruby
begin
  # List organizations
  data, status_code, headers = api_instance.admin_organizations_list_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminOrganizationsListResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->admin_organizations_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**AdminOrganizationsListResponse**](AdminOrganizationsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_admin_org_members_update

> <PutAdminOrgMembersUpdateResponse> patch_admin_org_members_update(org_id, organization_id, user_id)

Update a member's role or status

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
  # Update a member's role or status
  result = api_instance.patch_admin_org_members_update(org_id, organization_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->patch_admin_org_members_update: #{e}"
end
```

#### Using the patch_admin_org_members_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminOrgMembersUpdateResponse>, Integer, Hash)> patch_admin_org_members_update_with_http_info(org_id, organization_id, user_id)

```ruby
begin
  # Update a member's role or status
  data, status_code, headers = api_instance.patch_admin_org_members_update_with_http_info(org_id, organization_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminOrgMembersUpdateResponse>
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

[**PutAdminOrgMembersUpdateResponse**](PutAdminOrgMembersUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_admin_org_roles_update

> <AdminOrgRolesCreateResponse> patch_admin_org_roles_update(org_id, organization_id, role_id)

Update an organization role

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
  # Update an organization role
  result = api_instance.patch_admin_org_roles_update(org_id, organization_id, role_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->patch_admin_org_roles_update: #{e}"
end
```

#### Using the patch_admin_org_roles_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminOrgRolesCreateResponse>, Integer, Hash)> patch_admin_org_roles_update_with_http_info(org_id, organization_id, role_id)

```ruby
begin
  # Update an organization role
  data, status_code, headers = api_instance.patch_admin_org_roles_update_with_http_info(org_id, organization_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminOrgRolesCreateResponse>
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

[**AdminOrgRolesCreateResponse**](AdminOrgRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_admin_organizations_update

> <AdminOrganizationsGetResponse> patch_admin_organizations_update(org_id, organization_id)

Update an organization

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
  # Update an organization
  result = api_instance.patch_admin_organizations_update(org_id, organization_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->patch_admin_organizations_update: #{e}"
end
```

#### Using the patch_admin_organizations_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminOrganizationsGetResponse>, Integer, Hash)> patch_admin_organizations_update_with_http_info(org_id, organization_id)

```ruby
begin
  # Update an organization
  data, status_code, headers = api_instance.patch_admin_organizations_update_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminOrganizationsGetResponse>
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

[**AdminOrganizationsGetResponse**](AdminOrganizationsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_admin_org_members_update

> <PutAdminOrgMembersUpdateResponse> put_admin_org_members_update(org_id, organization_id, user_id)

Update a member's role or status

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
  # Update a member's role or status
  result = api_instance.put_admin_org_members_update(org_id, organization_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->put_admin_org_members_update: #{e}"
end
```

#### Using the put_admin_org_members_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAdminOrgMembersUpdateResponse>, Integer, Hash)> put_admin_org_members_update_with_http_info(org_id, organization_id, user_id)

```ruby
begin
  # Update a member's role or status
  data, status_code, headers = api_instance.put_admin_org_members_update_with_http_info(org_id, organization_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAdminOrgMembersUpdateResponse>
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

[**PutAdminOrgMembersUpdateResponse**](PutAdminOrgMembersUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_admin_org_roles_update

> <AdminOrgRolesCreateResponse> put_admin_org_roles_update(org_id, organization_id, role_id)

Update an organization role

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
  # Update an organization role
  result = api_instance.put_admin_org_roles_update(org_id, organization_id, role_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->put_admin_org_roles_update: #{e}"
end
```

#### Using the put_admin_org_roles_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminOrgRolesCreateResponse>, Integer, Hash)> put_admin_org_roles_update_with_http_info(org_id, organization_id, role_id)

```ruby
begin
  # Update an organization role
  data, status_code, headers = api_instance.put_admin_org_roles_update_with_http_info(org_id, organization_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminOrgRolesCreateResponse>
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

[**AdminOrgRolesCreateResponse**](AdminOrgRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_admin_organizations_update

> <AdminOrganizationsGetResponse> put_admin_organizations_update(org_id, organization_id)

Update an organization

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
  # Update an organization
  result = api_instance.put_admin_organizations_update(org_id, organization_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminOrganizationsApi->put_admin_organizations_update: #{e}"
end
```

#### Using the put_admin_organizations_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminOrganizationsGetResponse>, Integer, Hash)> put_admin_organizations_update_with_http_info(org_id, organization_id)

```ruby
begin
  # Update an organization
  data, status_code, headers = api_instance.put_admin_organizations_update_with_http_info(org_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminOrganizationsGetResponse>
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

[**AdminOrganizationsGetResponse**](AdminOrganizationsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

