# LumoAuth.ApiClient.Api.OIDCApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CheckSession**](OIDCApi.md#checksession) | **GET** /orgs/{orgId}/api/v1/oauth/check_session | OP session-check iframe (OIDC Session Management 1.0) |
| [**Logout**](OIDCApi.md#logout) | **GET** /orgs/{orgId}/api/v1/oauth/logout | RP-initiated logout (OIDC RP-Initiated Logout 1.0) |
| [**LogoutPost**](OIDCApi.md#logoutpost) | **POST** /orgs/{orgId}/api/v1/oauth/logout | RP-initiated logout (confirmation submission) |
| [**Userinfo**](OIDCApi.md#userinfo) | **GET** /orgs/{orgId}/api/v1/oauth/userinfo | OpenID Connect UserInfo endpoint |
| [**UserinfoPost**](OIDCApi.md#userinfopost) | **POST** /orgs/{orgId}/api/v1/oauth/userinfo | OpenID Connect UserInfo endpoint (POST) |

<a id="checksession"></a>
# **CheckSession**
> string CheckSession (string orgId)

OP session-check iframe (OIDC Session Management 1.0)

The check_session_iframe page advertised in discovery. Relying parties embed it and postMessage \"<client_id> <session_state>\" to learn whether the OP session changed. Not a JSON API.

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
    public class CheckSessionExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new OIDCApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // OP session-check iframe (OIDC Session Management 1.0)
                string result = apiInstance.CheckSession(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OIDCApi.CheckSession: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CheckSessionWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // OP session-check iframe (OIDC Session Management 1.0)
    ApiResponse<string> response = apiInstance.CheckSessionWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OIDCApi.CheckSessionWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | HTML page containing the session-state comparison script. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="logout"></a>
# **Logout**
> string Logout (string orgId)

RP-initiated logout (OIDC RP-Initiated Logout 1.0)

end_session_endpoint. Accepts id_token_hint, post_logout_redirect_uri and state. Logs out immediately only when id_token_hint proves the request is about the signed-in user; otherwise the user confirms through a CSRF-protected POST. Triggers front-channel and back-channel logout for the session's clients. Not a JSON API.

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
    public class LogoutExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new OIDCApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // RP-initiated logout (OIDC RP-Initiated Logout 1.0)
                string result = apiInstance.Logout(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OIDCApi.Logout: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the LogoutWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // RP-initiated logout (OIDC RP-Initiated Logout 1.0)
    ApiResponse<string> response = apiInstance.LogoutWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OIDCApi.LogoutWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | HTML page: the logout confirmation prompt (signed-in user without a matching id_token_hint), or the logout result page that embeds the front-channel logout iframes for the session&#39;s clients. |  -  |
| **302** | Redirect to the validated post_logout_redirect_uri (state appended when given). |  * Location -  <br>  |
| **404** | invalid_tenant — unknown or inactive organization (JSON). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="logoutpost"></a>
# **LogoutPost**
> string LogoutPost (string orgId)

RP-initiated logout (confirmation submission)

Same parameters as GET plus the _csrf_token of the confirmation page. Not a JSON API.

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
    public class LogoutPostExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new OIDCApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // RP-initiated logout (confirmation submission)
                string result = apiInstance.LogoutPost(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OIDCApi.LogoutPost: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the LogoutPostWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // RP-initiated logout (confirmation submission)
    ApiResponse<string> response = apiInstance.LogoutPostWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OIDCApi.LogoutPostWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | HTML page: the logout confirmation prompt (signed-in user without a matching id_token_hint), or the logout result page that embeds the front-channel logout iframes for the session&#39;s clients. |  -  |
| **302** | Redirect to the validated post_logout_redirect_uri (state appended when given). |  * Location -  <br>  |
| **404** | invalid_tenant — unknown or inactive organization (JSON). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="userinfo"></a>
# **Userinfo**
> UserinfoResponse Userinfo (string orgId)

OpenID Connect UserInfo endpoint

Returns claims about the authenticated principal for an access token presented as Authorization: Bearer or Authorization: DPoP (with a DPoP proof when the token is sender-constrained). The openid scope is required.

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
    public class UserinfoExample
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
            var apiInstance = new OIDCApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // OpenID Connect UserInfo endpoint
                UserinfoResponse result = apiInstance.Userinfo(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OIDCApi.Userinfo: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the UserinfoWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // OpenID Connect UserInfo endpoint
    ApiResponse<UserinfoResponse> response = apiInstance.UserinfoWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OIDCApi.UserinfoWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

[**UserinfoResponse**](UserinfoResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Claims for the token&#39;s principal. The shape depends on the identity type: a user token yields standard OIDC claims gated by scope (profile, email, phone, address), roles only when the client enabled the roles claim, plus tenant — null-valued claims are omitted; an agent token yields sub&#x3D;agent_&lt;id&gt;, name, agent_id, workload_identity, capabilities, tenant, identity_type&#x3D;agent; a client token yields sub&#x3D;client_&lt;id&gt;, client_id, name, tenant, identity_type&#x3D;client. Sent with Cache-Control: no-store. |  -  |
| **400** | invalid_request — Authorization header missing or malformed. |  -  |
| **401** | invalid_token (invalid, expired, or wrong DPoP binding) or invalid_dpop_proof. |  -  |
| **403** | insufficient_scope — the openid scope is required. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="userinfopost"></a>
# **UserinfoPost**
> UserinfoResponse UserinfoPost (string orgId)

OpenID Connect UserInfo endpoint (POST)

Identical to GET.

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
    public class UserinfoPostExample
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
            var apiInstance = new OIDCApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // OpenID Connect UserInfo endpoint (POST)
                UserinfoResponse result = apiInstance.UserinfoPost(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling OIDCApi.UserinfoPost: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the UserinfoPostWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // OpenID Connect UserInfo endpoint (POST)
    ApiResponse<UserinfoResponse> response = apiInstance.UserinfoPostWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling OIDCApi.UserinfoPostWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

[**UserinfoResponse**](UserinfoResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Claims for the token&#39;s principal. The shape depends on the identity type: a user token yields standard OIDC claims gated by scope (profile, email, phone, address), roles only when the client enabled the roles claim, plus tenant — null-valued claims are omitted; an agent token yields sub&#x3D;agent_&lt;id&gt;, name, agent_id, workload_identity, capabilities, tenant, identity_type&#x3D;agent; a client token yields sub&#x3D;client_&lt;id&gt;, client_id, name, tenant, identity_type&#x3D;client. Sent with Cache-Control: no-store. |  -  |
| **400** | invalid_request — Authorization header missing or malformed. |  -  |
| **401** | invalid_token (invalid, expired, or wrong DPoP binding) or invalid_dpop_proof. |  -  |
| **403** | insufficient_scope — the openid scope is required. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

