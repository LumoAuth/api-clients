# lumoauth_api_client.AdminOrganizationsApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_org_invitations_create**](AdminOrganizationsApi.md#admin_org_invitations_create) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | Invite a user to an organization
[**admin_org_invitations_list**](AdminOrganizationsApi.md#admin_org_invitations_list) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | List organization invitations
[**admin_org_invitations_resend**](AdminOrganizationsApi.md#admin_org_invitations_resend) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId}/resend | Resend an invitation
[**admin_org_invitations_revoke**](AdminOrganizationsApi.md#admin_org_invitations_revoke) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId} | Revoke an invitation
[**admin_org_members_add**](AdminOrganizationsApi.md#admin_org_members_add) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | Add a member to an organization
[**admin_org_members_list**](AdminOrganizationsApi.md#admin_org_members_list) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | List organization members
[**admin_org_members_remove**](AdminOrganizationsApi.md#admin_org_members_remove) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Remove a member from an organization
[**admin_org_roles_create**](AdminOrganizationsApi.md#admin_org_roles_create) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | Create an organization role
[**admin_org_roles_delete**](AdminOrganizationsApi.md#admin_org_roles_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Delete an organization role
[**admin_org_roles_list**](AdminOrganizationsApi.md#admin_org_roles_list) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | List organization roles
[**admin_organizations_create**](AdminOrganizationsApi.md#admin_organizations_create) | **POST** /orgs/{orgId}/api/v1/admin/organizations | Create an organization
[**admin_organizations_delete**](AdminOrganizationsApi.md#admin_organizations_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Delete an organization
[**admin_organizations_get**](AdminOrganizationsApi.md#admin_organizations_get) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Get an organization
[**admin_organizations_list**](AdminOrganizationsApi.md#admin_organizations_list) | **GET** /orgs/{orgId}/api/v1/admin/organizations | List organizations
[**patch_admin_org_members_update**](AdminOrganizationsApi.md#patch_admin_org_members_update) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Update a member&#39;s role or status
[**patch_admin_org_roles_update**](AdminOrganizationsApi.md#patch_admin_org_roles_update) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Update an organization role
[**patch_admin_organizations_update**](AdminOrganizationsApi.md#patch_admin_organizations_update) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Update an organization
[**put_admin_org_members_update**](AdminOrganizationsApi.md#put_admin_org_members_update) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Update a member&#39;s role or status
[**put_admin_org_roles_update**](AdminOrganizationsApi.md#put_admin_org_roles_update) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Update an organization role
[**put_admin_organizations_update**](AdminOrganizationsApi.md#put_admin_organizations_update) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Update an organization


# **admin_org_invitations_create**
> AdminOrgInvitationsCreateResponse admin_org_invitations_create(org_id, organization_id)

Invite a user to an organization

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_org_invitations_create_response import AdminOrgInvitationsCreateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 
    organization_id = 'organization_id_example' # str | 

    try:
        # Invite a user to an organization
        api_response = api_instance.admin_org_invitations_create(org_id, organization_id)
        print("The response of AdminOrganizationsApi->admin_org_invitations_create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->admin_org_invitations_create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **organization_id** | **str**|  | 

### Return type

[**AdminOrgInvitationsCreateResponse**](AdminOrgInvitationsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Invitation sent |  -  |
**400** | Invalid role for this organization |  -  |
**404** | Organization not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_org_invitations_list**
> AdminOrgInvitationsListResponse admin_org_invitations_list(org_id, organization_id)

List organization invitations

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_org_invitations_list_response import AdminOrgInvitationsListResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 
    organization_id = 'organization_id_example' # str | 

    try:
        # List organization invitations
        api_response = api_instance.admin_org_invitations_list(org_id, organization_id)
        print("The response of AdminOrganizationsApi->admin_org_invitations_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->admin_org_invitations_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **organization_id** | **str**|  | 

### Return type

[**AdminOrgInvitationsListResponse**](AdminOrgInvitationsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Invitations |  -  |
**404** | Organization not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_org_invitations_resend**
> MessageResponse admin_org_invitations_resend(org_id, organization_id, inv_id)

Resend an invitation

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.message_response import MessageResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 
    organization_id = 'organization_id_example' # str | 
    inv_id = 'inv_id_example' # str | 

    try:
        # Resend an invitation
        api_response = api_instance.admin_org_invitations_resend(org_id, organization_id, inv_id)
        print("The response of AdminOrganizationsApi->admin_org_invitations_resend:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->admin_org_invitations_resend: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **organization_id** | **str**|  | 
 **inv_id** | **str**|  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Invitation resent |  -  |
**404** | Organization or invitation not found |  -  |
**422** | Unable to resend invitation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_org_invitations_revoke**
> MessageResponse admin_org_invitations_revoke(org_id, organization_id, inv_id)

Revoke an invitation

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.message_response import MessageResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 
    organization_id = 'organization_id_example' # str | 
    inv_id = 'inv_id_example' # str | 

    try:
        # Revoke an invitation
        api_response = api_instance.admin_org_invitations_revoke(org_id, organization_id, inv_id)
        print("The response of AdminOrganizationsApi->admin_org_invitations_revoke:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->admin_org_invitations_revoke: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **organization_id** | **str**|  | 
 **inv_id** | **str**|  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Invitation revoked |  -  |
**404** | Organization or invitation not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_org_members_add**
> AdminOrgMembersAddResponse admin_org_members_add(org_id, organization_id)

Add a member to an organization

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_org_members_add_response import AdminOrgMembersAddResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 
    organization_id = 'organization_id_example' # str | 

    try:
        # Add a member to an organization
        api_response = api_instance.admin_org_members_add(org_id, organization_id)
        print("The response of AdminOrganizationsApi->admin_org_members_add:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->admin_org_members_add: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **organization_id** | **str**|  | 

### Return type

[**AdminOrgMembersAddResponse**](AdminOrgMembersAddResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Member added |  -  |
**404** | Organization, user or role not found |  -  |
**409** | User is already a member |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_org_members_list**
> AdminOrgMembersListResponse admin_org_members_list(org_id, organization_id)

List organization members

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_org_members_list_response import AdminOrgMembersListResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 
    organization_id = 'organization_id_example' # str | 

    try:
        # List organization members
        api_response = api_instance.admin_org_members_list(org_id, organization_id)
        print("The response of AdminOrganizationsApi->admin_org_members_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->admin_org_members_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **organization_id** | **str**|  | 

### Return type

[**AdminOrgMembersListResponse**](AdminOrgMembersListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Members |  -  |
**404** | Organization not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_org_members_remove**
> MessageResponse admin_org_members_remove(org_id, organization_id, user_id)

Remove a member from an organization

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.message_response import MessageResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 
    organization_id = 'organization_id_example' # str | 
    user_id = 'user_id_example' # str | 

    try:
        # Remove a member from an organization
        api_response = api_instance.admin_org_members_remove(org_id, organization_id, user_id)
        print("The response of AdminOrganizationsApi->admin_org_members_remove:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->admin_org_members_remove: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **organization_id** | **str**|  | 
 **user_id** | **str**|  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Member removed |  -  |
**404** | Organization or user not found |  -  |
**422** | Unable to remove member |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_org_roles_create**
> AdminOrgRolesCreateResponse admin_org_roles_create(org_id, organization_id)

Create an organization role

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_org_roles_create_response import AdminOrgRolesCreateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 
    organization_id = 'organization_id_example' # str | 

    try:
        # Create an organization role
        api_response = api_instance.admin_org_roles_create(org_id, organization_id)
        print("The response of AdminOrganizationsApi->admin_org_roles_create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->admin_org_roles_create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **organization_id** | **str**|  | 

### Return type

[**AdminOrgRolesCreateResponse**](AdminOrgRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Role created |  -  |
**404** | Organization not found |  -  |
**409** | A role with this name or slug already exists |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_org_roles_delete**
> MessageResponse admin_org_roles_delete(org_id, organization_id, role_id)

Delete an organization role

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.message_response import MessageResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 
    organization_id = 'organization_id_example' # str | 
    role_id = 'role_id_example' # str | 

    try:
        # Delete an organization role
        api_response = api_instance.admin_org_roles_delete(org_id, organization_id, role_id)
        print("The response of AdminOrganizationsApi->admin_org_roles_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->admin_org_roles_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **organization_id** | **str**|  | 
 **role_id** | **str**|  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Role deleted |  -  |
**404** | Organization or role not found |  -  |
**422** | Role still in use |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_org_roles_list**
> AdminOrgRolesListResponse admin_org_roles_list(org_id, organization_id)

List organization roles

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_org_roles_list_response import AdminOrgRolesListResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 
    organization_id = 'organization_id_example' # str | 

    try:
        # List organization roles
        api_response = api_instance.admin_org_roles_list(org_id, organization_id)
        print("The response of AdminOrganizationsApi->admin_org_roles_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->admin_org_roles_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **organization_id** | **str**|  | 

### Return type

[**AdminOrgRolesListResponse**](AdminOrgRolesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Roles |  -  |
**404** | Organization not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_organizations_create**
> AdminOrganizationsCreateResponse admin_organizations_create(org_id)

Create an organization

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_organizations_create_response import AdminOrganizationsCreateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Create an organization
        api_response = api_instance.admin_organizations_create(org_id)
        print("The response of AdminOrganizationsApi->admin_organizations_create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->admin_organizations_create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminOrganizationsCreateResponse**](AdminOrganizationsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Organization created |  -  |
**409** | Organization already exists or data invalid |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_organizations_delete**
> MessageResponse admin_organizations_delete(org_id, organization_id)

Delete an organization

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.message_response import MessageResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 
    organization_id = 'organization_id_example' # str | 

    try:
        # Delete an organization
        api_response = api_instance.admin_organizations_delete(org_id, organization_id)
        print("The response of AdminOrganizationsApi->admin_organizations_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->admin_organizations_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **organization_id** | **str**|  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Organization deleted |  -  |
**404** | Organization not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_organizations_get**
> AdminOrganizationsGetResponse admin_organizations_get(org_id, organization_id)

Get an organization

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_organizations_get_response import AdminOrganizationsGetResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 
    organization_id = 'organization_id_example' # str | 

    try:
        # Get an organization
        api_response = api_instance.admin_organizations_get(org_id, organization_id)
        print("The response of AdminOrganizationsApi->admin_organizations_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->admin_organizations_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **organization_id** | **str**|  | 

### Return type

[**AdminOrganizationsGetResponse**](AdminOrganizationsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Organization |  -  |
**404** | Organization not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_organizations_list**
> AdminOrganizationsListResponse admin_organizations_list(org_id)

List organizations

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_organizations_list_response import AdminOrganizationsListResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # List organizations
        api_response = api_instance.admin_organizations_list(org_id)
        print("The response of AdminOrganizationsApi->admin_organizations_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->admin_organizations_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminOrganizationsListResponse**](AdminOrganizationsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Organizations |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_admin_org_members_update**
> PutAdminOrgMembersUpdateResponse patch_admin_org_members_update(org_id, organization_id, user_id)

Update a member's role or status

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_org_members_update_response import PutAdminOrgMembersUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 
    organization_id = 'organization_id_example' # str | 
    user_id = 'user_id_example' # str | 

    try:
        # Update a member's role or status
        api_response = api_instance.patch_admin_org_members_update(org_id, organization_id, user_id)
        print("The response of AdminOrganizationsApi->patch_admin_org_members_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->patch_admin_org_members_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **organization_id** | **str**|  | 
 **user_id** | **str**|  | 

### Return type

[**PutAdminOrgMembersUpdateResponse**](PutAdminOrgMembersUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated member |  -  |
**404** | Organization, member or role not found |  -  |
**422** | Unable to update member role |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_admin_org_roles_update**
> AdminOrgRolesCreateResponse patch_admin_org_roles_update(org_id, organization_id, role_id)

Update an organization role

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_org_roles_create_response import AdminOrgRolesCreateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 
    organization_id = 'organization_id_example' # str | 
    role_id = 'role_id_example' # str | 

    try:
        # Update an organization role
        api_response = api_instance.patch_admin_org_roles_update(org_id, organization_id, role_id)
        print("The response of AdminOrganizationsApi->patch_admin_org_roles_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->patch_admin_org_roles_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **organization_id** | **str**|  | 
 **role_id** | **str**|  | 

### Return type

[**AdminOrgRolesCreateResponse**](AdminOrgRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated role |  -  |
**404** | Organization or role not found |  -  |
**422** | Unable to update role |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_admin_organizations_update**
> AdminOrganizationsGetResponse patch_admin_organizations_update(org_id, organization_id)

Update an organization

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_organizations_get_response import AdminOrganizationsGetResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 
    organization_id = 'organization_id_example' # str | 

    try:
        # Update an organization
        api_response = api_instance.patch_admin_organizations_update(org_id, organization_id)
        print("The response of AdminOrganizationsApi->patch_admin_organizations_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->patch_admin_organizations_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **organization_id** | **str**|  | 

### Return type

[**AdminOrganizationsGetResponse**](AdminOrganizationsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated organization |  -  |
**404** | Organization not found |  -  |
**409** | Data invalid or conflicts with an existing record |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_admin_org_members_update**
> PutAdminOrgMembersUpdateResponse put_admin_org_members_update(org_id, organization_id, user_id)

Update a member's role or status

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_org_members_update_response import PutAdminOrgMembersUpdateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 
    organization_id = 'organization_id_example' # str | 
    user_id = 'user_id_example' # str | 

    try:
        # Update a member's role or status
        api_response = api_instance.put_admin_org_members_update(org_id, organization_id, user_id)
        print("The response of AdminOrganizationsApi->put_admin_org_members_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->put_admin_org_members_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **organization_id** | **str**|  | 
 **user_id** | **str**|  | 

### Return type

[**PutAdminOrgMembersUpdateResponse**](PutAdminOrgMembersUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated member |  -  |
**404** | Organization, member or role not found |  -  |
**422** | Unable to update member role |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_admin_org_roles_update**
> AdminOrgRolesCreateResponse put_admin_org_roles_update(org_id, organization_id, role_id)

Update an organization role

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_org_roles_create_response import AdminOrgRolesCreateResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 
    organization_id = 'organization_id_example' # str | 
    role_id = 'role_id_example' # str | 

    try:
        # Update an organization role
        api_response = api_instance.put_admin_org_roles_update(org_id, organization_id, role_id)
        print("The response of AdminOrganizationsApi->put_admin_org_roles_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->put_admin_org_roles_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **organization_id** | **str**|  | 
 **role_id** | **str**|  | 

### Return type

[**AdminOrgRolesCreateResponse**](AdminOrgRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated role |  -  |
**404** | Organization or role not found |  -  |
**422** | Unable to update role |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_admin_organizations_update**
> AdminOrganizationsGetResponse put_admin_organizations_update(org_id, organization_id)

Update an organization

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_organizations_get_response import AdminOrganizationsGetResponse
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.AdminOrganizationsApi(api_client)
    org_id = 'org_id_example' # str | 
    organization_id = 'organization_id_example' # str | 

    try:
        # Update an organization
        api_response = api_instance.put_admin_organizations_update(org_id, organization_id)
        print("The response of AdminOrganizationsApi->put_admin_organizations_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminOrganizationsApi->put_admin_organizations_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **organization_id** | **str**|  | 

### Return type

[**AdminOrganizationsGetResponse**](AdminOrganizationsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated organization |  -  |
**404** | Organization not found |  -  |
**409** | Data invalid or conflicts with an existing record |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

