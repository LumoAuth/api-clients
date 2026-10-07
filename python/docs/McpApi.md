# lumoauth_api_client.McpApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_protected_resource_metadata**](McpApi.md#get_protected_resource_metadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource/mcp/{serverId} | MCP server protected resource metadata (RFC 9728)
[**get_protected_resource_metadata_root**](McpApi.md#get_protected_resource_metadata_root) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource | Organization-level protected resource metadata (RFC 9728)
[**get_server**](McpApi.md#get_server) | **GET** /orgs/{orgId}/api/v1/mcp/servers/{serverId} | REST API: Get a specific MCP server.
[**get_server_challenge**](McpApi.md#get_server_challenge) | **GET** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP server authorization challenge
[**list_servers**](McpApi.md#list_servers) | **GET** /orgs/{orgId}/api/v1/mcp/servers | REST API: List MCP servers for a tenant.
[**post_server_challenge**](McpApi.md#post_server_challenge) | **POST** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP server authorization challenge (POST)


# **get_protected_resource_metadata**
> ProtectedResourceMetadata get_protected_resource_metadata(org_id, server_id)

MCP server protected resource metadata (RFC 9728)

Public discovery document for one MCP server, served both under the organization prefix and at the root-level well-known suffix form (MCP 2025-11-25). Cacheable (Cache-Control: public, max-age=3600).

### Example


```python
import lumoauth_api_client
from lumoauth_api_client.models.protected_resource_metadata import ProtectedResourceMetadata
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)


# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.McpApi(api_client)
    org_id = 'org_id_example' # str | 
    server_id = 'server_id_example' # str | 

    try:
        # MCP server protected resource metadata (RFC 9728)
        api_response = api_instance.get_protected_resource_metadata(org_id, server_id)
        print("The response of McpApi->get_protected_resource_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling McpApi->get_protected_resource_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **server_id** | **str**|  | 

### Return type

[**ProtectedResourceMetadata**](ProtectedResourceMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Protected resource metadata. scopes_supported only when the server declares scopes; the dpop_* members only when the server requires DPoP-bound tokens. Any additional admin-supplied metadata fields are merged in (they can never override resource, authorization_servers, bearer_methods_supported or scopes_supported). |  -  |
**400** | not_applicable — the MCP server does not require authorization. |  -  |
**404** | not_found — unknown organization, or unknown / inactive MCP server. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_protected_resource_metadata_root**
> GetProtectedResourceMetadataRoot200Response get_protected_resource_metadata_root(org_id)

Organization-level protected resource metadata (RFC 9728)

Root fallback: with exactly one protected MCP server its metadata document is returned directly; with several, a list of resources pointing at their per-server metadata URLs. Public and cacheable (Cache-Control: public, max-age=3600).

### Example


```python
import lumoauth_api_client
from lumoauth_api_client.models.get_protected_resource_metadata_root200_response import GetProtectedResourceMetadataRoot200Response
from lumoauth_api_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://app.lumoauth.dev
# See configuration.py for a list of all supported configuration parameters.
configuration = lumoauth_api_client.Configuration(
    host = "https://app.lumoauth.dev"
)


# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.McpApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # Organization-level protected resource metadata (RFC 9728)
        api_response = api_instance.get_protected_resource_metadata_root(org_id)
        print("The response of McpApi->get_protected_resource_metadata_root:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling McpApi->get_protected_resource_metadata_root: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**GetProtectedResourceMetadataRoot200Response**](GetProtectedResourceMetadataRoot200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Either a single server&#39;s protected resource metadata (same shape as the per-server endpoint) or a resource list. |  -  |
**404** | not_found — unknown organization, or no protected MCP servers configured. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_server**
> GetServerResponse get_server(org_id, server_id)

REST API: Get a specific MCP server.

Management endpoint — requires tenant admin authentication.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.get_server_response import GetServerResponse
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
    api_instance = lumoauth_api_client.McpApi(api_client)
    org_id = 'org_id_example' # str | 
    server_id = 'server_id_example' # str | 

    try:
        # REST API: Get a specific MCP server.
        api_response = api_instance.get_server(org_id, server_id)
        print("The response of McpApi->get_server:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling McpApi->get_server: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **server_id** | **str**|  | 

### Return type

[**GetServerResponse**](GetServerResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A single MCP server with discovery metadata. |  -  |
**403** | Caller lacks the settings.manage permission. |  -  |
**404** | Tenant or MCP server not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_server_challenge**
> GetServerChallengeResponse get_server_challenge(org_id, server_id)

Simulated MCP server authorization challenge

Test endpoint that behaves like the MCP server's protected endpoint: validates the presented Bearer / DPoP access token (audience, scopes, DPoP binding) or answers the MCP-spec 401 challenge pointing at the protected resource metadata.

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.get_server_challenge_response import GetServerChallengeResponse
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

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.McpApi(api_client)
    org_id = 'org_id_example' # str | 
    server_id = 'server_id_example' # str | 

    try:
        # Simulated MCP server authorization challenge
        api_response = api_instance.get_server_challenge(org_id, server_id)
        print("The response of McpApi->get_server_challenge:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling McpApi->get_server_challenge: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **server_id** | **str**|  | 

### Return type

[**GetServerChallengeResponse**](GetServerChallengeResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The access token is valid for this MCP server. |  -  |
**401** | unauthorized / invalid_token with the MCP WWW-Authenticate challenge (resource_metadata, and scope when the server includes it). |  * WWW-Authenticate -  <br>  |
**403** | insufficient_scope — the token lacks required scopes (listed in scope and in WWW-Authenticate). |  * WWW-Authenticate -  <br>  |
**404** | not_found — unknown organization, or unknown / inactive MCP server. |  -  |
**429** | too_many_requests (Retry-After header). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_servers**
> ListServersResponse list_servers(org_id)

REST API: List MCP servers for a tenant.

Management endpoint — requires tenant admin authentication.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.list_servers_response import ListServersResponse
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
    api_instance = lumoauth_api_client.McpApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # REST API: List MCP servers for a tenant.
        api_response = api_instance.list_servers(org_id)
        print("The response of McpApi->list_servers:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling McpApi->list_servers: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**ListServersResponse**](ListServersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of active MCP servers for the tenant. |  -  |
**403** | Caller lacks the settings.manage permission. |  -  |
**404** | Tenant not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_server_challenge**
> GetServerChallengeResponse post_server_challenge(org_id, server_id)

Simulated MCP server authorization challenge (POST)

Identical to GET; the HTTP method is only recorded in the audit trail.

### Example

* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.get_server_challenge_response import GetServerChallengeResponse
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

# Configure Bearer authorization (JWT): BearerAuth
configuration = lumoauth_api_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with lumoauth_api_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = lumoauth_api_client.McpApi(api_client)
    org_id = 'org_id_example' # str | 
    server_id = 'server_id_example' # str | 

    try:
        # Simulated MCP server authorization challenge (POST)
        api_response = api_instance.post_server_challenge(org_id, server_id)
        print("The response of McpApi->post_server_challenge:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling McpApi->post_server_challenge: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **server_id** | **str**|  | 

### Return type

[**GetServerChallengeResponse**](GetServerChallengeResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The access token is valid for this MCP server. |  -  |
**401** | unauthorized / invalid_token with the MCP WWW-Authenticate challenge (resource_metadata, and scope when the server includes it). |  * WWW-Authenticate -  <br>  |
**403** | insufficient_scope — the token lacks required scopes (listed in scope and in WWW-Authenticate). |  * WWW-Authenticate -  <br>  |
**404** | not_found — unknown organization, or unknown / inactive MCP server. |  -  |
**429** | too_many_requests (Retry-After header). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

