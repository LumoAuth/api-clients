# LumoAuth.ApiClient.Api.PersonalAgentProtocolApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**EndPoppySession**](PersonalAgentProtocolApi.md#endpoppysession) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/end | End a Session |
| [**GetPoppyDocument**](PersonalAgentProtocolApi.md#getpoppydocument) | **GET** /orgs/{orgId}/api/v1/poppy/documents/{domain}/poppy.json | poppy.json of a Company domain |
| [**GetPoppyProtectedResourceMetadata**](PersonalAgentProtocolApi.md#getpoppyprotectedresourcemetadata) | **GET** /orgs/{orgId}/api/v1/poppy/documents/{domain}/oauth-protected-resource | Protected resource metadata of a Company domain |
| [**GetPoppySessionStatus**](PersonalAgentProtocolApi.md#getpoppysessionstatus) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/status | Look up a Session |
| [**GetPoppyTasks**](PersonalAgentProtocolApi.md#getpoppytasks) | **GET** /orgs/{orgId}/api/v1/poppy/tasks | Tasks endpoint (Personal Agent Protocol, section 9) |
| [**SendPoppyFeedback**](PersonalAgentProtocolApi.md#sendpoppyfeedback) | **POST** /orgs/{orgId}/api/v1/poppy/feedback | Feedback endpoint (Personal Agent Protocol 9.3) |
| [**VerifyPoppySession**](PersonalAgentProtocolApi.md#verifypoppysession) | **POST** /orgs/{orgId}/api/v1/poppy/sessions/verify | Verify a Personal Agent&#39;s request |

<a id="endpoppysession"></a>
# **EndPoppySession**
> EndPoppySessionResponse EndPoppySession (string orgId, EndPoppySessionRequest endPoppySessionRequest)

End a Session

For your own APIs. Ends a Personal Agent Protocol Session without signing out: later requests with its sid are answered with session_ended, and the Personal Agent starts a new Session. Refresh tokens are not touched. Same authentication as the verification endpoint.

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
    public class EndPoppySessionExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure HTTP basic authorization: ClientAuth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new PersonalAgentProtocolApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var endPoppySessionRequest = new EndPoppySessionRequest(); // EndPoppySessionRequest | 

            try
            {
                // End a Session
                EndPoppySessionResponse result = apiInstance.EndPoppySession(orgId, endPoppySessionRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling PersonalAgentProtocolApi.EndPoppySession: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the EndPoppySessionWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // End a Session
    ApiResponse<EndPoppySessionResponse> response = apiInstance.EndPoppySessionWithHttpInfo(orgId, endPoppySessionRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PersonalAgentProtocolApi.EndPoppySessionWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **endPoppySessionRequest** | [**EndPoppySessionRequest**](EndPoppySessionRequest.md) |  |  |

### Return type

[**EndPoppySessionResponse**](EndPoppySessionResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The Session is ended. &#x60;ended&#x60; is false when it had ended before. |  -  |
| **401** | invalid_client. |  -  |
| **403** | insufficient_scope. |  -  |
| **404** | not_found: unknown organization or Session. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getpoppydocument"></a>
# **GetPoppyDocument**
> PoppyDocument GetPoppyDocument (string domain, string orgId)

poppy.json of a Company domain

The Personal Agent Protocol discovery document of one of the organization's Company domains, built from its settings. The organization serves it, unchanged, at https://{domain}/.well-known/poppy.json (a reverse-proxy rule or a copy): a document speaks for the host that serves it, so a redirect to this address does not work. Public and cacheable.

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
    public class GetPoppyDocumentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new PersonalAgentProtocolApi(httpClient, config, httpClientHandler);
            var domain = "domain_example";  // string | A Company domain of the organization, such as example.com.
            var orgId = "orgId_example";  // string | 

            try
            {
                // poppy.json of a Company domain
                PoppyDocument result = apiInstance.GetPoppyDocument(domain, orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling PersonalAgentProtocolApi.GetPoppyDocument: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetPoppyDocumentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // poppy.json of a Company domain
    ApiResponse<PoppyDocument> response = apiInstance.GetPoppyDocumentWithHttpInfo(domain, orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PersonalAgentProtocolApi.GetPoppyDocumentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **domain** | **string** | A Company domain of the organization, such as example.com. |  |
| **orgId** | **string** |  |  |

### Return type

[**PoppyDocument**](PoppyDocument.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The document (Personal Agent Protocol 3.1). |  -  |
| **404** | not_found: unknown organization, the protocol is switched off, or the domain is not one of its Company domains. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getpoppyprotectedresourcemetadata"></a>
# **GetPoppyProtectedResourceMetadata**
> PoppyProtectedResourceMetadata GetPoppyProtectedResourceMetadata (string domain, string orgId)

Protected resource metadata of a Company domain

The RFC 9728 document that names the organization's issuer for one of its Company domains. The organization serves it, unchanged, at https://{domain}/.well-known/oauth-protected-resource. Public and cacheable.

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
    public class GetPoppyProtectedResourceMetadataExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new PersonalAgentProtocolApi(httpClient, config, httpClientHandler);
            var domain = "domain_example";  // string | 
            var orgId = "orgId_example";  // string | 

            try
            {
                // Protected resource metadata of a Company domain
                PoppyProtectedResourceMetadata result = apiInstance.GetPoppyProtectedResourceMetadata(domain, orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling PersonalAgentProtocolApi.GetPoppyProtectedResourceMetadata: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetPoppyProtectedResourceMetadataWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Protected resource metadata of a Company domain
    ApiResponse<PoppyProtectedResourceMetadata> response = apiInstance.GetPoppyProtectedResourceMetadataWithHttpInfo(domain, orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PersonalAgentProtocolApi.GetPoppyProtectedResourceMetadataWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **domain** | **string** |  |  |
| **orgId** | **string** |  |  |

### Return type

[**PoppyProtectedResourceMetadata**](PoppyProtectedResourceMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The document (RFC 9728, Personal Agent Protocol 3.2). |  -  |
| **404** | not_found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getpoppysessionstatus"></a>
# **GetPoppySessionStatus**
> GetPoppySessionStatusResponse GetPoppySessionStatus (string orgId, EndPoppySessionRequest endPoppySessionRequest)

Look up a Session

For your own website and APIs. Says whether a Session still stands and whether its account is still signed in to the personal agent, without a request from the personal agent. A website that joined a browser to a Session asks this on each request, so that a sign-out, a disconnect in the user's account settings or an ended Session takes effect at once (Personal Agent Protocol, section 6). The account is signed in while the personal agent holds a valid refresh token for it. Same authentication as the verification endpoint.

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
    public class GetPoppySessionStatusExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure HTTP basic authorization: ClientAuth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new PersonalAgentProtocolApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var endPoppySessionRequest = new EndPoppySessionRequest(); // EndPoppySessionRequest | 

            try
            {
                // Look up a Session
                GetPoppySessionStatusResponse result = apiInstance.GetPoppySessionStatus(orgId, endPoppySessionRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling PersonalAgentProtocolApi.GetPoppySessionStatus: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetPoppySessionStatusWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Look up a Session
    ApiResponse<GetPoppySessionStatusResponse> response = apiInstance.GetPoppySessionStatusWithHttpInfo(orgId, endPoppySessionRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PersonalAgentProtocolApi.GetPoppySessionStatusWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **endPoppySessionRequest** | [**EndPoppySessionRequest**](EndPoppySessionRequest.md) |  |  |

### Return type

[**GetPoppySessionStatusResponse**](GetPoppySessionStatusResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The state of the Session. |  -  |
| **401** | invalid_client. |  -  |
| **403** | insufficient_scope. |  -  |
| **404** | not_found: unknown organization, or the protocol is switched off. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getpoppytasks"></a>
# **GetPoppyTasks**
> PoppyTasksResponse GetPoppyTasks (string poppySession, string poppyVersion, string orgId)

Tasks endpoint (Personal Agent Protocol, section 9)

For Personal Agents. Returns the tasks that the organization chose not to offer through the protocol, the skills it publishes and where to send feedback. The request carries the Poppy-Session and Poppy-Version headers and no access token. Served only while the organization lets LumoAuth host its tasks endpoint.

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
    public class GetPoppyTasksExample
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
            var apiInstance = new PersonalAgentProtocolApi(httpClient, config, httpClientHandler);
            var poppySession = "poppySession_example";  // string | The Session JWT of this request (specification 5.2).
            var poppyVersion = 1.0;  // string | 
            var orgId = "orgId_example";  // string | 

            try
            {
                // Tasks endpoint (Personal Agent Protocol, section 9)
                PoppyTasksResponse result = apiInstance.GetPoppyTasks(poppySession, poppyVersion, orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling PersonalAgentProtocolApi.GetPoppyTasks: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetPoppyTasksWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Tasks endpoint (Personal Agent Protocol, section 9)
    ApiResponse<PoppyTasksResponse> response = apiInstance.GetPoppyTasksWithHttpInfo(poppySession, poppyVersion, orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PersonalAgentProtocolApi.GetPoppyTasksWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **poppySession** | **string** | The Session JWT of this request (specification 5.2). |  |
| **poppyVersion** | **string** |  |  |
| **orgId** | **string** |  |  |

### Return type

[**PoppyTasksResponse**](PoppyTasksResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The tasks response. The same for every Session. |  -  |
| **400** | invalid_session, session_ended or version_unsupported, in a JSON body. |  -  |
| **404** | not_found: the tasks endpoint is not hosted here. |  -  |
| **429** | too_many_requests, with Retry-After. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="sendpoppyfeedback"></a>
# **SendPoppyFeedback**
> void SendPoppyFeedback (string poppySession, string poppyVersion, string orgId, SendPoppyFeedbackRequest sendPoppyFeedbackRequest)

Feedback endpoint (Personal Agent Protocol 9.3)

For Personal Agents. Reports a task that its user wanted and that could not be done through the protocol. The Session header is verified before the body is read; a report needs no scope and may be signed in or signed out. The text of a report is data: it is shown to administrators and never treated as instructions. Served only while the organization lets LumoAuth collect feedback.

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
    public class SendPoppyFeedbackExample
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
            var apiInstance = new PersonalAgentProtocolApi(httpClient, config, httpClientHandler);
            var poppySession = "poppySession_example";  // string | 
            var poppyVersion = 1.0;  // string | 
            var orgId = "orgId_example";  // string | 
            var sendPoppyFeedbackRequest = new SendPoppyFeedbackRequest(); // SendPoppyFeedbackRequest | 

            try
            {
                // Feedback endpoint (Personal Agent Protocol 9.3)
                apiInstance.SendPoppyFeedback(poppySession, poppyVersion, orgId, sendPoppyFeedbackRequest);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling PersonalAgentProtocolApi.SendPoppyFeedback: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SendPoppyFeedbackWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Feedback endpoint (Personal Agent Protocol 9.3)
    apiInstance.SendPoppyFeedbackWithHttpInfo(poppySession, poppyVersion, orgId, sendPoppyFeedbackRequest);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PersonalAgentProtocolApi.SendPoppyFeedbackWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **poppySession** | **string** |  |  |
| **poppyVersion** | **string** |  |  |
| **orgId** | **string** |  |  |
| **sendPoppyFeedbackRequest** | [**SendPoppyFeedbackRequest**](SendPoppyFeedbackRequest.md) |  |  |

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | The report was accepted. No body. |  -  |
| **400** | invalid_session, session_ended, version_unsupported, or invalid_request for a malformed or too long report. |  -  |
| **401** | invalid_token, in WWW-Authenticate: the access token of a signed-in report is not valid. |  -  |
| **404** | not_found: feedback is not collected here. |  -  |
| **429** | too_many_requests, with Retry-After. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="verifypoppysession"></a>
# **VerifyPoppySession**
> PoppyVerifyResult VerifyPoppySession (string orgId, PoppyVerifyRequest poppyVerifyRequest)

Verify a Personal Agent's request

For your own APIs. Forward the method, the public URL and the protocol headers of a request that a Personal Agent sent you. LumoAuth verifies the Session header (the agent's metadata document and keys, the delegation, the binding to the method, the URL and the access token), validates the access token, and starts or continues the Session. The answer is always 200: `active` says whether the request is verified, and for a refusal `response` holds the status, headers and body that you return to the Personal Agent unchanged. Authenticate as one of your confidential applications (client_secret_basic, client_secret_post or private_key_jwt) whose allowed scopes include `poppy:verify`.

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
    public class VerifyPoppySessionExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://app.lumoauth.dev";
            // Configure HTTP basic authorization: ClientAuth
            config.Username = "YOUR_USERNAME";
            config.Password = "YOUR_PASSWORD";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new PersonalAgentProtocolApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var poppyVerifyRequest = new PoppyVerifyRequest(); // PoppyVerifyRequest | 

            try
            {
                // Verify a Personal Agent's request
                PoppyVerifyResult result = apiInstance.VerifyPoppySession(orgId, poppyVerifyRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling PersonalAgentProtocolApi.VerifyPoppySession: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the VerifyPoppySessionWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Verify a Personal Agent's request
    ApiResponse<PoppyVerifyResult> response = apiInstance.VerifyPoppySessionWithHttpInfo(orgId, poppyVerifyRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling PersonalAgentProtocolApi.VerifyPoppySessionWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **poppyVerifyRequest** | [**PoppyVerifyRequest**](PoppyVerifyRequest.md) |  |  |

### Return type

[**PoppyVerifyResult**](PoppyVerifyResult.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The verification result. |  -  |
| **400** | invalid_request: method, url or headers missing or malformed. |  -  |
| **401** | invalid_client: the calling application did not authenticate. |  -  |
| **403** | insufficient_scope: the calling application may not verify Session headers. |  -  |
| **404** | not_found: unknown organization, or the protocol is switched off. |  -  |
| **429** | too_many_requests, with Retry-After. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

