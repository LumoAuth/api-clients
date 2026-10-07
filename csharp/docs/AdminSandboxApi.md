# LumoAuth.ApiClient.Api.AdminSandboxApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AdminSandboxDestroy**](AdminSandboxApi.md#adminsandboxdestroy) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/{sandboxSlug}/destroy | Destroy a sandbox tenant |
| [**AdminSandboxList**](AdminSandboxApi.md#adminsandboxlist) | **GET** /orgs/{orgId}/api/v1/admin/sandbox | List the caller&#39;s sandbox tenants |
| [**AdminSandboxSpawn**](AdminSandboxApi.md#adminsandboxspawn) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/spawn | Spawn a sandbox tenant |

<a id="adminsandboxdestroy"></a>
# **AdminSandboxDestroy**
> MessageResponse AdminSandboxDestroy (string orgId, string sandboxSlug)

Destroy a sandbox tenant

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
    public class AdminSandboxDestroyExample
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
            var apiInstance = new AdminSandboxApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var sandboxSlug = "sandboxSlug_example";  // string | 

            try
            {
                // Destroy a sandbox tenant
                MessageResponse result = apiInstance.AdminSandboxDestroy(orgId, sandboxSlug);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminSandboxApi.AdminSandboxDestroy: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AdminSandboxDestroyWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Destroy a sandbox tenant
    ApiResponse<MessageResponse> response = apiInstance.AdminSandboxDestroyWithHttpInfo(orgId, sandboxSlug);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminSandboxApi.AdminSandboxDestroyWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **sandboxSlug** | **string** |  |  |

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
| **200** | Sandbox destroyed |  -  |
| **404** | Sandbox not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="adminsandboxlist"></a>
# **AdminSandboxList**
> AdminSandboxListResponse AdminSandboxList (string orgId)

List the caller's sandbox tenants

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
    public class AdminSandboxListExample
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
            var apiInstance = new AdminSandboxApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // List the caller's sandbox tenants
                AdminSandboxListResponse result = apiInstance.AdminSandboxList(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminSandboxApi.AdminSandboxList: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AdminSandboxListWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List the caller's sandbox tenants
    ApiResponse<AdminSandboxListResponse> response = apiInstance.AdminSandboxListWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminSandboxApi.AdminSandboxListWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

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
| **200** | Sandboxes |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="adminsandboxspawn"></a>
# **AdminSandboxSpawn**
> AdminSandboxSpawnResponse AdminSandboxSpawn (string orgId, AdminSandboxSpawnRequest? adminSandboxSpawnRequest = null)

Spawn a sandbox tenant

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
    public class AdminSandboxSpawnExample
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
            var apiInstance = new AdminSandboxApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var adminSandboxSpawnRequest = new AdminSandboxSpawnRequest?(); // AdminSandboxSpawnRequest? |  (optional) 

            try
            {
                // Spawn a sandbox tenant
                AdminSandboxSpawnResponse result = apiInstance.AdminSandboxSpawn(orgId, adminSandboxSpawnRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminSandboxApi.AdminSandboxSpawn: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AdminSandboxSpawnWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Spawn a sandbox tenant
    ApiResponse<AdminSandboxSpawnResponse> response = apiInstance.AdminSandboxSpawnWithHttpInfo(orgId, adminSandboxSpawnRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminSandboxApi.AdminSandboxSpawnWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **adminSandboxSpawnRequest** | [**AdminSandboxSpawnRequest?**](AdminSandboxSpawnRequest?.md) |  | [optional]  |

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
| **201** | Sandbox created |  -  |
| **429** | Per-owner active-sandbox cap reached |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

