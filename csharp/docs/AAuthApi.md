# LumoAuth.ApiClient.Api.AAuthApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AuthorizeAgent**](AAuthApi.md#authorizeagent) | **GET** /orgs/{orgId}/api/v1/aauth/agent/auth | Agent Auth Endpoint - redirects to user consent page. |
| [**GetAgentJwks**](AAuthApi.md#getagentjwks) | **GET** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/jwks.json | Agent JWKS endpoint |
| [**GetAgentMetadata**](AAuthApi.md#getagentmetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-agent | Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents. |
| [**GetAgentMetadataById**](AAuthApi.md#getagentmetadatabyid) | **GET** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/metadata | Individual Agent Metadata |
| [**GetIssuerJwks**](AAuthApi.md#getissuerjwks) | **GET** /orgs/{orgId}/api/v1/aauth/jwks.json | Auth Server JWKS endpoint for AAuth. |
| [**GetIssuerMetadata**](AAuthApi.md#getissuermetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-issuer | Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant. |
| [**GetResourceJwks**](AAuthApi.md#getresourcejwks) | **GET** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/jwks.json | Resource JWKS endpoint |
| [**GetResourceMetadata**](AAuthApi.md#getresourcemetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-resource | Resource Metadata (Section 8.3) |
| [**GetResourceMetadataById**](AAuthApi.md#getresourcemetadatabyid) | **GET** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/metadata | Individual Resource Metadata |
| [**IssueAgentToken**](AAuthApi.md#issueagenttoken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/token | Agent Token Endpoint |
| [**IssueDelegateToken**](AAuthApi.md#issuedelegatetoken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/issue | Issue an agent token to a delegate. |
| [**IssuePlatformToken**](AAuthApi.md#issueplatformtoken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/platform-token |  |
| [**IssueResourceToken**](AAuthApi.md#issueresourcetoken) | **POST** /orgs/{orgId}/api/v1/aauth/resource/token | Resource Token Endpoint (Section 6) |
| [**RevokeAgentToken**](AAuthApi.md#revokeagenttoken) | **POST** /orgs/{orgId}/api/v1/aauth/token/revoke | Revoke an auth token or refresh token. |
| [**VerifyAuthToken**](AAuthApi.md#verifyauthtoken) | **POST** /orgs/{orgId}/api/v1/aauth/auth/token/verify | Auth Token Verification endpoint. |
| [**VerifyResourceToken**](AAuthApi.md#verifyresourcetoken) | **POST** /orgs/{orgId}/api/v1/aauth/resource/token/verify | Resource Token Verification (for resources to validate their own tokens). |

<a id="authorizeagent"></a>
# **AuthorizeAgent**
> void AuthorizeAgent (string orgId)

Agent Auth Endpoint - redirects to user consent page.

Per Section 9.4: The auth server redirects the user's browser to its authorization page.

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
    public class AuthorizeAgentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure Bearer token for authorization: AAuthSigned
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AAuthApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // Agent Auth Endpoint - redirects to user consent page.
                apiInstance.AuthorizeAgent(orgId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AAuthApi.AuthorizeAgent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AuthorizeAgentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Agent Auth Endpoint - redirects to user consent page.
    apiInstance.AuthorizeAgentWithHttpInfo(orgId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AAuthApi.AuthorizeAgentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

void (empty response body)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **302** | Redirect to the tenant portal AAuth consent page for the given request_token. |  -  |
| **400** | Missing request_token query parameter. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getagentjwks"></a>
# **GetAgentJwks**
> JwksResponse GetAgentJwks (string orgId, string agentId)

Agent JWKS endpoint

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
    public class GetAgentJwksExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AAuthApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var agentId = "agentId_example";  // string | 

            try
            {
                // Agent JWKS endpoint
                JwksResponse result = apiInstance.GetAgentJwks(orgId, agentId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AAuthApi.GetAgentJwks: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetAgentJwksWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Agent JWKS endpoint
    ApiResponse<JwksResponse> response = apiInstance.GetAgentJwksWithHttpInfo(orgId, agentId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AAuthApi.GetAgentJwksWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **agentId** | **string** |  |  |

### Return type

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The agent JWKS. |  -  |
| **404** | Agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getagentmetadata"></a>
# **GetAgentMetadata**
> List&lt;Object&gt; GetAgentMetadata (string orgId)

Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents.

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
    public class GetAgentMetadataExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AAuthApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents.
                List<Object> result = apiInstance.GetAgentMetadata(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AAuthApi.GetAgentMetadata: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetAgentMetadataWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents.
    ApiResponse<List<Object>> response = apiInstance.GetAgentMetadataWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AAuthApi.GetAgentMetadataWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

**List<Object>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Metadata documents for all active agents of this tenant (Section 8.1). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getagentmetadatabyid"></a>
# **GetAgentMetadataById**
> Object GetAgentMetadataById (string orgId, string agentId)

Individual Agent Metadata

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
    public class GetAgentMetadataByIdExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AAuthApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var agentId = "agentId_example";  // string | 

            try
            {
                // Individual Agent Metadata
                Object result = apiInstance.GetAgentMetadataById(orgId, agentId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AAuthApi.GetAgentMetadataById: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetAgentMetadataByIdWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Individual Agent Metadata
    ApiResponse<Object> response = apiInstance.GetAgentMetadataByIdWithHttpInfo(orgId, agentId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AAuthApi.GetAgentMetadataByIdWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **agentId** | **string** |  |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Metadata document for a single active agent. |  -  |
| **404** | Agent not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getissuerjwks"></a>
# **GetIssuerJwks**
> JwksResponse GetIssuerJwks (string orgId)

Auth Server JWKS endpoint for AAuth.

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
    public class GetIssuerJwksExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AAuthApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // Auth Server JWKS endpoint for AAuth.
                JwksResponse result = apiInstance.GetIssuerJwks(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AAuthApi.GetIssuerJwks: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetIssuerJwksWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Auth Server JWKS endpoint for AAuth.
    ApiResponse<JwksResponse> response = apiInstance.GetIssuerJwksWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AAuthApi.GetIssuerJwksWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The auth server JWKS (public keys used to verify issued JWTs). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getissuermetadata"></a>
# **GetIssuerMetadata**
> GetIssuerMetadataResponse GetIssuerMetadata (string orgId)

Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant.

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
    public class GetIssuerMetadataExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AAuthApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant.
                GetIssuerMetadataResponse result = apiInstance.GetIssuerMetadata(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AAuthApi.GetIssuerMetadata: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetIssuerMetadataWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant.
    ApiResponse<GetIssuerMetadataResponse> response = apiInstance.GetIssuerMetadataWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AAuthApi.GetIssuerMetadataWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

[**GetIssuerMetadataResponse**](GetIssuerMetadataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | AAuth auth-server metadata document (Section 8.2). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getresourcejwks"></a>
# **GetResourceJwks**
> JwksResponse GetResourceJwks (string orgId, string resourceId)

Resource JWKS endpoint

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
    public class GetResourceJwksExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AAuthApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var resourceId = "resourceId_example";  // string | 

            try
            {
                // Resource JWKS endpoint
                JwksResponse result = apiInstance.GetResourceJwks(orgId, resourceId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AAuthApi.GetResourceJwks: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetResourceJwksWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Resource JWKS endpoint
    ApiResponse<JwksResponse> response = apiInstance.GetResourceJwksWithHttpInfo(orgId, resourceId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AAuthApi.GetResourceJwksWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **resourceId** | **string** |  |  |

### Return type

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The resource JWKS. |  -  |
| **404** | Resource not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getresourcemetadata"></a>
# **GetResourceMetadata**
> List&lt;Object&gt; GetResourceMetadata (string orgId)

Resource Metadata (Section 8.3)

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
    public class GetResourceMetadataExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AAuthApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // Resource Metadata (Section 8.3)
                List<Object> result = apiInstance.GetResourceMetadata(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AAuthApi.GetResourceMetadata: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetResourceMetadataWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Resource Metadata (Section 8.3)
    ApiResponse<List<Object>> response = apiInstance.GetResourceMetadataWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AAuthApi.GetResourceMetadataWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

**List<Object>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Metadata documents for all active resources of this tenant (Section 8.3). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getresourcemetadatabyid"></a>
# **GetResourceMetadataById**
> Object GetResourceMetadataById (string orgId, string resourceId)

Individual Resource Metadata

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
    public class GetResourceMetadataByIdExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AAuthApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var resourceId = "resourceId_example";  // string | 

            try
            {
                // Individual Resource Metadata
                Object result = apiInstance.GetResourceMetadataById(orgId, resourceId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AAuthApi.GetResourceMetadataById: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetResourceMetadataByIdWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Individual Resource Metadata
    ApiResponse<Object> response = apiInstance.GetResourceMetadataByIdWithHttpInfo(orgId, resourceId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AAuthApi.GetResourceMetadataByIdWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **resourceId** | **string** |  |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Metadata document for a single active resource. |  -  |
| **404** | Resource not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="issueagenttoken"></a>
# **IssueAgentToken**
> IssueAgentTokenResponse IssueAgentToken (string orgId, IssueAgentTokenRequest issueAgentTokenRequest)

Agent Token Endpoint

Per Section 9: The agent token endpoint is the auth server's endpoint agents use to request auth tokens.  Required HTTP signature covering: @method, @target-uri, content-type, content-digest, authorization

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
    public class IssueAgentTokenExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure Bearer token for authorization: AAuthSigned
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AAuthApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var issueAgentTokenRequest = new IssueAgentTokenRequest(); // IssueAgentTokenRequest | 

            try
            {
                // Agent Token Endpoint
                IssueAgentTokenResponse result = apiInstance.IssueAgentToken(orgId, issueAgentTokenRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AAuthApi.IssueAgentToken: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the IssueAgentTokenWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Agent Token Endpoint
    ApiResponse<IssueAgentTokenResponse> response = apiInstance.IssueAgentTokenWithHttpInfo(orgId, issueAgentTokenRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AAuthApi.IssueAgentTokenWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **issueAgentTokenRequest** | [**IssueAgentTokenRequest**](IssueAgentTokenRequest.md) |  |  |

### Return type

[**IssueAgentTokenResponse**](IssueAgentTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An auth token, or a request token + authorization URI when user consent is needed. |  -  |
| **400** | Invalid request (missing/unknown request_type, invalid body, invalid resource/redirect). |  -  |
| **401** | Agent-Auth challenge — missing/invalid Agent-Auth header, signature, or agent token. |  -  |
| **429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="issuedelegatetoken"></a>
# **IssueDelegateToken**
> IssueDelegateTokenResponse IssueDelegateToken (string orgId, IssueDelegateTokenRequest issueDelegateTokenRequest)

Issue an agent token to a delegate.

Called by the agent server when a delegate needs to act on its behalf.  This endpoint requires the agent server to authenticate itself (via HTTP signature with its registered key).

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
    public class IssueDelegateTokenExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure Bearer token for authorization: AAuthSigned
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AAuthApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var issueDelegateTokenRequest = new IssueDelegateTokenRequest(); // IssueDelegateTokenRequest | 

            try
            {
                // Issue an agent token to a delegate.
                IssueDelegateTokenResponse result = apiInstance.IssueDelegateToken(orgId, issueDelegateTokenRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AAuthApi.IssueDelegateToken: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the IssueDelegateTokenWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Issue an agent token to a delegate.
    ApiResponse<IssueDelegateTokenResponse> response = apiInstance.IssueDelegateTokenWithHttpInfo(orgId, issueDelegateTokenRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AAuthApi.IssueDelegateTokenWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **issueDelegateTokenRequest** | [**IssueDelegateTokenRequest**](IssueDelegateTokenRequest.md) |  |  |

### Return type

[**IssueDelegateTokenResponse**](IssueDelegateTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The issued agent token and its metadata. |  -  |
| **400** | Invalid JSON body, or missing delegate_sub / delegate_public_key. |  -  |
| **401** | Agent server HTTP-message-signature verification failed. |  -  |
| **429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="issueplatformtoken"></a>
# **IssuePlatformToken**
> IssuePlatformTokenResponse IssuePlatformToken (string orgId, IssuePlatformTokenRequest issuePlatformTokenRequest)



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
    public class IssuePlatformTokenExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure Bearer token for authorization: AAuthSigned
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AAuthApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var issuePlatformTokenRequest = new IssuePlatformTokenRequest(); // IssuePlatformTokenRequest | 

            try
            {
                IssuePlatformTokenResponse result = apiInstance.IssuePlatformToken(orgId, issuePlatformTokenRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AAuthApi.IssuePlatformToken: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the IssuePlatformTokenWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<IssuePlatformTokenResponse> response = apiInstance.IssuePlatformTokenWithHttpInfo(orgId, issuePlatformTokenRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AAuthApi.IssuePlatformTokenWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **issuePlatformTokenRequest** | [**IssuePlatformTokenRequest**](IssuePlatformTokenRequest.md) |  |  |

### Return type

[**IssuePlatformTokenResponse**](IssuePlatformTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A short-lived, DPoP-bound core-agent access token accepted by JIT, the token vault, and the authz PDP. It carries cnf.jkt (thumbprint of the agent key) and must be presented with a DPoP proof from that key. |  -  |
| **400** | Invalid exchange request (grant_type / subject_token). |  -  |
| **401** | The AAuth token is invalid, expired, or revoked, or the RFC 9421 request signature is missing/invalid/replayed. |  -  |
| **403** | Denied by a conditional access policy. |  -  |
| **429** | Rate limit exceeded (per IP or per agent). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="issueresourcetoken"></a>
# **IssueResourceToken**
> IssueResourceTokenResponse IssueResourceToken (string orgId, IssueResourceTokenRequest issueResourceTokenRequest)

Resource Token Endpoint (Section 6)

Called by a registered resource to create a resource token binding an agent's request to the resource's identity.  The resource authenticates via HTTP Message Signature using its registered key.

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
    public class IssueResourceTokenExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure Bearer token for authorization: AAuthSigned
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AAuthApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var issueResourceTokenRequest = new IssueResourceTokenRequest(); // IssueResourceTokenRequest | 

            try
            {
                // Resource Token Endpoint (Section 6)
                IssueResourceTokenResponse result = apiInstance.IssueResourceToken(orgId, issueResourceTokenRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AAuthApi.IssueResourceToken: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the IssueResourceTokenWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Resource Token Endpoint (Section 6)
    ApiResponse<IssueResourceTokenResponse> response = apiInstance.IssueResourceTokenWithHttpInfo(orgId, issueResourceTokenRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AAuthApi.IssueResourceTokenWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **issueResourceTokenRequest** | [**IssueResourceTokenRequest**](IssueResourceTokenRequest.md) |  |  |

### Return type

[**IssueResourceTokenResponse**](IssueResourceTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A resource token binding the agent request to the resource identity. |  -  |
| **400** | Invalid JSON body, missing agent/agent_jkt, or unsupported scope. |  -  |
| **401** | Resource authentication (HTTP message signature) failed. |  -  |
| **429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="revokeagenttoken"></a>
# **RevokeAgentToken**
> RevokeAgentTokenResponse RevokeAgentToken (string orgId, RevokeAgentTokenRequest revokeAgentTokenRequest)

Revoke an auth token or refresh token.

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
    public class RevokeAgentTokenExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure Bearer token for authorization: AAuthSigned
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AAuthApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var revokeAgentTokenRequest = new RevokeAgentTokenRequest(); // RevokeAgentTokenRequest | 

            try
            {
                // Revoke an auth token or refresh token.
                RevokeAgentTokenResponse result = apiInstance.RevokeAgentToken(orgId, revokeAgentTokenRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AAuthApi.RevokeAgentToken: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RevokeAgentTokenWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Revoke an auth token or refresh token.
    ApiResponse<RevokeAgentTokenResponse> response = apiInstance.RevokeAgentTokenWithHttpInfo(orgId, revokeAgentTokenRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AAuthApi.RevokeAgentTokenWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **revokeAgentTokenRequest** | [**RevokeAgentTokenRequest**](RevokeAgentTokenRequest.md) |  |  |

### Return type

[**RevokeAgentTokenResponse**](RevokeAgentTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Revocation acknowledged (always 200 — existence of the token is not disclosed). |  -  |
| **400** | Missing token parameter. |  -  |
| **401** | Agent-Auth challenge — authentication/signature verification failed. |  -  |
| **429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="verifyauthtoken"></a>
# **VerifyAuthToken**
> VerifyAuthTokenResponse VerifyAuthToken (string orgId, VerifyAuthTokenRequest verifyAuthTokenRequest)

Auth Token Verification endpoint.

Resources call this to validate an auth token presented by an agent. Per Section 7.7, the resource validates:   1. JWT signature from trusted auth server   2. aud matches resource identifier   3. exp is in the future   4. HTTP Message Signature on the agent's incoming request matches the      key whose thumbprint is `cnf_jkt` in the response.  IMPORTANT — proof-of-possession is mandatory. A response of `{\"active\": true, ...}` from this endpoint means the JWT is well-formed and bound to the named resource; it does NOT mean the caller is the legitimate holder of the token. The resource MUST independently verify that the HTTP Message Signature on the agent's request was produced with the key that hashes to `cnf_jkt`. A token without this PoP check is effectively a bearer token and can be replayed by anyone who observes it. The response includes `pop_required: true` to surface this contract to integrators who only inspect `active`.

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
    public class VerifyAuthTokenExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure Bearer token for authorization: AAuthSigned
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AAuthApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var verifyAuthTokenRequest = new VerifyAuthTokenRequest(); // VerifyAuthTokenRequest | 

            try
            {
                // Auth Token Verification endpoint.
                VerifyAuthTokenResponse result = apiInstance.VerifyAuthToken(orgId, verifyAuthTokenRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AAuthApi.VerifyAuthToken: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the VerifyAuthTokenWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Auth Token Verification endpoint.
    ApiResponse<VerifyAuthTokenResponse> response = apiInstance.VerifyAuthTokenWithHttpInfo(orgId, verifyAuthTokenRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AAuthApi.VerifyAuthTokenWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **verifyAuthTokenRequest** | [**VerifyAuthTokenRequest**](VerifyAuthTokenRequest.md) |  |  |

### Return type

[**VerifyAuthTokenResponse**](VerifyAuthTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Introspection result. active&#x3D;true does NOT imply PoP — the caller MUST verify the HTTP message signature against cnf_jkt. |  -  |
| **400** | Missing auth_token or resource. |  -  |
| **401** | Resource authentication failed. |  -  |
| **403** | Requested resource does not match the authenticated resource. |  -  |
| **429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="verifyresourcetoken"></a>
# **VerifyResourceToken**
> VerifyResourceTokenResponse VerifyResourceToken (string orgId, VerifyResourceTokenRequest verifyResourceTokenRequest)

Resource Token Verification (for resources to validate their own tokens).

A convenience endpoint—resources can also validate locally.

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
    public class VerifyResourceTokenExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure Bearer token for authorization: AAuthSigned
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new AAuthApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var verifyResourceTokenRequest = new VerifyResourceTokenRequest(); // VerifyResourceTokenRequest | 

            try
            {
                // Resource Token Verification (for resources to validate their own tokens).
                VerifyResourceTokenResponse result = apiInstance.VerifyResourceToken(orgId, verifyResourceTokenRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AAuthApi.VerifyResourceToken: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the VerifyResourceTokenWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Resource Token Verification (for resources to validate their own tokens).
    ApiResponse<VerifyResourceTokenResponse> response = apiInstance.VerifyResourceTokenWithHttpInfo(orgId, verifyResourceTokenRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AAuthApi.VerifyResourceTokenWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **verifyResourceTokenRequest** | [**VerifyResourceTokenRequest**](VerifyResourceTokenRequest.md) |  |  |

### Return type

[**VerifyResourceTokenResponse**](VerifyResourceTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Introspection result; active&#x3D;false with an error when the token is invalid. |  -  |
| **400** | Missing resource_token, agent, or agent_jkt. |  -  |
| **401** | Resource authentication failed. |  -  |
| **403** | Resource token is not valid for the authenticated resource. |  -  |
| **429** | Rate limit exceeded. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

