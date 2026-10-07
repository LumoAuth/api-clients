# lumoauth_api_client.AdminAgentsApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_agents_activate**](AdminAgentsApi.md#admin_agents_activate) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/activate | Activate an agent
[**admin_agents_agents_disable**](AdminAgentsApi.md#admin_agents_agents_disable) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/disable | Disable agent
[**admin_agents_agents_enable**](AdminAgentsApi.md#admin_agents_agents_enable) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/enable | Enable agent
[**admin_agents_agents_rotate_key**](AdminAgentsApi.md#admin_agents_agents_rotate_key) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-key | Rotate agent API key
[**admin_agents_create**](AdminAgentsApi.md#admin_agents_create) | **POST** /orgs/{orgId}/api/v1/admin/agents | Create a new agent
[**admin_agents_deactivate**](AdminAgentsApi.md#admin_agents_deactivate) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/deactivate | Deactivate an agent
[**admin_agents_delete**](AdminAgentsApi.md#admin_agents_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Delete an agent
[**admin_agents_generate_token**](AdminAgentsApi.md#admin_agents_generate_token) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/token | Generate a token for the agent
[**admin_agents_get**](AdminAgentsApi.md#admin_agents_get) | **GET** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Get a single agent by ID or agentId
[**admin_agents_get_scopes**](AdminAgentsApi.md#admin_agents_get_scopes) | **GET** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Get agent scopes/capabilities
[**admin_agents_list**](AdminAgentsApi.md#admin_agents_list) | **GET** /orgs/{orgId}/api/v1/admin/agents | List all agents in the tenant
[**admin_agents_revoke_key**](AdminAgentsApi.md#admin_agents_revoke_key) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/revoke-key | Revoke agent API key (nullify it so it can no longer authenticate)
[**admin_agents_rotate_credentials**](AdminAgentsApi.md#admin_agents_rotate_credentials) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-credentials | Rotate agent credentials
[**admin_agents_set_scopes**](AdminAgentsApi.md#admin_agents_set_scopes) | **PUT** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Update agent scopes/capabilities
[**patch_admin_agents_update**](AdminAgentsApi.md#patch_admin_agents_update) | **PATCH** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent
[**put_admin_agents_update**](AdminAgentsApi.md#put_admin_agents_update) | **PUT** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent


# **admin_agents_activate**
> AdminAgentsActivateResponse admin_agents_activate(org_id, agent_id)

Activate an agent

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_agents_activate_response import AdminAgentsActivateResponse
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
    api_instance = lumoauth_api_client.AdminAgentsApi(api_client)
    org_id = 'org_id_example' # str | 
    agent_id = 'agent_id_example' # str | 

    try:
        # Activate an agent
        api_response = api_instance.admin_agents_activate(org_id, agent_id)
        print("The response of AdminAgentsApi->admin_agents_activate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAgentsApi->admin_agents_activate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **agent_id** | **str**|  | 

### Return type

[**AdminAgentsActivateResponse**](AdminAgentsActivateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Agent activated. |  -  |
**401** | Authentication required. |  -  |
**403** | Admin privileges required. |  -  |
**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_agents_agents_disable**
> AdminAgentsAgentsDisableResponse admin_agents_agents_disable(org_id, agent_id)

Disable agent

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_agents_agents_disable_response import AdminAgentsAgentsDisableResponse
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
    api_instance = lumoauth_api_client.AdminAgentsApi(api_client)
    org_id = 'org_id_example' # str | 
    agent_id = 'agent_id_example' # str | 

    try:
        # Disable agent
        api_response = api_instance.admin_agents_agents_disable(org_id, agent_id)
        print("The response of AdminAgentsApi->admin_agents_agents_disable:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAgentsApi->admin_agents_agents_disable: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **agent_id** | **str**|  | 

### Return type

[**AdminAgentsAgentsDisableResponse**](AdminAgentsAgentsDisableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Agent disabled. |  -  |
**401** | Authentication required. |  -  |
**403** | Admin privileges required. |  -  |
**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_agents_agents_enable**
> AdminAgentsAgentsEnableResponse admin_agents_agents_enable(org_id, agent_id)

Enable agent

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_agents_agents_enable_response import AdminAgentsAgentsEnableResponse
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
    api_instance = lumoauth_api_client.AdminAgentsApi(api_client)
    org_id = 'org_id_example' # str | 
    agent_id = 'agent_id_example' # str | 

    try:
        # Enable agent
        api_response = api_instance.admin_agents_agents_enable(org_id, agent_id)
        print("The response of AdminAgentsApi->admin_agents_agents_enable:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAgentsApi->admin_agents_agents_enable: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **agent_id** | **str**|  | 

### Return type

[**AdminAgentsAgentsEnableResponse**](AdminAgentsAgentsEnableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Agent enabled. |  -  |
**401** | Authentication required. |  -  |
**403** | Admin privileges required. |  -  |
**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_agents_agents_rotate_key**
> AdminAgentsAgentsRotateKeyResponse admin_agents_agents_rotate_key(org_id, agent_id)

Rotate agent API key

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_agents_agents_rotate_key_response import AdminAgentsAgentsRotateKeyResponse
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
    api_instance = lumoauth_api_client.AdminAgentsApi(api_client)
    org_id = 'org_id_example' # str | 
    agent_id = 'agent_id_example' # str | 

    try:
        # Rotate agent API key
        api_response = api_instance.admin_agents_agents_rotate_key(org_id, agent_id)
        print("The response of AdminAgentsApi->admin_agents_agents_rotate_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAgentsApi->admin_agents_agents_rotate_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **agent_id** | **str**|  | 

### Return type

[**AdminAgentsAgentsRotateKeyResponse**](AdminAgentsAgentsRotateKeyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | API key rotated. The new key is returned ONCE and cannot be retrieved again. |  -  |
**401** | Authentication required. |  -  |
**403** | Admin privileges required. |  -  |
**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_agents_create**
> AdminAgentsCreateResponse admin_agents_create(org_id, admin_agents_create_request)

Create a new agent

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_agents_create_request import AdminAgentsCreateRequest
from lumoauth_api_client.models.admin_agents_create_response import AdminAgentsCreateResponse
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
    api_instance = lumoauth_api_client.AdminAgentsApi(api_client)
    org_id = 'org_id_example' # str | 
    admin_agents_create_request = lumoauth_api_client.AdminAgentsCreateRequest() # AdminAgentsCreateRequest | 

    try:
        # Create a new agent
        api_response = api_instance.admin_agents_create(org_id, admin_agents_create_request)
        print("The response of AdminAgentsApi->admin_agents_create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAgentsApi->admin_agents_create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **admin_agents_create_request** | [**AdminAgentsCreateRequest**](AdminAgentsCreateRequest.md)|  | 

### Return type

[**AdminAgentsCreateResponse**](AdminAgentsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Agent created. The generated credential/secret is returned ONCE and cannot be retrieved again. |  -  |
**400** | Missing required field: name. |  -  |
**401** | Authentication required. |  -  |
**403** | Admin privileges required. |  -  |
**404** | Tenant not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_agents_deactivate**
> AdminAgentsDeactivateResponse admin_agents_deactivate(org_id, agent_id)

Deactivate an agent

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_agents_deactivate_response import AdminAgentsDeactivateResponse
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
    api_instance = lumoauth_api_client.AdminAgentsApi(api_client)
    org_id = 'org_id_example' # str | 
    agent_id = 'agent_id_example' # str | 

    try:
        # Deactivate an agent
        api_response = api_instance.admin_agents_deactivate(org_id, agent_id)
        print("The response of AdminAgentsApi->admin_agents_deactivate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAgentsApi->admin_agents_deactivate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **agent_id** | **str**|  | 

### Return type

[**AdminAgentsDeactivateResponse**](AdminAgentsDeactivateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Agent deactivated. |  -  |
**401** | Authentication required. |  -  |
**403** | Admin privileges required. |  -  |
**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_agents_delete**
> AdminAgentsDeleteResponse admin_agents_delete(org_id, agent_id)

Delete an agent

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_agents_delete_response import AdminAgentsDeleteResponse
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
    api_instance = lumoauth_api_client.AdminAgentsApi(api_client)
    org_id = 'org_id_example' # str | 
    agent_id = 'agent_id_example' # str | 

    try:
        # Delete an agent
        api_response = api_instance.admin_agents_delete(org_id, agent_id)
        print("The response of AdminAgentsApi->admin_agents_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAgentsApi->admin_agents_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **agent_id** | **str**|  | 

### Return type

[**AdminAgentsDeleteResponse**](AdminAgentsDeleteResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Agent deleted. |  -  |
**401** | Authentication required. |  -  |
**403** | Admin privileges required. |  -  |
**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_agents_generate_token**
> AdminAgentsGenerateTokenResponse admin_agents_generate_token(org_id, agent_id, admin_agents_generate_token_request=admin_agents_generate_token_request)

Generate a token for the agent

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_agents_generate_token_request import AdminAgentsGenerateTokenRequest
from lumoauth_api_client.models.admin_agents_generate_token_response import AdminAgentsGenerateTokenResponse
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
    api_instance = lumoauth_api_client.AdminAgentsApi(api_client)
    org_id = 'org_id_example' # str | 
    agent_id = 'agent_id_example' # str | 
    admin_agents_generate_token_request = lumoauth_api_client.AdminAgentsGenerateTokenRequest() # AdminAgentsGenerateTokenRequest |  (optional)

    try:
        # Generate a token for the agent
        api_response = api_instance.admin_agents_generate_token(org_id, agent_id, admin_agents_generate_token_request=admin_agents_generate_token_request)
        print("The response of AdminAgentsApi->admin_agents_generate_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAgentsApi->admin_agents_generate_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **agent_id** | **str**|  | 
 **admin_agents_generate_token_request** | [**AdminAgentsGenerateTokenRequest**](AdminAgentsGenerateTokenRequest.md)|  | [optional] 

### Return type

[**AdminAgentsGenerateTokenResponse**](AdminAgentsGenerateTokenResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A generated agent token. The token value is returned ONCE. |  -  |
**400** | Inactive agent, or requested scopes outside the agent&#39;s capabilities. |  -  |
**401** | Authentication required. |  -  |
**403** | Admin privileges required. |  -  |
**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_agents_get**
> AdminAgentsGetResponse admin_agents_get(org_id, agent_id)

Get a single agent by ID or agentId

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_agents_get_response import AdminAgentsGetResponse
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
    api_instance = lumoauth_api_client.AdminAgentsApi(api_client)
    org_id = 'org_id_example' # str | 
    agent_id = 'agent_id_example' # str | 

    try:
        # Get a single agent by ID or agentId
        api_response = api_instance.admin_agents_get(org_id, agent_id)
        print("The response of AdminAgentsApi->admin_agents_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAgentsApi->admin_agents_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **agent_id** | **str**|  | 

### Return type

[**AdminAgentsGetResponse**](AdminAgentsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The agent record. |  -  |
**401** | Authentication required. |  -  |
**403** | Admin privileges required. |  -  |
**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_agents_get_scopes**
> AdminAgentsGetScopesResponse admin_agents_get_scopes(org_id, agent_id)

Get agent scopes/capabilities

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_agents_get_scopes_response import AdminAgentsGetScopesResponse
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
    api_instance = lumoauth_api_client.AdminAgentsApi(api_client)
    org_id = 'org_id_example' # str | 
    agent_id = 'agent_id_example' # str | 

    try:
        # Get agent scopes/capabilities
        api_response = api_instance.admin_agents_get_scopes(org_id, agent_id)
        print("The response of AdminAgentsApi->admin_agents_get_scopes:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAgentsApi->admin_agents_get_scopes: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **agent_id** | **str**|  | 

### Return type

[**AdminAgentsGetScopesResponse**](AdminAgentsGetScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Agent scopes/capabilities. |  -  |
**401** | Authentication required. |  -  |
**403** | Admin privileges required. |  -  |
**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_agents_list**
> AdminAgentsListResponse admin_agents_list(org_id)

List all agents in the tenant

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_agents_list_response import AdminAgentsListResponse
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
    api_instance = lumoauth_api_client.AdminAgentsApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # List all agents in the tenant
        api_response = api_instance.admin_agents_list(org_id)
        print("The response of AdminAgentsApi->admin_agents_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAgentsApi->admin_agents_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminAgentsListResponse**](AdminAgentsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Paginated list of agents. |  -  |
**401** | Authentication required. |  -  |
**403** | Admin privileges required. |  -  |
**404** | Tenant not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_agents_revoke_key**
> AdminAgentsRevokeKeyResponse admin_agents_revoke_key(org_id, agent_id)

Revoke agent API key (nullify it so it can no longer authenticate)

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_agents_revoke_key_response import AdminAgentsRevokeKeyResponse
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
    api_instance = lumoauth_api_client.AdminAgentsApi(api_client)
    org_id = 'org_id_example' # str | 
    agent_id = 'agent_id_example' # str | 

    try:
        # Revoke agent API key (nullify it so it can no longer authenticate)
        api_response = api_instance.admin_agents_revoke_key(org_id, agent_id)
        print("The response of AdminAgentsApi->admin_agents_revoke_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAgentsApi->admin_agents_revoke_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **agent_id** | **str**|  | 

### Return type

[**AdminAgentsRevokeKeyResponse**](AdminAgentsRevokeKeyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Agent API key revoked (nullified). |  -  |
**401** | Authentication required. |  -  |
**403** | Admin privileges required. |  -  |
**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_agents_rotate_credentials**
> AdminAgentsRotateCredentialsResponse admin_agents_rotate_credentials(org_id, agent_id)

Rotate agent credentials

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_agents_rotate_credentials_response import AdminAgentsRotateCredentialsResponse
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
    api_instance = lumoauth_api_client.AdminAgentsApi(api_client)
    org_id = 'org_id_example' # str | 
    agent_id = 'agent_id_example' # str | 

    try:
        # Rotate agent credentials
        api_response = api_instance.admin_agents_rotate_credentials(org_id, agent_id)
        print("The response of AdminAgentsApi->admin_agents_rotate_credentials:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAgentsApi->admin_agents_rotate_credentials: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **agent_id** | **str**|  | 

### Return type

[**AdminAgentsRotateCredentialsResponse**](AdminAgentsRotateCredentialsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Credentials rotated. The new secret is returned ONCE and cannot be retrieved again. |  -  |
**400** | Credentials cannot be rotated for this agent (invalid identity type). |  -  |
**401** | Authentication required. |  -  |
**403** | Admin privileges required. |  -  |
**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_agents_set_scopes**
> AdminAgentsSetScopesResponse admin_agents_set_scopes(org_id, agent_id, admin_agents_set_scopes_request)

Update agent scopes/capabilities

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_agents_set_scopes_request import AdminAgentsSetScopesRequest
from lumoauth_api_client.models.admin_agents_set_scopes_response import AdminAgentsSetScopesResponse
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
    api_instance = lumoauth_api_client.AdminAgentsApi(api_client)
    org_id = 'org_id_example' # str | 
    agent_id = 'agent_id_example' # str | 
    admin_agents_set_scopes_request = lumoauth_api_client.AdminAgentsSetScopesRequest() # AdminAgentsSetScopesRequest | 

    try:
        # Update agent scopes/capabilities
        api_response = api_instance.admin_agents_set_scopes(org_id, agent_id, admin_agents_set_scopes_request)
        print("The response of AdminAgentsApi->admin_agents_set_scopes:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAgentsApi->admin_agents_set_scopes: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **agent_id** | **str**|  | 
 **admin_agents_set_scopes_request** | [**AdminAgentsSetScopesRequest**](AdminAgentsSetScopesRequest.md)|  | 

### Return type

[**AdminAgentsSetScopesResponse**](AdminAgentsSetScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Agent scopes updated. |  -  |
**400** | scopes array is required. |  -  |
**401** | Authentication required. |  -  |
**403** | Admin privileges required. |  -  |
**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_admin_agents_update**
> PutAdminAgentsUpdateResponse patch_admin_agents_update(org_id, agent_id, put_admin_agents_update_request)

Update an existing agent

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_agents_update_request import PutAdminAgentsUpdateRequest
from lumoauth_api_client.models.put_admin_agents_update_response import PutAdminAgentsUpdateResponse
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
    api_instance = lumoauth_api_client.AdminAgentsApi(api_client)
    org_id = 'org_id_example' # str | 
    agent_id = 'agent_id_example' # str | 
    put_admin_agents_update_request = lumoauth_api_client.PutAdminAgentsUpdateRequest() # PutAdminAgentsUpdateRequest | 

    try:
        # Update an existing agent
        api_response = api_instance.patch_admin_agents_update(org_id, agent_id, put_admin_agents_update_request)
        print("The response of AdminAgentsApi->patch_admin_agents_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAgentsApi->patch_admin_agents_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **agent_id** | **str**|  | 
 **put_admin_agents_update_request** | [**PutAdminAgentsUpdateRequest**](PutAdminAgentsUpdateRequest.md)|  | 

### Return type

[**PutAdminAgentsUpdateResponse**](PutAdminAgentsUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Agent updated. |  -  |
**401** | Authentication required. |  -  |
**403** | Admin privileges required. |  -  |
**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_admin_agents_update**
> PutAdminAgentsUpdateResponse put_admin_agents_update(org_id, agent_id, put_admin_agents_update_request)

Update an existing agent

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.put_admin_agents_update_request import PutAdminAgentsUpdateRequest
from lumoauth_api_client.models.put_admin_agents_update_response import PutAdminAgentsUpdateResponse
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
    api_instance = lumoauth_api_client.AdminAgentsApi(api_client)
    org_id = 'org_id_example' # str | 
    agent_id = 'agent_id_example' # str | 
    put_admin_agents_update_request = lumoauth_api_client.PutAdminAgentsUpdateRequest() # PutAdminAgentsUpdateRequest | 

    try:
        # Update an existing agent
        api_response = api_instance.put_admin_agents_update(org_id, agent_id, put_admin_agents_update_request)
        print("The response of AdminAgentsApi->put_admin_agents_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminAgentsApi->put_admin_agents_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **agent_id** | **str**|  | 
 **put_admin_agents_update_request** | [**PutAdminAgentsUpdateRequest**](PutAdminAgentsUpdateRequest.md)|  | 

### Return type

[**PutAdminAgentsUpdateResponse**](PutAdminAgentsUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Agent updated. |  -  |
**401** | Authentication required. |  -  |
**403** | Admin privileges required. |  -  |
**404** | Tenant or agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

