# lumoauth_api_client.TokenVaultApi

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_connection_token**](TokenVaultApi.md#get_connection_token) | **POST** /orgs/{orgId}/api/v1/agents/me/connections/{connectionId}/token | Fetch a live third-party access token for a connection
[**list_connections**](TokenVaultApi.md#list_connections) | **GET** /orgs/{orgId}/api/v1/agents/me/connections | List the outbound connections this agent may use


# **get_connection_token**
> GetConnectionTokenResponse get_connection_token(org_id, connection_id, get_connection_token_request=get_connection_token_request)

Fetch a live third-party access token for a connection

Agent bearer token required. Returns the vaulted provider access token (refreshing it when needed). Pass {"user_id": "<uuid or email>"} for a user-delegated grant — issued only when that user allowed this agent on their grant. Refresh tokens never cross this boundary. Rate limited per agent.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.get_connection_token_request import GetConnectionTokenRequest
from lumoauth_api_client.models.get_connection_token_response import GetConnectionTokenResponse
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
    api_instance = lumoauth_api_client.TokenVaultApi(api_client)
    org_id = 'org_id_example' # str | 
    connection_id = 'connection_id_example' # str | 
    get_connection_token_request = lumoauth_api_client.GetConnectionTokenRequest() # GetConnectionTokenRequest |  (optional)

    try:
        # Fetch a live third-party access token for a connection
        api_response = api_instance.get_connection_token(org_id, connection_id, get_connection_token_request=get_connection_token_request)
        print("The response of TokenVaultApi->get_connection_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TokenVaultApi->get_connection_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 
 **connection_id** | **str**|  | 
 **get_connection_token_request** | [**GetConnectionTokenRequest**](GetConnectionTokenRequest.md)|  | [optional] 

### Return type

[**GetConnectionTokenResponse**](GetConnectionTokenResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The provider access token. |  -  |
**400** | invalid_user_id. |  -  |
**403** | agent_token_required, cross_tenant, delegation_not_permitted, agent_not_allowed, delegation_not_allowed or connection_disabled. |  -  |
**404** | tenant_not_found, connection_not_found or grant_not_found. |  -  |
**409** | grant_revoked, grant_expired or refresh_failed. |  -  |
**429** | rate_limited. |  -  |
**503** | refresh_in_progress (Retry-After: 2) or provider_unavailable. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_connections**
> ListConnectionsResponse list_connections(org_id)

List the outbound connections this agent may use

Agent bearer token required. Returns every active Token Vault connection that allows the calling agent, with grant status. No secrets are returned.

### Example

* Api Key Authentication (ApiKeyAuth):
* Bearer (JWT) Authentication (BearerAuth):

```python
import lumoauth_api_client
from lumoauth_api_client.models.list_connections_response import ListConnectionsResponse
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
    api_instance = lumoauth_api_client.TokenVaultApi(api_client)
    org_id = 'org_id_example' # str | 

    try:
        # List the outbound connections this agent may use
        api_response = api_instance.list_connections(org_id)
        print("The response of TokenVaultApi->list_connections:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TokenVaultApi->list_connections: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | 

### Return type

[**ListConnectionsResponse**](ListConnectionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Connections available to the agent. connections and data hold the same list (data + pagination is the standard list envelope). |  -  |
**403** | agent_token_required (caller is not an agent) or cross_tenant. |  -  |
**404** | tenant_not_found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

