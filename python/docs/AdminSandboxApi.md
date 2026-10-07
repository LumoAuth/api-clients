# lumoauth_api_client.AdminSandboxApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_sandbox_destroy**](AdminSandboxApi.md#admin_sandbox_destroy) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/{sandboxSlug}/destroy | Destroy a sandbox tenant
[**admin_sandbox_list**](AdminSandboxApi.md#admin_sandbox_list) | **GET** /orgs/{orgId}/api/v1/admin/sandbox | List the caller&#39;s sandbox tenants
[**admin_sandbox_spawn**](AdminSandboxApi.md#admin_sandbox_spawn) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/spawn | Spawn a sandbox tenant


# **admin_sandbox_destroy**
> MessageResponse admin_sandbox_destroy(org_id, sandbox_slug)

Destroy a sandbox tenant

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
    api_instance = lumoauth_api_client.AdminSandboxApi(api_client)
    org_id = 'org_id_example' # str | 
    sandbox_slug = 'sandbox_slug_example' # str | 

    try:
        # Destroy a sandbox tenant
        api_response = api_instance.admin_sandbox_destroy(org_id, sandbox_slug)
        print("The response of AdminSandboxApi->admin_sandbox_destroy:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSandboxApi->admin_sandbox_destroy: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **sandbox_slug** | **str**|  | 

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
**200** | Sandbox destroyed |  -  |
**404** | Sandbox not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_sandbox_list**
> AdminSandboxListResponse admin_sandbox_list(org_id)

List the caller's sandbox tenants

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_sandbox_list_response import AdminSandboxListResponse
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
    api_instance = lumoauth_api_client.AdminSandboxApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # List the caller's sandbox tenants
        api_response = api_instance.admin_sandbox_list(org_id)
        print("The response of AdminSandboxApi->admin_sandbox_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSandboxApi->admin_sandbox_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminSandboxListResponse**](AdminSandboxListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Sandboxes |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_sandbox_spawn**
> AdminSandboxSpawnResponse admin_sandbox_spawn(org_id, admin_sandbox_spawn_request=admin_sandbox_spawn_request)

Spawn a sandbox tenant

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_sandbox_spawn_request import AdminSandboxSpawnRequest
from lumoauth_api_client.models.admin_sandbox_spawn_response import AdminSandboxSpawnResponse
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
    api_instance = lumoauth_api_client.AdminSandboxApi(api_client)
    org_id = 'org_id_example' # str | 
    admin_sandbox_spawn_request = lumoauth_api_client.AdminSandboxSpawnRequest() # AdminSandboxSpawnRequest |  (optional)

    try:
        # Spawn a sandbox tenant
        api_response = api_instance.admin_sandbox_spawn(org_id, admin_sandbox_spawn_request=admin_sandbox_spawn_request)
        print("The response of AdminSandboxApi->admin_sandbox_spawn:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminSandboxApi->admin_sandbox_spawn: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **admin_sandbox_spawn_request** | [**AdminSandboxSpawnRequest**](AdminSandboxSpawnRequest.md)|  | [optional] 

### Return type

[**AdminSandboxSpawnResponse**](AdminSandboxSpawnResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Sandbox created |  -  |
**429** | Per-owner active-sandbox cap reached |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

