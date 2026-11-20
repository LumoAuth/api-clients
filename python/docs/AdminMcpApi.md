# lumoauth_api_client.AdminMcpApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_mcp_servers_create**](AdminMcpApi.md#admin_mcp_servers_create) | **POST** /orgs/{orgId}/api/v1/admin/mcp/servers | Register an MCP server
[**admin_mcp_servers_delete**](AdminMcpApi.md#admin_mcp_servers_delete) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Delete an MCP server
[**admin_mcp_servers_get**](AdminMcpApi.md#admin_mcp_servers_get) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Get an MCP server
[**admin_mcp_servers_grants_list**](AdminMcpApi.md#admin_mcp_servers_grants_list) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants | List the agents allowed to call tools of an MCP server
[**admin_mcp_servers_grants_remove**](AdminMcpApi.md#admin_mcp_servers_grants_remove) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants/{agentId} | Remove every grant of an agent on an MCP server
[**admin_mcp_servers_grants_set**](AdminMcpApi.md#admin_mcp_servers_grants_set) | **PUT** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants/{agentId} | Set the tools of an MCP server that an agent may call
[**admin_mcp_servers_list**](AdminMcpApi.md#admin_mcp_servers_list) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers | List MCP servers


# **admin_mcp_servers_create**
> AdminMcpServersCreateResponse admin_mcp_servers_create(org_id)

Register an MCP server

Body:
  name (required) — display name
  resource_uri (required) — RFC 8707 canonical URI: https:// (http:// only for
      loopback), no fragment, no user info, not a LumoAuth host, unique
      per organization after normalisation (same rules as the portal)
  endpoint_url (optional) — actual MCP endpoint
  description (optional)
  scopes_supported (optional) — array OR space/comma-separated string; omnibus
      scopes, offline_access and admin/scim scopes are refused (422)
  basic_scopes (optional) — subset of scopes_supported advertised in the
      401 challenge and Protected Resource Metadata; no wildcards
  transport (optional) — defaults to "http_streamable" ("http_sse" is
      deprecated in MCP 2026-07-28)
  auth_mode (optional) — defaults to "oauth"
  token_lifetime (optional, default 3600) — 60..86400, else 422
  tool_authorizer_client_ids (optional) — the MCP server's own OAuth clients
      that may call the per-tool authorization endpoint
  allowed_client_ids (optional) — array of this organization's OAuth client ids;
      unknown ids are a 422 (never persisted as policy)
  require_pkce (optional, default true)
  require_resource_param (optional, default true)
  require_dpop (optional, default false) — RFC 9449 sender-constrained tokens only
  scope_descriptions (optional) — object scope => text for scopes in
      scopes_supported (portal and consent page only), 200 characters each

A server that is not OAuth-protected (auth_mode "none" or transport
"stdio") is stored with the three require_* switches off. Fields that
cannot be configured (include_scope_in_challenge, bearer_methods_supported)
are refused with 400 so that a caller is never told a value was stored.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_mcp_servers_create_response import AdminMcpServersCreateResponse
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
    api_instance = lumoauth_api_client.AdminMcpApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Register an MCP server
        api_response = api_instance.admin_mcp_servers_create(org_id)
        print("The response of AdminMcpApi->admin_mcp_servers_create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminMcpApi->admin_mcp_servers_create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminMcpServersCreateResponse**](AdminMcpServersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | MCP server created |  -  |
**400** | Invalid resource_uri, or a field that cannot be set (include_scope_in_challenge, bearer_methods_supported) |  -  |
**409** | An MCP server with this resource_uri already exists |  -  |
**422** | validation_error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_mcp_servers_delete**
> MessageResponse admin_mcp_servers_delete(org_id, server_id)

Delete an MCP server

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
    api_instance = lumoauth_api_client.AdminMcpApi(api_client)
    org_id = 'org_id_example' # str | 
    server_id = 'server_id_example' # str | 

    try:
        # Delete an MCP server
        api_response = api_instance.admin_mcp_servers_delete(org_id, server_id)
        print("The response of AdminMcpApi->admin_mcp_servers_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminMcpApi->admin_mcp_servers_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **server_id** | **str**|  | 

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
**200** | MCP server deleted |  -  |
**404** | MCP server not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_mcp_servers_get**
> AdminMcpServersGetResponse admin_mcp_servers_get(org_id, server_id)

Get an MCP server

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_mcp_servers_get_response import AdminMcpServersGetResponse
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
    api_instance = lumoauth_api_client.AdminMcpApi(api_client)
    org_id = 'org_id_example' # str | 
    server_id = 'server_id_example' # str | 

    try:
        # Get an MCP server
        api_response = api_instance.admin_mcp_servers_get(org_id, server_id)
        print("The response of AdminMcpApi->admin_mcp_servers_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminMcpApi->admin_mcp_servers_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **server_id** | **str**|  | 

### Return type

[**AdminMcpServersGetResponse**](AdminMcpServersGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | MCP server |  -  |
**404** | MCP server not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_mcp_servers_grants_list**
> AdminMcpServersGrantsListResponse admin_mcp_servers_grants_list(org_id, server_id, agent_id=agent_id)

List the agents allowed to call tools of an MCP server

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_mcp_servers_grants_list_response import AdminMcpServersGrantsListResponse
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
    api_instance = lumoauth_api_client.AdminMcpApi(api_client)
    org_id = 'org_id_example' # str | 
    server_id = 'server_id_example' # str | 
    agent_id = 'agent_id_example' # str | Only the grants of this agent (agentId or numeric id). (optional)

    try:
        # List the agents allowed to call tools of an MCP server
        api_response = api_instance.admin_mcp_servers_grants_list(org_id, server_id, agent_id=agent_id)
        print("The response of AdminMcpApi->admin_mcp_servers_grants_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminMcpApi->admin_mcp_servers_grants_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **server_id** | **str**|  | 
 **agent_id** | **str**| Only the grants of this agent (agentId or numeric id). | [optional] 

### Return type

[**AdminMcpServersGrantsListResponse**](AdminMcpServersGrantsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | One entry per agent that holds a grant on the server. |  -  |
**404** | MCP server or agent not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_mcp_servers_grants_remove**
> AdminMcpServersGrantsRemoveResponse admin_mcp_servers_grants_remove(org_id, server_id, agent_id)

Remove every grant of an agent on an MCP server

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_mcp_servers_grants_remove_response import AdminMcpServersGrantsRemoveResponse
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
    api_instance = lumoauth_api_client.AdminMcpApi(api_client)
    org_id = 'org_id_example' # str | 
    server_id = 'server_id_example' # str | 
    agent_id = 'agent_id_example' # str | 

    try:
        # Remove every grant of an agent on an MCP server
        api_response = api_instance.admin_mcp_servers_grants_remove(org_id, server_id, agent_id)
        print("The response of AdminMcpApi->admin_mcp_servers_grants_remove:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminMcpApi->admin_mcp_servers_grants_remove: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **server_id** | **str**|  | 
 **agent_id** | **str**|  | 

### Return type

[**AdminMcpServersGrantsRemoveResponse**](AdminMcpServersGrantsRemoveResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The agent may no longer call tools of the server. |  -  |
**404** | MCP server or agent not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_mcp_servers_grants_set**
> AdminMcpServersGrantsSetResponse admin_mcp_servers_grants_set(org_id, server_id, agent_id, admin_mcp_servers_grants_set_request)

Set the tools of an MCP server that an agent may call

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_mcp_servers_grants_set_request import AdminMcpServersGrantsSetRequest
from lumoauth_api_client.models.admin_mcp_servers_grants_set_response import AdminMcpServersGrantsSetResponse
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
    api_instance = lumoauth_api_client.AdminMcpApi(api_client)
    org_id = 'org_id_example' # str | 
    server_id = 'server_id_example' # str | 
    agent_id = 'agent_id_example' # str | 
    admin_mcp_servers_grants_set_request = lumoauth_api_client.AdminMcpServersGrantsSetRequest() # AdminMcpServersGrantsSetRequest | 

    try:
        # Set the tools of an MCP server that an agent may call
        api_response = api_instance.admin_mcp_servers_grants_set(org_id, server_id, agent_id, admin_mcp_servers_grants_set_request)
        print("The response of AdminMcpApi->admin_mcp_servers_grants_set:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminMcpApi->admin_mcp_servers_grants_set: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **server_id** | **str**|  | 
 **agent_id** | **str**|  | 
 **admin_mcp_servers_grants_set_request** | [**AdminMcpServersGrantsSetRequest**](AdminMcpServersGrantsSetRequest.md)|  | 

### Return type

[**AdminMcpServersGrantsSetResponse**](AdminMcpServersGrantsSetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The agent&#39;s grants on the server after the change. |  -  |
**400** | Neither tools nor all_tools sent, tools is not a list of names, a name contains / : # or *, is empty or too long, or more than 200 names |  -  |
**403** | plan: granting needs the Fine-grained authorization feature |  -  |
**404** | MCP server or agent not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **admin_mcp_servers_list**
> AdminMcpServersListResponse admin_mcp_servers_list(org_id)

List MCP servers

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.admin_mcp_servers_list_response import AdminMcpServersListResponse
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
    api_instance = lumoauth_api_client.AdminMcpApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # List MCP servers
        api_response = api_instance.admin_mcp_servers_list(org_id)
        print("The response of AdminMcpApi->admin_mcp_servers_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AdminMcpApi->admin_mcp_servers_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**AdminMcpServersListResponse**](AdminMcpServersListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | MCP servers |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

