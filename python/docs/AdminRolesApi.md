# lumoauth_api_client.AdminRolesApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_roles_add_permissions**](AdminRolesApi.md#admin_roles_add_permissions) | **POST** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Add permission(s) to a role
[**admin_roles_add_user**](AdminRolesApi.md#admin_roles_add_user) | **POST** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users | Assign a user to a role
[**admin_roles_create**](AdminRolesApi.md#admin_roles_create) | **POST** /orgs/{orgId}/api/v1/admin/roles | Create a new role
[**admin_roles_delete**](AdminRolesApi.md#admin_roles_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Delete a role
[**admin_roles_get**](AdminRolesApi.md#admin_roles_get) | **GET** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Get a single role by ID or slug
[**admin_roles_get_permissions**](AdminRolesApi.md#admin_roles_get_permissions) | **GET** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Get role permissions
[**admin_roles_get_users**](AdminRolesApi.md#admin_roles_get_users) | **GET** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users | Get users assigned to a role
[**admin_roles_list**](AdminRolesApi.md#admin_roles_list) | **GET** /orgs/{orgId}/api/v1/admin/roles | List all roles in the tenant
[**admin_roles_remove_permission**](AdminRolesApi.md#admin_roles_remove_permission) | **DELETE** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions/{permissionId} | Remove a permission from a role
[**admin_roles_remove_user**](AdminRolesApi.md#admin_roles_remove_user) | **DELETE** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users/{userId} | Remove a user from a role
[**admin_roles_update_permissions**](AdminRolesApi.md#admin_roles_update_permissions) | **PUT** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Update role permissions (replaces all)
[**patch_admin_roles_update**](AdminRolesApi.md#patch_admin_roles_update) | **PATCH** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Update an existing role
[**put_admin_roles_update**](AdminRolesApi.md#put_admin_roles_update) | **PUT** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Update an existing role


# **admin_roles_add_permissions**
> MessageResponse admin_roles_add_permissions(org_id, role_id)

Add permission(s) to a role

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
    api_instance = lumoauth_api_client.AdminRolesApi(api_client)
    org_id = 'org_id_example' # str | 
    role_id = 'role_id_example' # str | 

    try:
        # Add permission(s) to a role
        api_response = api_instance.admin_roles_add_permissions(org_id, role_id)
        print("The response of AdminRolesApi->admin_roles_add_permissions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminRolesApi->admin_roles_add_permissions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
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
**200** | Added; message reports how many permissions were added |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_roles_add_user**
> MessageResponse admin_roles_add_user(org_id, role_id)

Assign a user to a role

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
    api_instance = lumoauth_api_client.AdminRolesApi(api_client)
    org_id = 'org_id_example' # str | 
    role_id = 'role_id_example' # str | 

    try:
        # Assign a user to a role
        api_response = api_instance.admin_roles_add_user(org_id, role_id)
        print("The response of AdminRolesApi->admin_roles_add_user:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminRolesApi->admin_roles_add_user: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
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
**200** | Assigned |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_roles_create**
> AdminRolesCreateResponse admin_roles_create(org_id)

Create a new role

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_roles_create_response import AdminRolesCreateResponse
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
    api_instance = lumoauth_api_client.AdminRolesApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Create a new role
        api_response = api_instance.admin_roles_create(org_id)
        print("The response of AdminRolesApi->admin_roles_create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminRolesApi->admin_roles_create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminRolesCreateResponse**](AdminRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created role |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_roles_delete**
> MessageResponse admin_roles_delete(org_id, role_id)

Delete a role

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
    api_instance = lumoauth_api_client.AdminRolesApi(api_client)
    org_id = 'org_id_example' # str | 
    role_id = 'role_id_example' # str | 

    try:
        # Delete a role
        api_response = api_instance.admin_roles_delete(org_id, role_id)
        print("The response of AdminRolesApi->admin_roles_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminRolesApi->admin_roles_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
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
**200** | Deleted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_roles_get**
> AdminRolesGetResponse admin_roles_get(org_id, role_id)

Get a single role by ID or slug

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_roles_get_response import AdminRolesGetResponse
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
    api_instance = lumoauth_api_client.AdminRolesApi(api_client)
    org_id = 'org_id_example' # str | 
    role_id = 'role_id_example' # str | 

    try:
        # Get a single role by ID or slug
        api_response = api_instance.admin_roles_get(org_id, role_id)
        print("The response of AdminRolesApi->admin_roles_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminRolesApi->admin_roles_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **role_id** | **str**|  | 

### Return type

[**AdminRolesGetResponse**](AdminRolesGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Role |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_roles_get_permissions**
> AdminRolesGetPermissionsResponse admin_roles_get_permissions(org_id, role_id)

Get role permissions

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_roles_get_permissions_response import AdminRolesGetPermissionsResponse
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
    api_instance = lumoauth_api_client.AdminRolesApi(api_client)
    org_id = 'org_id_example' # str | 
    role_id = 'role_id_example' # str | 

    try:
        # Get role permissions
        api_response = api_instance.admin_roles_get_permissions(org_id, role_id)
        print("The response of AdminRolesApi->admin_roles_get_permissions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminRolesApi->admin_roles_get_permissions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **role_id** | **str**|  | 

### Return type

[**AdminRolesGetPermissionsResponse**](AdminRolesGetPermissionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Role permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_roles_get_users**
> AdminRolesGetUsersResponse admin_roles_get_users(org_id, role_id)

Get users assigned to a role

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_roles_get_users_response import AdminRolesGetUsersResponse
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
    api_instance = lumoauth_api_client.AdminRolesApi(api_client)
    org_id = 'org_id_example' # str | 
    role_id = 'role_id_example' # str | 

    try:
        # Get users assigned to a role
        api_response = api_instance.admin_roles_get_users(org_id, role_id)
        print("The response of AdminRolesApi->admin_roles_get_users:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminRolesApi->admin_roles_get_users: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **role_id** | **str**|  | 

### Return type

[**AdminRolesGetUsersResponse**](AdminRolesGetUsersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Role users |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_roles_list**
> AdminRolesListResponse admin_roles_list(org_id)

List all roles in the tenant

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_roles_list_response import AdminRolesListResponse
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
    api_instance = lumoauth_api_client.AdminRolesApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # List all roles in the tenant
        api_response = api_instance.admin_roles_list(org_id)
        print("The response of AdminRolesApi->admin_roles_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminRolesApi->admin_roles_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminRolesListResponse**](AdminRolesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Roles |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_roles_remove_permission**
> MessageResponse admin_roles_remove_permission(org_id, role_id, permission_id)

Remove a permission from a role

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
    api_instance = lumoauth_api_client.AdminRolesApi(api_client)
    org_id = 'org_id_example' # str | 
    role_id = 'role_id_example' # str | 
    permission_id = 'permission_id_example' # str | 

    try:
        # Remove a permission from a role
        api_response = api_instance.admin_roles_remove_permission(org_id, role_id, permission_id)
        print("The response of AdminRolesApi->admin_roles_remove_permission:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminRolesApi->admin_roles_remove_permission: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **role_id** | **str**|  | 
 **permission_id** | **str**|  | 

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
**200** | Removed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_roles_remove_user**
> MessageResponse admin_roles_remove_user(org_id, role_id, user_id)

Remove a user from a role

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
    api_instance = lumoauth_api_client.AdminRolesApi(api_client)
    org_id = 'org_id_example' # str | 
    role_id = 'role_id_example' # str | 
    user_id = 'user_id_example' # str | 

    try:
        # Remove a user from a role
        api_response = api_instance.admin_roles_remove_user(org_id, role_id, user_id)
        print("The response of AdminRolesApi->admin_roles_remove_user:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminRolesApi->admin_roles_remove_user: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **role_id** | **str**|  | 
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
**200** | Removed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_roles_update_permissions**
> AdminRolesCreateResponse admin_roles_update_permissions(org_id, role_id)

Update role permissions (replaces all)

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_roles_create_response import AdminRolesCreateResponse
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
    api_instance = lumoauth_api_client.AdminRolesApi(api_client)
    org_id = 'org_id_example' # str | 
    role_id = 'role_id_example' # str | 

    try:
        # Update role permissions (replaces all)
        api_response = api_instance.admin_roles_update_permissions(org_id, role_id)
        print("The response of AdminRolesApi->admin_roles_update_permissions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminRolesApi->admin_roles_update_permissions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **role_id** | **str**|  | 

### Return type

[**AdminRolesCreateResponse**](AdminRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated role |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_admin_roles_update**
> AdminRolesCreateResponse patch_admin_roles_update(org_id, role_id)

Update an existing role

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_roles_create_response import AdminRolesCreateResponse
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
    api_instance = lumoauth_api_client.AdminRolesApi(api_client)
    org_id = 'org_id_example' # str | 
    role_id = 'role_id_example' # str | 

    try:
        # Update an existing role
        api_response = api_instance.patch_admin_roles_update(org_id, role_id)
        print("The response of AdminRolesApi->patch_admin_roles_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminRolesApi->patch_admin_roles_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **role_id** | **str**|  | 

### Return type

[**AdminRolesCreateResponse**](AdminRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated role |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_admin_roles_update**
> AdminRolesCreateResponse put_admin_roles_update(org_id, role_id)

Update an existing role

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_roles_create_response import AdminRolesCreateResponse
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
    api_instance = lumoauth_api_client.AdminRolesApi(api_client)
    org_id = 'org_id_example' # str | 
    role_id = 'role_id_example' # str | 

    try:
        # Update an existing role
        api_response = api_instance.put_admin_roles_update(org_id, role_id)
        print("The response of AdminRolesApi->put_admin_roles_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminRolesApi->put_admin_roles_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **role_id** | **str**|  | 

### Return type

[**AdminRolesCreateResponse**](AdminRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated role |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

