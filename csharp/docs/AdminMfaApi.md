# LumoAuth.ApiClient.Api.AdminMfaApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**DeleteUserAuthenticator**](AdminMfaApi.md#deleteuserauthenticator) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/authenticators/{authenticatorId} | Remove one of a user&#39;s authenticators |
| [**GetMfaCoverageReport**](AdminMfaApi.md#getmfacoveragereport) | **GET** /orgs/{orgId}/api/v1/admin/reports/mfa-coverage | MFA enrollment coverage |
| [**GetMfaPolicy**](AdminMfaApi.md#getmfapolicy) | **GET** /orgs/{orgId}/api/v1/admin/policies/mfa | Get the MFA policy |
| [**IssueTemporaryAccessCode**](AdminMfaApi.md#issuetemporaryaccesscode) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/temporary-access-code | Issue a temporary access code |
| [**ListUserAuthenticators**](AdminMfaApi.md#listuserauthenticators) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/authenticators | List a user&#39;s authenticators |
| [**UpdateMfaPolicy**](AdminMfaApi.md#updatemfapolicy) | **PUT** /orgs/{orgId}/api/v1/admin/policies/mfa | Update the MFA policy |

<a id="deleteuserauthenticator"></a>
# **DeleteUserAuthenticator**
> DeleteUserAuthenticatorResponse DeleteUserAuthenticator (string orgId, string userId, string authenticatorId)

Remove one of a user's authenticators

Revokes a single authenticator (e.g. a lost phone). Trusted devices are revoked and the user is notified. Does not bypass the tenant MFA requirement: the user is prompted to enroll again at next sign-in.

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
    public class DeleteUserAuthenticatorExample
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
            var apiInstance = new AdminMfaApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var userId = "userId_example";  // string | 
            var authenticatorId = "authenticatorId_example";  // string | 

            try
            {
                // Remove one of a user's authenticators
                DeleteUserAuthenticatorResponse result = apiInstance.DeleteUserAuthenticator(orgId, userId, authenticatorId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminMfaApi.DeleteUserAuthenticator: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DeleteUserAuthenticatorWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Remove one of a user's authenticators
    ApiResponse<DeleteUserAuthenticatorResponse> response = apiInstance.DeleteUserAuthenticatorWithHttpInfo(orgId, userId, authenticatorId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminMfaApi.DeleteUserAuthenticatorWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **userId** | **string** |  |  |
| **authenticatorId** | **string** |  |  |

### Return type

[**DeleteUserAuthenticatorResponse**](DeleteUserAuthenticatorResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Removed |  -  |
| **404** | User or authenticator not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getmfacoveragereport"></a>
# **GetMfaCoverageReport**
> GetMfaCoverageReportResponse GetMfaCoverageReport (string orgId)

MFA enrollment coverage

Share of users with MFA, by factor type and strongest tier, plus users inside or past the enrollment grace period (POL-002).

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
    public class GetMfaCoverageReportExample
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
            var apiInstance = new AdminMfaApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // MFA enrollment coverage
                GetMfaCoverageReportResponse result = apiInstance.GetMfaCoverageReport(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminMfaApi.GetMfaCoverageReport: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetMfaCoverageReportWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // MFA enrollment coverage
    ApiResponse<GetMfaCoverageReportResponse> response = apiInstance.GetMfaCoverageReportWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminMfaApi.GetMfaCoverageReportWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

[**GetMfaCoverageReportResponse**](GetMfaCoverageReportResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Coverage report |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getmfapolicy"></a>
# **GetMfaPolicy**
> GetMfaPolicyResponse GetMfaPolicy (string orgId)

Get the MFA policy

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
    public class GetMfaPolicyExample
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
            var apiInstance = new AdminMfaApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // Get the MFA policy
                GetMfaPolicyResponse result = apiInstance.GetMfaPolicy(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminMfaApi.GetMfaPolicy: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetMfaPolicyWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get the MFA policy
    ApiResponse<GetMfaPolicyResponse> response = apiInstance.GetMfaPolicyWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminMfaApi.GetMfaPolicyWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

[**GetMfaPolicyResponse**](GetMfaPolicyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | MFA policy |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="issuetemporaryaccesscode"></a>
# **IssueTemporaryAccessCode**
> IssueTemporaryAccessCodeResponse IssueTemporaryAccessCode (string orgId, string userId, IssueTemporaryAccessCodeRequest issueTemporaryAccessCodeRequest)

Issue a temporary access code

Admin-assisted recovery (REC-006/007). The code satisfies the second factor once (or until it expires) and only lets the user enroll new factors. Requires a reason; audited as mfa.tap.issued and notified to the user. Signed-in admins must have passed MFA in the last 10 minutes (send X-MFA-Challenge with an approved step-up challenge when calling with a user token).

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
    public class IssueTemporaryAccessCodeExample
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
            var apiInstance = new AdminMfaApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var userId = "userId_example";  // string | 
            var issueTemporaryAccessCodeRequest = new IssueTemporaryAccessCodeRequest(); // IssueTemporaryAccessCodeRequest | 

            try
            {
                // Issue a temporary access code
                IssueTemporaryAccessCodeResponse result = apiInstance.IssueTemporaryAccessCode(orgId, userId, issueTemporaryAccessCodeRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminMfaApi.IssueTemporaryAccessCode: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the IssueTemporaryAccessCodeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Issue a temporary access code
    ApiResponse<IssueTemporaryAccessCodeResponse> response = apiInstance.IssueTemporaryAccessCodeWithHttpInfo(orgId, userId, issueTemporaryAccessCodeRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminMfaApi.IssueTemporaryAccessCodeWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **userId** | **string** |  |  |
| **issueTemporaryAccessCodeRequest** | [**IssueTemporaryAccessCodeRequest**](IssueTemporaryAccessCodeRequest.md) |  |  |

### Return type

[**IssueTemporaryAccessCodeResponse**](IssueTemporaryAccessCodeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Issued — the code is returned once |  -  |
| **403** | step_up_required |  -  |
| **422** | Reason missing |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="listuserauthenticators"></a>
# **ListUserAuthenticators**
> ListUserAuthenticatorsResponse ListUserAuthenticators (string orgId, string userId)

List a user's authenticators

Every enrolled authenticator (passkeys, push devices, authenticator apps, phone numbers, email codes, recovery codes) with tier, state and usage. Secrets are never returned.

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
    public class ListUserAuthenticatorsExample
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
            var apiInstance = new AdminMfaApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var userId = "userId_example";  // string | 

            try
            {
                // List a user's authenticators
                ListUserAuthenticatorsResponse result = apiInstance.ListUserAuthenticators(orgId, userId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminMfaApi.ListUserAuthenticators: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListUserAuthenticatorsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List a user's authenticators
    ApiResponse<ListUserAuthenticatorsResponse> response = apiInstance.ListUserAuthenticatorsWithHttpInfo(orgId, userId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminMfaApi.ListUserAuthenticatorsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **userId** | **string** |  |  |

### Return type

[**ListUserAuthenticatorsResponse**](ListUserAuthenticatorsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Authenticators |  -  |
| **404** | User not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="updatemfapolicy"></a>
# **UpdateMfaPolicy**
> UpdateMfaPolicyResponse UpdateMfaPolicy (string orgId, MfaPolicy mfaPolicy)

Update the MFA policy

Partial updates are accepted; unknown keys are ignored and values are clamped to their documented ranges. Takes effect at each user's next authentication (POL-004).

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
    public class UpdateMfaPolicyExample
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
            var apiInstance = new AdminMfaApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var mfaPolicy = new MfaPolicy(); // MfaPolicy | 

            try
            {
                // Update the MFA policy
                UpdateMfaPolicyResponse result = apiInstance.UpdateMfaPolicy(orgId, mfaPolicy);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AdminMfaApi.UpdateMfaPolicy: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the UpdateMfaPolicyWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Update the MFA policy
    ApiResponse<UpdateMfaPolicyResponse> response = apiInstance.UpdateMfaPolicyWithHttpInfo(orgId, mfaPolicy);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AdminMfaApi.UpdateMfaPolicyWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **mfaPolicy** | [**MfaPolicy**](MfaPolicy.md) |  |  |

### Return type

[**UpdateMfaPolicyResponse**](UpdateMfaPolicyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated policy |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

