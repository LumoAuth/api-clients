# LumoAuth.ApiClient.Api.WellKnownApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GetAuthorizationServerMetadata**](WellKnownApi.md#getauthorizationservermetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-authorization-server | OAuth 2.0 authorization server metadata (RFC 8414) |
| [**GetJwks**](WellKnownApi.md#getjwks) | **GET** /orgs/{orgId}/api/v1/.well-known/jwks.json | JSON Web Key Set (RFC 7517) |
| [**GetOpenidConfiguration**](WellKnownApi.md#getopenidconfiguration) | **GET** /orgs/{orgId}/api/v1/.well-known/openid-configuration | OpenID Provider configuration (OIDC Discovery 1.0) |
| [**GetSsfConfiguration**](WellKnownApi.md#getssfconfiguration) | **GET** /orgs/{orgId}/api/v1/.well-known/ssf-configuration | SSF transmitter configuration metadata |

<a id="getauthorizationservermetadata"></a>
# **GetAuthorizationServerMetadata**
> AuthorizationServerMetadata GetAuthorizationServerMetadata (string orgId)

OAuth 2.0 authorization server metadata (RFC 8414)

Public, CORS-enabled and cacheable (Cache-Control: public, max-age=3600). Endpoint URLs are rewritten to the organization's custom domain when one is active.

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
    public class GetAuthorizationServerMetadataExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new WellKnownApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // OAuth 2.0 authorization server metadata (RFC 8414)
                AuthorizationServerMetadata result = apiInstance.GetAuthorizationServerMetadata(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling WellKnownApi.GetAuthorizationServerMetadata: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetAuthorizationServerMetadataWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // OAuth 2.0 authorization server metadata (RFC 8414)
    ApiResponse<AuthorizationServerMetadata> response = apiInstance.GetAuthorizationServerMetadataWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling WellKnownApi.GetAuthorizationServerMetadataWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

[**AuthorizationServerMetadata**](AuthorizationServerMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Authorization server metadata. Conditional members: client_id_metadata_document_supported (CIMD opted in), authorization_grant_profiles_supported and the jwt-bearer grant (Cross App Access resource role), op_policy_uri / op_tos_uri (organization settings). |  -  |
| **404** | invalid_tenant — unknown or inactive organization. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getjwks"></a>
# **GetJwks**
> JsonWebKeySet GetJwks (string orgId)

JSON Web Key Set (RFC 7517)

Public signing keys of the organization (its tenant signing keys plus any platform keys kept for backward compatibility). Public, CORS-enabled and cacheable (Cache-Control: public, max-age=3600).

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
    public class GetJwksExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new WellKnownApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // JSON Web Key Set (RFC 7517)
                JsonWebKeySet result = apiInstance.GetJwks(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling WellKnownApi.GetJwks: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetJwksWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // JSON Web Key Set (RFC 7517)
    ApiResponse<JsonWebKeySet> response = apiInstance.GetJwksWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling WellKnownApi.GetJwksWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

[**JsonWebKeySet**](JsonWebKeySet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | JWK Set. Each key is an RSA (n, e) or EC (crv, x, y) public JWK with kid, use&#x3D;sig and alg. |  -  |
| **404** | invalid_tenant — unknown or inactive organization. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getopenidconfiguration"></a>
# **GetOpenidConfiguration**
> OpenIdConfiguration GetOpenidConfiguration (string orgId)

OpenID Provider configuration (OIDC Discovery 1.0)

Public, CORS-enabled and cacheable (Cache-Control: public, max-age=3600). Endpoint URLs are rewritten to the organization's custom domain when one is active.

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
    public class GetOpenidConfigurationExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new WellKnownApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // OpenID Provider configuration (OIDC Discovery 1.0)
                OpenIdConfiguration result = apiInstance.GetOpenidConfiguration(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling WellKnownApi.GetOpenidConfiguration: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetOpenidConfigurationWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // OpenID Provider configuration (OIDC Discovery 1.0)
    ApiResponse<OpenIdConfiguration> response = apiInstance.GetOpenidConfigurationWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling WellKnownApi.GetOpenidConfigurationWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

[**OpenIdConfiguration**](OpenIdConfiguration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OpenID Provider metadata. Conditional members: client_id_metadata_document_supported (CIMD opted in), authorization_grant_profiles_supported and the jwt-bearer grant (Cross App Access resource role), op_policy_uri / op_tos_uri and a tenant acr_values_supported override (organization settings). |  -  |
| **404** | invalid_tenant — unknown or inactive organization. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getssfconfiguration"></a>
# **GetSsfConfiguration**
> GetSsfConfigurationResponse GetSsfConfiguration (string orgId)

SSF transmitter configuration metadata

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
    public class GetSsfConfigurationExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new WellKnownApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // SSF transmitter configuration metadata
                GetSsfConfigurationResponse result = apiInstance.GetSsfConfiguration(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling WellKnownApi.GetSsfConfiguration: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetSsfConfigurationWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // SSF transmitter configuration metadata
    ApiResponse<GetSsfConfigurationResponse> response = apiInstance.GetSsfConfigurationWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling WellKnownApi.GetSsfConfigurationWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

[**GetSsfConfigurationResponse**](GetSsfConfigurationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Transmitter configuration |  -  |
| **404** | Tenant not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

