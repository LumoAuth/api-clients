# LumoAuth.ApiClient.Api.AdminMcpApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AdminMcpServersCreate**](AdminMcpApi.md#adminmcpserverscreate) | **POST** /orgs/{orgId}/api/v1/admin/mcp/servers | Register an MCP server |
| [**AdminMcpServersDelete**](AdminMcpApi.md#adminmcpserversdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Delete an MCP server |
| [**AdminMcpServersGet**](AdminMcpApi.md#adminmcpserversget) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Get an MCP server |
| [**AdminMcpServersList**](AdminMcpApi.md#adminmcpserverslist) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers | List MCP servers |

<a id="adminmcpserverscreate"></a>
# **AdminMcpServersCreate**
> AdminMcpServersCreateResponse AdminMcpServersCreate (string orgId)

Register an MCP server

Body: name (required) — display name resource_uri (required) — RFC 8707 canonical URI; must be http(s)://, no fragment endpoint_url (optional) — actual MCP endpoint description (optional) scopes_supported (optional) — array OR space/comma-separated string transport (optional) — defaults to \"http_streamable\" auth_mode (optional) — defaults to \"oauth\" token_lifetime (optional, default 3600) — clamped to [60, 86400] allowed_client_ids (optional) — array of this organization's OAuth client ids;     unknown ids are a 422 (never persisted as policy) require_pkce (optional, default true) require_resource_param (optional, default true) require_dpop (optional, default false) — RFC 9449 sender-constrained tokens only

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

