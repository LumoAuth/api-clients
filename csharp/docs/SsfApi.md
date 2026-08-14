# LumoAuth.ApiClient.Api.SsfApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CreateStreamConfig**](SsfApi.md#createstreamconfig) | **POST** /orgs/{orgId}/api/v1/ssf/stream | Create a stream. Accepts the SSF stream-configuration shape: {   \&quot;delivery\&quot;: { \&quot;method\&quot;: \&quot;urn:ietf:rfc:8935\&quot;, \&quot;endpoint_url\&quot;: \&quot;...\&quot;,                 \&quot;authorization_token\&quot;: \&quot;...\&quot; },   \&quot;events_requested\&quot;: [\&quot;...uri...\&quot;],   \&quot;audience\&quot;: \&quot;https://receiver.example.com\&quot; } |
| [**DeleteStreamConfig**](SsfApi.md#deletestreamconfig) | **DELETE** /orgs/{orgId}/api/v1/ssf/stream |  |
| [**GetStreamConfig**](SsfApi.md#getstreamconfig) | **GET** /orgs/{orgId}/api/v1/ssf/stream | Read stream configuration(s). &#x60;?stream_id&#x3D;&#x60; returns a single config, otherwise all of the tenant&#39;s streams are returned. |
| [**VerifyStream**](SsfApi.md#verifystream) | **POST** /orgs/{orgId}/api/v1/ssf/verify | SSF Verification request: queue a Verification Event SET to the stream so the receiver can confirm end-to-end delivery. Body: { \&quot;stream_id\&quot;: \&quot;ssf_...\&quot;, \&quot;state\&quot;: \&quot;optional-opaque-echo\&quot; } |

<a id="createstreamconfig"></a>
# **CreateStreamConfig**
> void CreateStreamConfig (string orgId)

Create a stream. Accepts the SSF stream-configuration shape: {   \"delivery\": { \"method\": \"urn:ietf:rfc:8935\", \"endpoint_url\": \"...\",                 \"authorization_token\": \"...\" },   \"events_requested\": [\"...uri...\"],   \"audience\": \"https://receiver.example.com\" }

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
    public class CreateStreamConfigExample
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
            var apiInstance = new SsfApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // Create a stream. Accepts the SSF stream-configuration shape: {   \"delivery\": { \"method\": \"urn:ietf:rfc:8935\", \"endpoint_url\": \"...\",                 \"authorization_token\": \"...\" },   \"events_requested\": [\"...uri...\"],   \"audience\": \"https://receiver.example.com\" }
                apiInstance.CreateStreamConfig(orgId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SsfApi.CreateStreamConfig: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CreateStreamConfigWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Create a stream. Accepts the SSF stream-configuration shape: {   \"delivery\": { \"method\": \"urn:ietf:rfc:8935\", \"endpoint_url\": \"...\",                 \"authorization_token\": \"...\" },   \"events_requested\": [\"...uri...\"],   \"audience\": \"https://receiver.example.com\" }
    apiInstance.CreateStreamConfigWithHttpInfo(orgId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SsfApi.CreateStreamConfigWithHttpInfo: " + e.Message);
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

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="deletestreamconfig"></a>
# **DeleteStreamConfig**
> void DeleteStreamConfig (string orgId)



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
    public class DeleteStreamConfigExample
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
            var apiInstance = new SsfApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                apiInstance.DeleteStreamConfig(orgId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SsfApi.DeleteStreamConfig: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DeleteStreamConfigWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DeleteStreamConfigWithHttpInfo(orgId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SsfApi.DeleteStreamConfigWithHttpInfo: " + e.Message);
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

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getstreamconfig"></a>
# **GetStreamConfig**
> void GetStreamConfig (string orgId)

Read stream configuration(s). `?stream_id=` returns a single config, otherwise all of the tenant's streams are returned.

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
    public class GetStreamConfigExample
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
            var apiInstance = new SsfApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // Read stream configuration(s). `?stream_id=` returns a single config, otherwise all of the tenant's streams are returned.
                apiInstance.GetStreamConfig(orgId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SsfApi.GetStreamConfig: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetStreamConfigWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Read stream configuration(s). `?stream_id=` returns a single config, otherwise all of the tenant's streams are returned.
    apiInstance.GetStreamConfigWithHttpInfo(orgId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SsfApi.GetStreamConfigWithHttpInfo: " + e.Message);
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

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="verifystream"></a>
# **VerifyStream**
> void VerifyStream (string orgId)

SSF Verification request: queue a Verification Event SET to the stream so the receiver can confirm end-to-end delivery. Body: { \"stream_id\": \"ssf_...\", \"state\": \"optional-opaque-echo\" }

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
    public class VerifyStreamExample
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
            var apiInstance = new SsfApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // SSF Verification request: queue a Verification Event SET to the stream so the receiver can confirm end-to-end delivery. Body: { \"stream_id\": \"ssf_...\", \"state\": \"optional-opaque-echo\" }
                apiInstance.VerifyStream(orgId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SsfApi.VerifyStream: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the VerifyStreamWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // SSF Verification request: queue a Verification Event SET to the stream so the receiver can confirm end-to-end delivery. Body: { \"stream_id\": \"ssf_...\", \"state\": \"optional-opaque-echo\" }
    apiInstance.VerifyStreamWithHttpInfo(orgId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SsfApi.VerifyStreamWithHttpInfo: " + e.Message);
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

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

