# LumoAuth.ApiClient.Api.AdminMcpApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AdminMcpServersCreate**](AdminMcpApi.md#adminmcpserverscreate) | **POST** /orgs/{orgId}/api/v1/admin/mcp/servers | Register an MCP server |
| [**AdminMcpServersDelete**](AdminMcpApi.md#adminmcpserversdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Delete an MCP server |
| [**AdminMcpServersGet**](AdminMcpApi.md#adminmcpserversget) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Get an MCP server |
| [**AdminMcpServersGrantsList**](AdminMcpApi.md#adminmcpserversgrantslist) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants | List the agents allowed to call tools of an MCP server |
| [**AdminMcpServersGrantsRemove**](AdminMcpApi.md#adminmcpserversgrantsremove) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants/{agentId} | Remove every grant of an agent on an MCP server |
| [**AdminMcpServersGrantsSet**](AdminMcpApi.md#adminmcpserversgrantsset) | **PUT** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants/{agentId} | Set the tools of an MCP server that an agent may call |
| [**AdminMcpServersList**](AdminMcpApi.md#adminmcpserverslist) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers | List MCP servers |

<a id="adminmcpserverscreate"></a>
# **AdminMcpServersCreate**
> AdminMcpServersCreateResponse AdminMcpServersCreate (string orgId)

Register an MCP server

Body:   name (required) — display name   resource_uri (required) — RFC 8707 canonical URI: https:// (http:// only for       loopback), no fragment, no user info, not a LumoAuth host, unique       per organization after normalisation (same rules as the portal)   endpoint_url (optional) — actual MCP endpoint   description (optional)   scopes_supported (optional) — array OR space/comma-separated string; omnibus       scopes, offline_access and admin/scim scopes are refused (422)   basic_scopes (optional) — subset of scopes_supported advertised in the       401 challenge and Protected Resource Metadata; no wildcards   transport (optional) — defaults to \"http_streamable\" (\"http_sse\" is       deprecated in MCP 2026-07-28)   auth_mode (optional) — defaults to \"oauth\"   token_lifetime (optional, default 3600) — 60..86400, else 422   tool_authorizer_client_ids (optional) — the MCP server's own OAuth clients       that may call the per-tool authorization endpoint   allowed_client_ids (optional) — array of this organization's OAuth client ids;       unknown ids are a 422 (never persisted as policy)   require_pkce (optional, default true)   require_resource_param (optional, default true)   require_dpop (optional, default false) — RFC 9449 sender-constrained tokens only   scope_descriptions (optional) — object scope => text for scopes in       scopes_supported (portal and consent page only), 200 characters each  A server that is not OAuth-protected (auth_mode \"none\" or transport \"stdio\") is stored with the three require_* switches off. Fields that cannot be configured (include_scope_in_challenge, bearer_methods_supported) are refused with 400 so that a caller is never told a value was stored.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class AdminMcpServersCreateExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AdminMcpApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // Register an MCP server
                AdminMcpServersCreateResponse result = apiInstance.AdminMcpServersCreate(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminMcpApi.AdminMcpServersCreate: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AdminMcpServersCreateWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Register an MCP server
    ApiResponse<AdminMcpServersCreateResponse> response = apiInstance.AdminMcpServersCreateWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminMcpApi.AdminMcpServersCreateWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

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
| **201** | MCP server created |  -  |
| **400** | Invalid resource_uri, or a field that cannot be set (include_scope_in_challenge, bearer_methods_supported) |  -  |
| **409** | An MCP server with this resource_uri already exists |  -  |
| **422** | validation_error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="adminmcpserversdelete"></a>
# **AdminMcpServersDelete**
> MessageResponse AdminMcpServersDelete (string orgId, string serverId)

Delete an MCP server

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class AdminMcpServersDeleteExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AdminMcpApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var serverId = "serverId_example";  // string | 

            try
            {
                // Delete an MCP server
                MessageResponse result = apiInstance.AdminMcpServersDelete(orgId, serverId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminMcpApi.AdminMcpServersDelete: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AdminMcpServersDeleteWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Delete an MCP server
    ApiResponse<MessageResponse> response = apiInstance.AdminMcpServersDeleteWithHttpInfo(orgId, serverId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminMcpApi.AdminMcpServersDeleteWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **serverId** | **string** |  |  |

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
| **200** | MCP server deleted |  -  |
| **404** | MCP server not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="adminmcpserversget"></a>
# **AdminMcpServersGet**
> AdminMcpServersGetResponse AdminMcpServersGet (string orgId, string serverId)

Get an MCP server

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class AdminMcpServersGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AdminMcpApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var serverId = "serverId_example";  // string | 

            try
            {
                // Get an MCP server
                AdminMcpServersGetResponse result = apiInstance.AdminMcpServersGet(orgId, serverId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminMcpApi.AdminMcpServersGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AdminMcpServersGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get an MCP server
    ApiResponse<AdminMcpServersGetResponse> response = apiInstance.AdminMcpServersGetWithHttpInfo(orgId, serverId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminMcpApi.AdminMcpServersGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **serverId** | **string** |  |  |

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
| **200** | MCP server |  -  |
| **404** | MCP server not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="adminmcpserversgrantslist"></a>
# **AdminMcpServersGrantsList**
> AdminMcpServersGrantsListResponse AdminMcpServersGrantsList (string orgId, string serverId, string? agentId = null)

List the agents allowed to call tools of an MCP server

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class AdminMcpServersGrantsListExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AdminMcpApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var serverId = "serverId_example";  // string | 
            var agentId = "agentId_example";  // string? | Only the grants of this agent (agentId or numeric id). (optional) 

            try
            {
                // List the agents allowed to call tools of an MCP server
                AdminMcpServersGrantsListResponse result = apiInstance.AdminMcpServersGrantsList(orgId, serverId, agentId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminMcpApi.AdminMcpServersGrantsList: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AdminMcpServersGrantsListWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List the agents allowed to call tools of an MCP server
    ApiResponse<AdminMcpServersGrantsListResponse> response = apiInstance.AdminMcpServersGrantsListWithHttpInfo(orgId, serverId, agentId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminMcpApi.AdminMcpServersGrantsListWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **serverId** | **string** |  |  |
| **agentId** | **string?** | Only the grants of this agent (agentId or numeric id). | [optional]  |

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
| **200** | One entry per agent that holds a grant on the server. |  -  |
| **404** | MCP server or agent not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="adminmcpserversgrantsremove"></a>
# **AdminMcpServersGrantsRemove**
> AdminMcpServersGrantsRemoveResponse AdminMcpServersGrantsRemove (string orgId, string serverId, string agentId)

Remove every grant of an agent on an MCP server

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class AdminMcpServersGrantsRemoveExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AdminMcpApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var serverId = "serverId_example";  // string | 
            var agentId = "agentId_example";  // string | 

            try
            {
                // Remove every grant of an agent on an MCP server
                AdminMcpServersGrantsRemoveResponse result = apiInstance.AdminMcpServersGrantsRemove(orgId, serverId, agentId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminMcpApi.AdminMcpServersGrantsRemove: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AdminMcpServersGrantsRemoveWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Remove every grant of an agent on an MCP server
    ApiResponse<AdminMcpServersGrantsRemoveResponse> response = apiInstance.AdminMcpServersGrantsRemoveWithHttpInfo(orgId, serverId, agentId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminMcpApi.AdminMcpServersGrantsRemoveWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **serverId** | **string** |  |  |
| **agentId** | **string** |  |  |

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
| **200** | The agent may no longer call tools of the server. |  -  |
| **404** | MCP server or agent not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="adminmcpserversgrantsset"></a>
# **AdminMcpServersGrantsSet**
> AdminMcpServersGrantsSetResponse AdminMcpServersGrantsSet (string orgId, string serverId, string agentId, AdminMcpServersGrantsSetRequest adminMcpServersGrantsSetRequest)

Set the tools of an MCP server that an agent may call

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class AdminMcpServersGrantsSetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AdminMcpApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var serverId = "serverId_example";  // string | 
            var agentId = "agentId_example";  // string | 
            var adminMcpServersGrantsSetRequest = new AdminMcpServersGrantsSetRequest(); // AdminMcpServersGrantsSetRequest | 

            try
            {
                // Set the tools of an MCP server that an agent may call
                AdminMcpServersGrantsSetResponse result = apiInstance.AdminMcpServersGrantsSet(orgId, serverId, agentId, adminMcpServersGrantsSetRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminMcpApi.AdminMcpServersGrantsSet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AdminMcpServersGrantsSetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Set the tools of an MCP server that an agent may call
    ApiResponse<AdminMcpServersGrantsSetResponse> response = apiInstance.AdminMcpServersGrantsSetWithHttpInfo(orgId, serverId, agentId, adminMcpServersGrantsSetRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminMcpApi.AdminMcpServersGrantsSetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **serverId** | **string** |  |  |
| **agentId** | **string** |  |  |
| **adminMcpServersGrantsSetRequest** | [**AdminMcpServersGrantsSetRequest**](AdminMcpServersGrantsSetRequest.md) |  |  |

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
| **200** | The agent&#39;s grants on the server after the change. |  -  |
| **400** | Neither tools nor all_tools sent, tools is not a list of names, a name contains / : # or *, is empty or too long, or more than 200 names |  -  |
| **403** | plan: granting needs the Fine-grained authorization feature |  -  |
| **404** | MCP server or agent not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="adminmcpserverslist"></a>
# **AdminMcpServersList**
> AdminMcpServersListResponse AdminMcpServersList (string orgId)

List MCP servers

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using LumoAuth.ApiClient.Api;
using LumoAuth.ApiClient.Client;
using LumoAuth.ApiClient.Model;

namespace Example
{
    public class AdminMcpServersListExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure API key authorization: ApiKeyAuth
            config.AddApiKey("X-API-Key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("X-API-Key", "Bearer");
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AdminMcpApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // List MCP servers
                AdminMcpServersListResponse result = apiInstance.AdminMcpServersList(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminMcpApi.AdminMcpServersList: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AdminMcpServersListWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List MCP servers
    ApiResponse<AdminMcpServersListResponse> response = apiInstance.AdminMcpServersListWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminMcpApi.AdminMcpServersListWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

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
| **200** | MCP servers |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

