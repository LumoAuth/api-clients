# LumoAuthApiClient::AdminUsersApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_user_group**](AdminUsersApi.md#add_user_group) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | Add a user to a group |
| [**add_user_permission**](AdminUsersApi.md#add_user_permission) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions | Assign a permission to a user |
| [**add_user_role**](AdminUsersApi.md#add_user_role) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | Assign a role to a user |
| [**admin_identities_legacy_saml_relink**](AdminUsersApi.md#admin_identities_legacy_saml_relink) | **POST** /orgs/{orgId}/api/v1/admin/identities/legacy-saml | Relink legacy SAML users to an IdP |
| [**admin_identities_legacy_saml_report**](AdminUsersApi.md#admin_identities_legacy_saml_report) | **GET** /orgs/{orgId}/api/v1/admin/identities/legacy-saml | Legacy SAML bindings report |
| [**admin_identities_link**](AdminUsersApi.md#admin_identities_link) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/identities | Link a SAML or LDAP identity to a user |
| [**admin_identities_list**](AdminUsersApi.md#admin_identities_list) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/identities | List a user&#39;s federated identity links |
| [**admin_identities_unlink**](AdminUsersApi.md#admin_identities_unlink) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/identities/{type} | Unlink a user&#39;s SAML, LDAP or social identity |
| [**block_user**](AdminUsersApi.md#block_user) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/block | Block a user |
| [**create_user**](AdminUsersApi.md#create_user) | **POST** /orgs/{orgId}/api/v1/admin/users | Create a user |
| [**delete_user**](AdminUsersApi.md#delete_user) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId} | Delete a user |
| [**get_user**](AdminUsersApi.md#get_user) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId} | Get a user |
| [**list_user_groups**](AdminUsersApi.md#list_user_groups) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | List a user&#39;s groups |
| [**list_user_permissions**](AdminUsersApi.md#list_user_permissions) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions | List a user&#39;s direct permissions |
| [**list_user_roles**](AdminUsersApi.md#list_user_roles) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | List a user&#39;s roles |
| [**list_users**](AdminUsersApi.md#list_users) | **GET** /orgs/{orgId}/api/v1/admin/users | List users |
| [**mark_user_verified**](AdminUsersApi.md#mark_user_verified) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/mark-verified | Mark a user&#39;s email as verified |
| [**patch_user**](AdminUsersApi.md#patch_user) | **PATCH** /orgs/{orgId}/api/v1/admin/users/{userId} | Update a user |
| [**remove_user_group**](AdminUsersApi.md#remove_user_group) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/groups/{groupId} | Remove a user from a group |
| [**remove_user_permission**](AdminUsersApi.md#remove_user_permission) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions/{permissionId} | Remove a permission from a user |
| [**remove_user_role**](AdminUsersApi.md#remove_user_role) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/roles/{roleId} | Remove a role from a user |
| [**reset_user_mfa**](AdminUsersApi.md#reset_user_mfa) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/mfa/reset | Reset MFA (removed) |
| [**send_user_verification_email**](AdminUsersApi.md#send_user_verification_email) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/verify-email | Send a verification email |
| [**set_user_password**](AdminUsersApi.md#set_user_password) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/password | Set a user&#39;s password |
| [**set_user_password_post**](AdminUsersApi.md#set_user_password_post) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/password | Set a user&#39;s password |
| [**trigger_user_password_reset**](AdminUsersApi.md#trigger_user_password_reset) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/password-reset | Send a password reset email |
| [**unblock_user**](AdminUsersApi.md#unblock_user) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/unblock | Unblock a user |
| [**update_user**](AdminUsersApi.md#update_user) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId} | Update a user |
| [**update_user_groups**](AdminUsersApi.md#update_user_groups) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | Replace a user&#39;s groups |
| [**update_user_roles**](AdminUsersApi.md#update_user_roles) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | Replace a user&#39;s roles |


## add_user_group

> <AddUserGroupResponse> add_user_group(org_id, user_id)

Add a user to a group

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
  # Add a user to a group
  result = api_instance.add_user_group(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->add_user_group: #{e}"
end
```

#### Using the add_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddUserGroupResponse>, Integer, Hash)> add_user_group_with_http_info(org_id, user_id)

```ruby
begin
  # Add a user to a group
  data, status_code, headers = api_instance.add_user_group_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddUserGroupResponse>
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

[**AddUserGroupResponse**](AddUserGroupResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## add_user_permission

> <AddUserPermissionResponse> add_user_permission(org_id, user_id)

Assign a permission to a user

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
  # Assign a permission to a user
  result = api_instance.add_user_permission(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->add_user_permission: #{e}"
end
```

#### Using the add_user_permission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddUserPermissionResponse>, Integer, Hash)> add_user_permission_with_http_info(org_id, user_id)

```ruby
begin
  # Assign a permission to a user
  data, status_code, headers = api_instance.add_user_permission_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddUserPermissionResponse>
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

[**AddUserPermissionResponse**](AddUserPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## add_user_role

> <AddUserRoleResponse> add_user_role(org_id, user_id)

Assign a role to a user

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
  # Assign a role to a user
  result = api_instance.add_user_role(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->add_user_role: #{e}"
end
```

#### Using the add_user_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddUserRoleResponse>, Integer, Hash)> add_user_role_with_http_info(org_id, user_id)

```ruby
begin
  # Assign a role to a user
  data, status_code, headers = api_instance.add_user_role_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddUserRoleResponse>
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

[**AddUserRoleResponse**](AddUserRoleResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_identities_legacy_saml_relink

> <AdminIdentitiesLegacySamlRelinkResponse> admin_identities_legacy_saml_relink(org_id, admin_identities_legacy_saml_relink_request)

Relink legacy SAML users to an IdP

Rebinds legacy bare-NameID users to `idp_id`, keeping their NameID: either `user_ids`, or every legacy user whose email domain the IdP's allowed email domains claim (`all_matching_domains: true`). Users the caller does not outrank, or whose NameID is already linked at that IdP, are skipped. `dry_run` (default true) only reports what would change. A real run revokes each relinked user's sessions, notifies them and is audited (identity.link.created per user, identity.link.bulk_relinked once); signed-in admins need fresh MFA.

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
admin_identities_legacy_saml_relink_request = LumoAuthApiClient::AdminIdentitiesLegacySamlRelinkRequest.new({idp_id: 37}) # AdminIdentitiesLegacySamlRelinkRequest | 

begin
  # Relink legacy SAML users to an IdP
  result = api_instance.admin_identities_legacy_saml_relink(org_id, admin_identities_legacy_saml_relink_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->admin_identities_legacy_saml_relink: #{e}"
end
```

#### Using the admin_identities_legacy_saml_relink_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminIdentitiesLegacySamlRelinkResponse>, Integer, Hash)> admin_identities_legacy_saml_relink_with_http_info(org_id, admin_identities_legacy_saml_relink_request)

```ruby
begin
  # Relink legacy SAML users to an IdP
  data, status_code, headers = api_instance.admin_identities_legacy_saml_relink_with_http_info(org_id, admin_identities_legacy_saml_relink_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminIdentitiesLegacySamlRelinkResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->admin_identities_legacy_saml_relink_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **admin_identities_legacy_saml_relink_request** | [**AdminIdentitiesLegacySamlRelinkRequest**](AdminIdentitiesLegacySamlRelinkRequest.md) |  |  |

### Return type

[**AdminIdentitiesLegacySamlRelinkResponse**](AdminIdentitiesLegacySamlRelinkResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## admin_identities_legacy_saml_report

> <AdminIdentitiesLegacySamlReportResponse> admin_identities_legacy_saml_report(org_id, opts)

Legacy SAML bindings report

Users still bound by a bare NameID (from before SAML links were scoped to their IdP). While the organization has more than one SAML IdP (`ambiguous: true`) these users are refused at SAML sign-in until relinked. Each user lists the IdPs whose allowed email domains claim their address; `suggested_idp_id` is set when exactly one does. Filter with `idp_id`.

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
opts = {
  idp_id: 56 # Integer | 
}

begin
  # Legacy SAML bindings report
  result = api_instance.admin_identities_legacy_saml_report(org_id, opts)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->admin_identities_legacy_saml_report: #{e}"
end
```

#### Using the admin_identities_legacy_saml_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminIdentitiesLegacySamlReportResponse>, Integer, Hash)> admin_identities_legacy_saml_report_with_http_info(org_id, opts)

```ruby
begin
  # Legacy SAML bindings report
  data, status_code, headers = api_instance.admin_identities_legacy_saml_report_with_http_info(org_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminIdentitiesLegacySamlReportResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->admin_identities_legacy_saml_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **idp_id** | **Integer** |  | [optional] |

### Return type

[**AdminIdentitiesLegacySamlReportResponse**](AdminIdentitiesLegacySamlReportResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_identities_link

> <AdminAgentsGetResponse> admin_identities_link(org_id, user_id, admin_identities_link_request)

Link a SAML or LDAP identity to a user

Sets (or replaces) the user's SAML binding (`idp_id` + `name_id`) or LDAP binding (`ldap_config_id` + `dn`; omit `dn` to look the entry up in the directory by the user's email / username). Refused with 409 when another user already holds that identity, or when the user is linked to a different federated source (unlink it first). Revokes the user's sessions and tokens, notifies the user and is audited as identity.link.created. Signed-in admins must have passed MFA in the last 10 minutes (send X-MFA-Challenge with an approved step-up challenge when calling with a user token).

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
admin_identities_link_request = LumoAuthApiClient::AdminIdentitiesLinkRequest.new({type: 'saml'}) # AdminIdentitiesLinkRequest | 

begin
  # Link a SAML or LDAP identity to a user
  result = api_instance.admin_identities_link(org_id, user_id, admin_identities_link_request)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->admin_identities_link: #{e}"
end
```

#### Using the admin_identities_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAgentsGetResponse>, Integer, Hash)> admin_identities_link_with_http_info(org_id, user_id, admin_identities_link_request)

```ruby
begin
  # Link a SAML or LDAP identity to a user
  data, status_code, headers = api_instance.admin_identities_link_with_http_info(org_id, user_id, admin_identities_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAgentsGetResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->admin_identities_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **admin_identities_link_request** | [**AdminIdentitiesLinkRequest**](AdminIdentitiesLinkRequest.md) |  |  |

### Return type

[**AdminAgentsGetResponse**](AdminAgentsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## admin_identities_list

> <AdminIdentitiesListResponse> admin_identities_list(org_id, user_id)

List a user's federated identity links

SAML (IdP + NameID), LDAP (directory + DN), and social / OIDC provider links. A SAML link with `legacy: true` stores a bare NameID and is refused at sign-in while the organization has more than one SAML IdP.

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
  # List a user's federated identity links
  result = api_instance.admin_identities_list(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->admin_identities_list: #{e}"
end
```

#### Using the admin_identities_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminIdentitiesListResponse>, Integer, Hash)> admin_identities_list_with_http_info(org_id, user_id)

```ruby
begin
  # List a user's federated identity links
  data, status_code, headers = api_instance.admin_identities_list_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminIdentitiesListResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->admin_identities_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

[**AdminIdentitiesListResponse**](AdminIdentitiesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## admin_identities_unlink

> <AdminAgentsGetResponse> admin_identities_unlink(type, org_id, user_id)

Unlink a user's SAML, LDAP or social identity

Removes the binding of the given type (`saml`, `ldap` or `social`). Revokes the user's sessions and tokens, notifies the user and is audited as identity.link.removed. Unlinking LDAP also clears LDAP-only. Same step-up rule as linking.

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
type = 'saml' # String | 
org_id = 'org_id_example' # String | 
user_id = 'user_id_example' # String | 

begin
  # Unlink a user's SAML, LDAP or social identity
  result = api_instance.admin_identities_unlink(type, org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->admin_identities_unlink: #{e}"
end
```

#### Using the admin_identities_unlink_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminAgentsGetResponse>, Integer, Hash)> admin_identities_unlink_with_http_info(type, org_id, user_id)

```ruby
begin
  # Unlink a user's SAML, LDAP or social identity
  data, status_code, headers = api_instance.admin_identities_unlink_with_http_info(type, org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminAgentsGetResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->admin_identities_unlink_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **org_id** | **String** |  |  |
| **user_id** | **String** |  |  |

### Return type

[**AdminAgentsGetResponse**](AdminAgentsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## block_user

> <BlockUserResponse> block_user(org_id, user_id)

Block a user

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
  # Block a user
  result = api_instance.block_user(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->block_user: #{e}"
end
```

#### Using the block_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlockUserResponse>, Integer, Hash)> block_user_with_http_info(org_id, user_id)

```ruby
begin
  # Block a user
  data, status_code, headers = api_instance.block_user_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlockUserResponse>
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

[**BlockUserResponse**](BlockUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_user

> <CreateUserResponse> create_user(org_id)

Create a user

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
  # Create a user
  result = api_instance.create_user(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->create_user: #{e}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUserResponse>, Integer, Hash)> create_user_with_http_info(org_id)

```ruby
begin
  # Create a user
  data, status_code, headers = api_instance.create_user_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUserResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->create_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**CreateUserResponse**](CreateUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_user

> <DeleteUserResponse> delete_user(org_id, user_id)

Delete a user

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
  # Delete a user
  result = api_instance.delete_user(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteUserResponse>, Integer, Hash)> delete_user_with_http_info(org_id, user_id)

```ruby
begin
  # Delete a user
  data, status_code, headers = api_instance.delete_user_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteUserResponse>
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

[**DeleteUserResponse**](DeleteUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <GetUserResponse> get_user(org_id, user_id)

Get a user

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
  # Get a user
  result = api_instance.get_user(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserResponse>, Integer, Hash)> get_user_with_http_info(org_id, user_id)

```ruby
begin
  # Get a user
  data, status_code, headers = api_instance.get_user_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserResponse>
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

[**GetUserResponse**](GetUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_groups

> <AdminGroupsGroupsGetRolesResponse> list_user_groups(org_id, user_id)

List a user's groups

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
  # List a user's groups
  result = api_instance.list_user_groups(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->list_user_groups: #{e}"
end
```

#### Using the list_user_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminGroupsGroupsGetRolesResponse>, Integer, Hash)> list_user_groups_with_http_info(org_id, user_id)

```ruby
begin
  # List a user's groups
  data, status_code, headers = api_instance.list_user_groups_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminGroupsGroupsGetRolesResponse>
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

[**AdminGroupsGroupsGetRolesResponse**](AdminGroupsGroupsGetRolesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_permissions

> <AdminRolesGetPermissionsResponse> list_user_permissions(org_id, user_id)

List a user's direct permissions

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
  # List a user's direct permissions
  result = api_instance.list_user_permissions(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->list_user_permissions: #{e}"
end
```

#### Using the list_user_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminRolesGetPermissionsResponse>, Integer, Hash)> list_user_permissions_with_http_info(org_id, user_id)

```ruby
begin
  # List a user's direct permissions
  data, status_code, headers = api_instance.list_user_permissions_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminRolesGetPermissionsResponse>
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

[**AdminRolesGetPermissionsResponse**](AdminRolesGetPermissionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_roles

> <AdminGroupsGroupsGetRolesResponse> list_user_roles(org_id, user_id)

List a user's roles

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
  # List a user's roles
  result = api_instance.list_user_roles(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->list_user_roles: #{e}"
end
```

#### Using the list_user_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminGroupsGroupsGetRolesResponse>, Integer, Hash)> list_user_roles_with_http_info(org_id, user_id)

```ruby
begin
  # List a user's roles
  data, status_code, headers = api_instance.list_user_roles_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminGroupsGroupsGetRolesResponse>
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

[**AdminGroupsGroupsGetRolesResponse**](AdminGroupsGroupsGetRolesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> <ListUsersResponse> list_users(org_id)

List users

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
  # List users
  result = api_instance.list_users(org_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->list_users: #{e}"
end
```

#### Using the list_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUsersResponse>, Integer, Hash)> list_users_with_http_info(org_id)

```ruby
begin
  # List users
  data, status_code, headers = api_instance.list_users_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUsersResponse>
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->list_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** |  |  |

### Return type

[**ListUsersResponse**](ListUsersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mark_user_verified

> <MarkUserVerifiedResponse> mark_user_verified(org_id, user_id)

Mark a user's email as verified

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
  # Mark a user's email as verified
  result = api_instance.mark_user_verified(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->mark_user_verified: #{e}"
end
```

#### Using the mark_user_verified_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MarkUserVerifiedResponse>, Integer, Hash)> mark_user_verified_with_http_info(org_id, user_id)

```ruby
begin
  # Mark a user's email as verified
  data, status_code, headers = api_instance.mark_user_verified_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MarkUserVerifiedResponse>
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

[**MarkUserVerifiedResponse**](MarkUserVerifiedResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_user

> <UpdateUserResponse> patch_user(org_id, user_id)

Update a user

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
  # Update a user
  result = api_instance.patch_user(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->patch_user: #{e}"
end
```

#### Using the patch_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateUserResponse>, Integer, Hash)> patch_user_with_http_info(org_id, user_id)

```ruby
begin
  # Update a user
  data, status_code, headers = api_instance.patch_user_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateUserResponse>
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

[**UpdateUserResponse**](UpdateUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_user_group

> <RemoveUserGroupResponse> remove_user_group(org_id, user_id, group_id)

Remove a user from a group

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
  # Remove a user from a group
  result = api_instance.remove_user_group(org_id, user_id, group_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->remove_user_group: #{e}"
end
```

#### Using the remove_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveUserGroupResponse>, Integer, Hash)> remove_user_group_with_http_info(org_id, user_id, group_id)

```ruby
begin
  # Remove a user from a group
  data, status_code, headers = api_instance.remove_user_group_with_http_info(org_id, user_id, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveUserGroupResponse>
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

[**RemoveUserGroupResponse**](RemoveUserGroupResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_user_permission

> <RemoveUserPermissionResponse> remove_user_permission(org_id, user_id, permission_id)

Remove a permission from a user

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
  # Remove a permission from a user
  result = api_instance.remove_user_permission(org_id, user_id, permission_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->remove_user_permission: #{e}"
end
```

#### Using the remove_user_permission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveUserPermissionResponse>, Integer, Hash)> remove_user_permission_with_http_info(org_id, user_id, permission_id)

```ruby
begin
  # Remove a permission from a user
  data, status_code, headers = api_instance.remove_user_permission_with_http_info(org_id, user_id, permission_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveUserPermissionResponse>
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

[**RemoveUserPermissionResponse**](RemoveUserPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_user_role

> <RemoveUserRoleResponse> remove_user_role(org_id, user_id, role_id)

Remove a role from a user

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
  # Remove a role from a user
  result = api_instance.remove_user_role(org_id, user_id, role_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->remove_user_role: #{e}"
end
```

#### Using the remove_user_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveUserRoleResponse>, Integer, Hash)> remove_user_role_with_http_info(org_id, user_id, role_id)

```ruby
begin
  # Remove a role from a user
  data, status_code, headers = api_instance.remove_user_role_with_http_info(org_id, user_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveUserRoleResponse>
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

[**RemoveUserRoleResponse**](RemoveUserRoleResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reset_user_mfa

> reset_user_mfa(org_id, user_id)

Reset MFA (removed)

Removed: admins cannot disable a user's MFA. Issue a temporary access code with POST /users/{userId}/temporary-access-code instead, or remove a single lost authenticator with DELETE /users/{userId}/authenticators/{authenticatorId}.

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
  # Reset MFA (removed)
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
  # Reset MFA (removed)
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

> <SendUserVerificationEmailResponse> send_user_verification_email(org_id, user_id)

Send a verification email

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
  # Send a verification email
  result = api_instance.send_user_verification_email(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->send_user_verification_email: #{e}"
end
```

#### Using the send_user_verification_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendUserVerificationEmailResponse>, Integer, Hash)> send_user_verification_email_with_http_info(org_id, user_id)

```ruby
begin
  # Send a verification email
  data, status_code, headers = api_instance.send_user_verification_email_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendUserVerificationEmailResponse>
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

[**SendUserVerificationEmailResponse**](SendUserVerificationEmailResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_user_password

> <SetUserPasswordPostResponse> set_user_password(org_id, user_id)

Set a user's password

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
  # Set a user's password
  result = api_instance.set_user_password(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->set_user_password: #{e}"
end
```

#### Using the set_user_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetUserPasswordPostResponse>, Integer, Hash)> set_user_password_with_http_info(org_id, user_id)

```ruby
begin
  # Set a user's password
  data, status_code, headers = api_instance.set_user_password_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetUserPasswordPostResponse>
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

[**SetUserPasswordPostResponse**](SetUserPasswordPostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_user_password_post

> <SetUserPasswordPostResponse> set_user_password_post(org_id, user_id)

Set a user's password

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
  # Set a user's password
  result = api_instance.set_user_password_post(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->set_user_password_post: #{e}"
end
```

#### Using the set_user_password_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetUserPasswordPostResponse>, Integer, Hash)> set_user_password_post_with_http_info(org_id, user_id)

```ruby
begin
  # Set a user's password
  data, status_code, headers = api_instance.set_user_password_post_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetUserPasswordPostResponse>
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

[**SetUserPasswordPostResponse**](SetUserPasswordPostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## trigger_user_password_reset

> <TriggerUserPasswordResetResponse> trigger_user_password_reset(org_id, user_id)

Send a password reset email

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
  # Send a password reset email
  result = api_instance.trigger_user_password_reset(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->trigger_user_password_reset: #{e}"
end
```

#### Using the trigger_user_password_reset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TriggerUserPasswordResetResponse>, Integer, Hash)> trigger_user_password_reset_with_http_info(org_id, user_id)

```ruby
begin
  # Send a password reset email
  data, status_code, headers = api_instance.trigger_user_password_reset_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TriggerUserPasswordResetResponse>
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

[**TriggerUserPasswordResetResponse**](TriggerUserPasswordResetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unblock_user

> <UnblockUserResponse> unblock_user(org_id, user_id)

Unblock a user

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
  # Unblock a user
  result = api_instance.unblock_user(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->unblock_user: #{e}"
end
```

#### Using the unblock_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnblockUserResponse>, Integer, Hash)> unblock_user_with_http_info(org_id, user_id)

```ruby
begin
  # Unblock a user
  data, status_code, headers = api_instance.unblock_user_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnblockUserResponse>
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

[**UnblockUserResponse**](UnblockUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user

> <UpdateUserResponse> update_user(org_id, user_id)

Update a user

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
  # Update a user
  result = api_instance.update_user(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateUserResponse>, Integer, Hash)> update_user_with_http_info(org_id, user_id)

```ruby
begin
  # Update a user
  data, status_code, headers = api_instance.update_user_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateUserResponse>
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

[**UpdateUserResponse**](UpdateUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user_groups

> <UpdateUserGroupsResponse> update_user_groups(org_id, user_id)

Replace a user's groups

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
  # Replace a user's groups
  result = api_instance.update_user_groups(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->update_user_groups: #{e}"
end
```

#### Using the update_user_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateUserGroupsResponse>, Integer, Hash)> update_user_groups_with_http_info(org_id, user_id)

```ruby
begin
  # Replace a user's groups
  data, status_code, headers = api_instance.update_user_groups_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateUserGroupsResponse>
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

[**UpdateUserGroupsResponse**](UpdateUserGroupsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user_roles

> <UpdateUserRolesResponse> update_user_roles(org_id, user_id)

Replace a user's roles

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
  # Replace a user's roles
  result = api_instance.update_user_roles(org_id, user_id)
  p result
rescue LumoAuthApiClient::ApiError => e
  puts "Error when calling AdminUsersApi->update_user_roles: #{e}"
end
```

#### Using the update_user_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateUserRolesResponse>, Integer, Hash)> update_user_roles_with_http_info(org_id, user_id)

```ruby
begin
  # Replace a user's roles
  data, status_code, headers = api_instance.update_user_roles_with_http_info(org_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateUserRolesResponse>
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

[**UpdateUserRolesResponse**](UpdateUserRolesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

