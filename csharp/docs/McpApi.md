# LumoAuth.ApiClient.Api.McpApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetProtectedResourceMetadata**](McpApi.md#getprotectedresourcemetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource/mcp/{serverId} | MCP server protected resource metadata (RFC 9728) |
| [**GetProtectedResourceMetadataRoot**](McpApi.md#getprotectedresourcemetadataroot) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource | Organization-level protected resource metadata (RFC 9728) |
| [**GetServer**](McpApi.md#getserver) | **GET** /orgs/{orgId}/api/v1/mcp/servers/{serverId} | REST API: Get a specific MCP server. |
| [**GetServerChallenge**](McpApi.md#getserverchallenge) | **GET** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP server authorization challenge |
| [**ListServers**](McpApi.md#listservers) | **GET** /orgs/{orgId}/api/v1/mcp/servers | REST API: List MCP servers for a tenant. |
| [**PostServerChallenge**](McpApi.md#postserverchallenge) | **POST** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP server authorization challenge (POST) |

<a id="getprotectedresourcemetadata"></a>
# **GetProtectedResourceMetadata**
> ProtectedResourceMetadata GetProtectedResourceMetadata (string orgId, string serverId)

MCP server protected resource metadata (RFC 9728)

Public discovery document for one MCP server, served both under the organization prefix and at the root-level well-known suffix form (MCP 2025-11-25). Cacheable (Cache-Control: public, max-age=3600).

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
    public class GetProtectedResourceMetadataExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new McpApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var serverId = "serverId_example";  // string | 

            try
            {
                // MCP server protected resource metadata (RFC 9728)
                ProtectedResourceMetadata result = apiInstance.GetProtectedResourceMetadata(orgId, serverId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling McpApi.GetProtectedResourceMetadata: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetProtectedResourceMetadataWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // MCP server protected resource metadata (RFC 9728)
    ApiResponse<ProtectedResourceMetadata> response = apiInstance.GetProtectedResourceMetadataWithHttpInfo(orgId, serverId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling McpApi.GetProtectedResourceMetadataWithHttpInfo: " + e.Message);
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

[**ProtectedResourceMetadata**](ProtectedResourceMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Protected resource metadata. scopes_supported only when the server declares scopes; the dpop_* members only when the server requires DPoP-bound tokens. Any additional admin-supplied metadata fields are merged in (they can never override resource, authorization_servers, bearer_methods_supported or scopes_supported). |  -  |
| **400** | not_applicable — the MCP server does not require authorization. |  -  |
| **404** | not_found — unknown organization, or unknown / inactive MCP server. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getprotectedresourcemetadataroot"></a>
# **GetProtectedResourceMetadataRoot**
> GetProtectedResourceMetadataRoot200Response GetProtectedResourceMetadataRoot (string orgId)

Organization-level protected resource metadata (RFC 9728)

Root fallback: with exactly one protected MCP server its metadata document is returned directly; with several, a list of resources pointing at their per-server metadata URLs. Public and cacheable (Cache-Control: public, max-age=3600).

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
    public class GetProtectedResourceMetadataRootExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new McpApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // Organization-level protected resource metadata (RFC 9728)
                GetProtectedResourceMetadataRoot200Response result = apiInstance.GetProtectedResourceMetadataRoot(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling McpApi.GetProtectedResourceMetadataRoot: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetProtectedResourceMetadataRootWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Organization-level protected resource metadata (RFC 9728)
    ApiResponse<GetProtectedResourceMetadataRoot200Response> response = apiInstance.GetProtectedResourceMetadataRootWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling McpApi.GetProtectedResourceMetadataRootWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

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
| **200** | Either a single server&#39;s protected resource metadata (same shape as the per-server endpoint) or a resource list. |  -  |
| **404** | not_found — unknown organization, or no protected MCP servers configured. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getserver"></a>
# **GetServer**
> GetServerResponse GetServer (string orgId, string serverId)

REST API: Get a specific MCP server.

Management endpoint — requires tenant admin authentication.

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
    public class GetServerExample
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
            var apiInstance = new McpApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var serverId = "serverId_example";  // string | 

            try
            {
                // REST API: Get a specific MCP server.
                GetServerResponse result = apiInstance.GetServer(orgId, serverId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling McpApi.GetServer: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetServerWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // REST API: Get a specific MCP server.
    ApiResponse<GetServerResponse> response = apiInstance.GetServerWithHttpInfo(orgId, serverId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling McpApi.GetServerWithHttpInfo: " + e.Message);
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

[**GetServerResponse**](GetServerResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A single MCP server with discovery metadata. |  -  |
| **403** | Caller lacks the settings.manage permission. |  -  |
| **404** | Tenant or MCP server not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getserverchallenge"></a>
# **GetServerChallenge**
> GetServerChallengeResponse GetServerChallenge (string orgId, string serverId)

Simulated MCP server authorization challenge

Test endpoint that behaves like the MCP server's protected endpoint: validates the presented Bearer / DPoP access token (audience, scopes, DPoP binding) or answers the MCP-spec 401 challenge pointing at the protected resource metadata.

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
    public class GetServerChallengeExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new McpApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var serverId = "serverId_example";  // string | 

            try
            {
                // Simulated MCP server authorization challenge
                GetServerChallengeResponse result = apiInstance.GetServerChallenge(orgId, serverId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling McpApi.GetServerChallenge: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetServerChallengeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Simulated MCP server authorization challenge
    ApiResponse<GetServerChallengeResponse> response = apiInstance.GetServerChallengeWithHttpInfo(orgId, serverId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling McpApi.GetServerChallengeWithHttpInfo: " + e.Message);
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

[**GetServerChallengeResponse**](GetServerChallengeResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The access token is valid for this MCP server. |  -  |
| **401** | unauthorized / invalid_token with the MCP WWW-Authenticate challenge (resource_metadata, and scope when the server includes it). |  * WWW-Authenticate -  <br>  |
| **403** | insufficient_scope — the token lacks required scopes (listed in scope and in WWW-Authenticate). |  * WWW-Authenticate -  <br>  |
| **404** | not_found — unknown organization, or unknown / inactive MCP server. |  -  |
| **429** | too_many_requests (Retry-After header). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="listservers"></a>
# **ListServers**
> ListServersResponse ListServers (string orgId)

REST API: List MCP servers for a tenant.

Management endpoint — requires tenant admin authentication.

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
    public class ListServersExample
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
            var apiInstance = new McpApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // REST API: List MCP servers for a tenant.
                ListServersResponse result = apiInstance.ListServers(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling McpApi.ListServers: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListServersWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // REST API: List MCP servers for a tenant.
    ApiResponse<ListServersResponse> response = apiInstance.ListServersWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling McpApi.ListServersWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

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
| **200** | List of active MCP servers for the tenant. |  -  |
| **403** | Caller lacks the settings.manage permission. |  -  |
| **404** | Tenant not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="postserverchallenge"></a>
# **PostServerChallenge**
> GetServerChallengeResponse PostServerChallenge (string orgId, string serverId)

Simulated MCP server authorization challenge (POST)

Identical to GET; the HTTP method is only recorded in the audit trail.

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
    public class PostServerChallengeExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure Bearer token for authorization: BearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new McpApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var serverId = "serverId_example";  // string | 

            try
            {
                // Simulated MCP server authorization challenge (POST)
                GetServerChallengeResponse result = apiInstance.PostServerChallenge(orgId, serverId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling McpApi.PostServerChallenge: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the PostServerChallengeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Simulated MCP server authorization challenge (POST)
    ApiResponse<GetServerChallengeResponse> response = apiInstance.PostServerChallengeWithHttpInfo(orgId, serverId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling McpApi.PostServerChallengeWithHttpInfo: " + e.Message);
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

[**GetServerChallengeResponse**](GetServerChallengeResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The access token is valid for this MCP server. |  -  |
| **401** | unauthorized / invalid_token with the MCP WWW-Authenticate challenge (resource_metadata, and scope when the server includes it). |  * WWW-Authenticate -  <br>  |
| **403** | insufficient_scope — the token lacks required scopes (listed in scope and in WWW-Authenticate). |  * WWW-Authenticate -  <br>  |
| **404** | not_found — unknown organization, or unknown / inactive MCP server. |  -  |
| **429** | too_many_requests (Retry-After header). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

