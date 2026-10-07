# LumoAuth.ApiClient.Api.MfaApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CreateMfaChallenge**](MfaApi.md#createmfachallenge) | **POST** /orgs/{orgId}/api/v1/mfa/challenges | Start an MFA challenge |
| [**DeleteAuthenticator**](MfaApi.md#deleteauthenticator) | **DELETE** /orgs/{orgId}/api/v1/me/authenticators/{id} | Remove an authenticator |
| [**EnrollAuthenticator**](MfaApi.md#enrollauthenticator) | **POST** /orgs/{orgId}/api/v1/me/authenticators/{type}/enroll | Start enrolling an authenticator |
| [**GenerateRecoveryCodes**](MfaApi.md#generaterecoverycodes) | **POST** /orgs/{orgId}/api/v1/me/recovery-codes | Generate recovery codes |
| [**GetMfaChallenge**](MfaApi.md#getmfachallenge) | **GET** /orgs/{orgId}/api/v1/mfa/challenges/{id} | Get challenge status |
| [**GetRecoveryCodeStatus**](MfaApi.md#getrecoverycodestatus) | **GET** /orgs/{orgId}/api/v1/me/recovery-codes | Recovery-code status |
| [**ListMyAuthenticators**](MfaApi.md#listmyauthenticators) | **GET** /orgs/{orgId}/api/v1/me/authenticators | List my authenticators |
| [**ListTrustedDevices**](MfaApi.md#listtrusteddevices) | **GET** /orgs/{orgId}/api/v1/me/trusted-devices | List trusted devices |
| [**RevokeTrustedDevice**](MfaApi.md#revoketrusteddevice) | **DELETE** /orgs/{orgId}/api/v1/me/trusted-devices/{id} | Revoke a trusted device |
| [**UpdateAuthenticator**](MfaApi.md#updateauthenticator) | **PATCH** /orgs/{orgId}/api/v1/me/authenticators/{id} | Rename an authenticator or make it the default |
| [**VerifyAuthenticator**](MfaApi.md#verifyauthenticator) | **POST** /orgs/{orgId}/api/v1/me/authenticators/{id}/verify | Verify a pending authenticator |
| [**VerifyMfaChallenge**](MfaApi.md#verifymfachallenge) | **POST** /orgs/{orgId}/api/v1/mfa/challenges/{id}/verify | Answer a challenge |

<a id="createmfachallenge"></a>
# **CreateMfaChallenge**
> MfaChallenge CreateMfaChallenge (string orgId, CreateMfaChallengeRequest? createMfaChallengeRequest = null)

Start an MFA challenge

Starts the user's default factor (or `authenticator_id`) and delivers it: sends the push (with number_match to display), texts or emails a code, or returns WebAuthn request options (`public_key`). For push step-up, `action_description` is shown in the app (e.g. \"Approve transfer of $500 to •••• 1122\").

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
    public class CreateMfaChallengeExample
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
            var apiInstance = new MfaApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var createMfaChallengeRequest = new CreateMfaChallengeRequest?(); // CreateMfaChallengeRequest? |  (optional) 

            try
            {
                // Start an MFA challenge
                MfaChallenge result = apiInstance.CreateMfaChallenge(orgId, createMfaChallengeRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MfaApi.CreateMfaChallenge: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CreateMfaChallengeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Start an MFA challenge
    ApiResponse<MfaChallenge> response = apiInstance.CreateMfaChallengeWithHttpInfo(orgId, createMfaChallengeRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MfaApi.CreateMfaChallengeWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **createMfaChallengeRequest** | [**CreateMfaChallengeRequest?**](CreateMfaChallengeRequest?.md) |  | [optional]  |

### Return type

[**MfaChallenge**](MfaChallenge.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Challenge issued |  -  |
| **404** | authenticator_not_found (no factor meets the tier) |  -  |
| **429** | mfa_locked / rate_limited / push_suspended |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="deleteauthenticator"></a>
# **DeleteAuthenticator**
> void DeleteAuthenticator (string orgId, string id, string? xMFAChallenge = null)

Remove an authenticator

Needs fresh MFA with a different factor where one exists (MGT-004). Blocked with 409 last_factor_required when the organization requires MFA and this is the last factor.

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
    public class DeleteAuthenticatorExample
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
            var apiInstance = new MfaApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var id = "id_example";  // string | 
            var xMFAChallenge = "xMFAChallenge_example";  // string? | Approved step_up challenge id (optional) 

            try
            {
                // Remove an authenticator
                apiInstance.DeleteAuthenticator(orgId, id, xMFAChallenge);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MfaApi.DeleteAuthenticator: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DeleteAuthenticatorWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Remove an authenticator
    apiInstance.DeleteAuthenticatorWithHttpInfo(orgId, id, xMFAChallenge);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MfaApi.DeleteAuthenticatorWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **id** | **string** |  |  |
| **xMFAChallenge** | **string?** | Approved step_up challenge id | [optional]  |

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
| **204** | Removed |  -  |
| **403** | step_up_required |  -  |
| **409** | last_factor_required |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="enrollauthenticator"></a>
# **EnrollAuthenticator**
> EnrollAuthenticator201Response EnrollAuthenticator (string orgId, string type, EnrollAuthenticatorRequest? enrollAuthenticatorRequest = null)

Start enrolling an authenticator

Creates a pending authenticator (purged after 15 minutes unless verified). totp → otpauth URI, secret and QR; sms_otp {phone, country?} → code sent; email_otp → code sent; push → QR / deep link / activation code for the LumoAuth app; passkey → WebAuthn creation options (`public_key`).

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
    public class EnrollAuthenticatorExample
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
            var apiInstance = new MfaApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var type = "totp";  // string | 
            var enrollAuthenticatorRequest = new EnrollAuthenticatorRequest?(); // EnrollAuthenticatorRequest? |  (optional) 

            try
            {
                // Start enrolling an authenticator
                EnrollAuthenticator201Response result = apiInstance.EnrollAuthenticator(orgId, type, enrollAuthenticatorRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MfaApi.EnrollAuthenticator: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the EnrollAuthenticatorWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Start enrolling an authenticator
    ApiResponse<EnrollAuthenticator201Response> response = apiInstance.EnrollAuthenticatorWithHttpInfo(orgId, type, enrollAuthenticatorRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MfaApi.EnrollAuthenticatorWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **type** | **string** |  |  |
| **enrollAuthenticatorRequest** | [**EnrollAuthenticatorRequest?**](EnrollAuthenticatorRequest?.md) |  | [optional]  |

### Return type

[**EnrollAuthenticator201Response**](EnrollAuthenticator201Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Pending authenticator and what the client needs to finish (shape depends on {type}) |  -  |
| **403** | factor_not_allowed or step_up_required |  -  |
| **422** | invalid_input (e.g. invalid phone number) |  -  |
| **429** | rate_limited |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="generaterecoverycodes"></a>
# **GenerateRecoveryCodes**
> GenerateRecoveryCodesResponse GenerateRecoveryCodes (string orgId)

Generate recovery codes

10 single-use XXXXX-XXXXX codes, returned once; any previous set stops working. Needs fresh MFA when replacing an existing set.

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
    public class GenerateRecoveryCodesExample
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
            var apiInstance = new MfaApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // Generate recovery codes
                GenerateRecoveryCodesResponse result = apiInstance.GenerateRecoveryCodes(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MfaApi.GenerateRecoveryCodes: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GenerateRecoveryCodesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Generate recovery codes
    ApiResponse<GenerateRecoveryCodesResponse> response = apiInstance.GenerateRecoveryCodesWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MfaApi.GenerateRecoveryCodesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

[**GenerateRecoveryCodesResponse**](GenerateRecoveryCodesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Codes (shown once) |  -  |
| **403** | step_up_required |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getmfachallenge"></a>
# **GetMfaChallenge**
> MfaChallenge GetMfaChallenge (string orgId, string id)

Get challenge status

Poll this for push challenges; status turns approved / denied / expired.

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
    public class GetMfaChallengeExample
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
            var apiInstance = new MfaApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var id = "id_example";  // string | 

            try
            {
                // Get challenge status
                MfaChallenge result = apiInstance.GetMfaChallenge(orgId, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MfaApi.GetMfaChallenge: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetMfaChallengeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Get challenge status
    ApiResponse<MfaChallenge> response = apiInstance.GetMfaChallengeWithHttpInfo(orgId, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MfaApi.GetMfaChallengeWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **id** | **string** |  |  |

### Return type

[**MfaChallenge**](MfaChallenge.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Challenge |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="getrecoverycodestatus"></a>
# **GetRecoveryCodeStatus**
> GetRecoveryCodeStatusResponse GetRecoveryCodeStatus (string orgId)

Recovery-code status

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
    public class GetRecoveryCodeStatusExample
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
            var apiInstance = new MfaApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // Recovery-code status
                GetRecoveryCodeStatusResponse result = apiInstance.GetRecoveryCodeStatus(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MfaApi.GetRecoveryCodeStatus: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the GetRecoveryCodeStatusWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Recovery-code status
    ApiResponse<GetRecoveryCodeStatusResponse> response = apiInstance.GetRecoveryCodeStatusWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MfaApi.GetRecoveryCodeStatusWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

[**GetRecoveryCodeStatusResponse**](GetRecoveryCodeStatusResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Remaining count |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="listmyauthenticators"></a>
# **ListMyAuthenticators**
> ListMyAuthenticatorsResponse ListMyAuthenticators (string orgId)

List my authenticators

Every enrolled authenticator with tier and usage, the protection status (MGT-006), recovery-code count, and which factor types the organization allows.

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
    public class ListMyAuthenticatorsExample
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
            var apiInstance = new MfaApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // List my authenticators
                ListMyAuthenticatorsResponse result = apiInstance.ListMyAuthenticators(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MfaApi.ListMyAuthenticators: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListMyAuthenticatorsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List my authenticators
    ApiResponse<ListMyAuthenticatorsResponse> response = apiInstance.ListMyAuthenticatorsWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MfaApi.ListMyAuthenticatorsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

[**ListMyAuthenticatorsResponse**](ListMyAuthenticatorsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Authenticators |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="listtrusteddevices"></a>
# **ListTrustedDevices**
> ListTrustedDevicesResponse ListTrustedDevices (string orgId)

List trusted devices

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
    public class ListTrustedDevicesExample
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
            var apiInstance = new MfaApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 

            try
            {
                // List trusted devices
                ListTrustedDevicesResponse result = apiInstance.ListTrustedDevices(orgId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MfaApi.ListTrustedDevices: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ListTrustedDevicesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // List trusted devices
    ApiResponse<ListTrustedDevicesResponse> response = apiInstance.ListTrustedDevicesWithHttpInfo(orgId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MfaApi.ListTrustedDevicesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |

### Return type

[**ListTrustedDevicesResponse**](ListTrustedDevicesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Trusted devices |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="revoketrusteddevice"></a>
# **RevokeTrustedDevice**
> void RevokeTrustedDevice (string orgId, string id)

Revoke a trusted device

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
    public class RevokeTrustedDeviceExample
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
            var apiInstance = new MfaApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var id = "id_example";  // string | 

            try
            {
                // Revoke a trusted device
                apiInstance.RevokeTrustedDevice(orgId, id);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MfaApi.RevokeTrustedDevice: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the RevokeTrustedDeviceWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Revoke a trusted device
    apiInstance.RevokeTrustedDeviceWithHttpInfo(orgId, id);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MfaApi.RevokeTrustedDeviceWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **id** | **string** |  |  |

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
| **204** | Revoked |  -  |
| **404** | Not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="updateauthenticator"></a>
# **UpdateAuthenticator**
> MfaAuthenticator UpdateAuthenticator (string orgId, string id, UpdateAuthenticatorRequest updateAuthenticatorRequest)

Rename an authenticator or make it the default

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
    public class UpdateAuthenticatorExample
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
            var apiInstance = new MfaApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var id = "id_example";  // string | 
            var updateAuthenticatorRequest = new UpdateAuthenticatorRequest(); // UpdateAuthenticatorRequest | 

            try
            {
                // Rename an authenticator or make it the default
                MfaAuthenticator result = apiInstance.UpdateAuthenticator(orgId, id, updateAuthenticatorRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MfaApi.UpdateAuthenticator: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the UpdateAuthenticatorWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Rename an authenticator or make it the default
    ApiResponse<MfaAuthenticator> response = apiInstance.UpdateAuthenticatorWithHttpInfo(orgId, id, updateAuthenticatorRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MfaApi.UpdateAuthenticatorWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **id** | **string** |  |  |
| **updateAuthenticatorRequest** | [**UpdateAuthenticatorRequest**](UpdateAuthenticatorRequest.md) |  |  |

### Return type

[**MfaAuthenticator**](MfaAuthenticator.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="verifyauthenticator"></a>
# **VerifyAuthenticator**
> MfaAuthenticator VerifyAuthenticator (string orgId, string id, VerifyMfaChallengeRequest? verifyMfaChallengeRequest = null)

Verify a pending authenticator

Proof of possession that activates the authenticator: `{code}` for totp / sms_otp / email_otp, `{credential}` (the PublicKeyCredential JSON) for passkey, `{}` to poll a push enrollment (returns state pending, awaiting_test with number_match, or active). The first active factor becomes the default.

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
    public class VerifyAuthenticatorExample
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
            var apiInstance = new MfaApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var id = "id_example";  // string | 
            var verifyMfaChallengeRequest = new VerifyMfaChallengeRequest?(); // VerifyMfaChallengeRequest? |  (optional) 

            try
            {
                // Verify a pending authenticator
                MfaAuthenticator result = apiInstance.VerifyAuthenticator(orgId, id, verifyMfaChallengeRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MfaApi.VerifyAuthenticator: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the VerifyAuthenticatorWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Verify a pending authenticator
    ApiResponse<MfaAuthenticator> response = apiInstance.VerifyAuthenticatorWithHttpInfo(orgId, id, verifyMfaChallengeRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MfaApi.VerifyAuthenticatorWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **id** | **string** |  |  |
| **verifyMfaChallengeRequest** | [**VerifyMfaChallengeRequest?**](VerifyMfaChallengeRequest?.md) |  | [optional]  |

### Return type

[**MfaAuthenticator**](MfaAuthenticator.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Active authenticator, or current push-enrollment state |  -  |
| **400** | invalid_code |  -  |
| **410** | Enrollment expired |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="verifymfachallenge"></a>
# **VerifyMfaChallenge**
> MfaChallenge VerifyMfaChallenge (string orgId, string id, VerifyMfaChallengeRequest verifyMfaChallengeRequest)

Answer a challenge

`{code}` for totp / sms_otp / email_otp / recovery_code (and the LumoAuth app's offline code for push), or `{credential}` with the WebAuthn assertion for passkeys. 5 wrong answers exhaust the challenge; 10 failures in 15 minutes lock MFA for 15 minutes.

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
    public class VerifyMfaChallengeExample
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
            var apiInstance = new MfaApi(httpClient, config, httpClientHandler);
            var orgId = "orgId_example";  // string | 
            var id = "id_example";  // string | 
            var verifyMfaChallengeRequest = new VerifyMfaChallengeRequest(); // VerifyMfaChallengeRequest | 

            try
            {
                // Answer a challenge
                MfaChallenge result = apiInstance.VerifyMfaChallenge(orgId, id, verifyMfaChallengeRequest);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling MfaApi.VerifyMfaChallenge: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the VerifyMfaChallengeWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Answer a challenge
    ApiResponse<MfaChallenge> response = apiInstance.VerifyMfaChallengeWithHttpInfo(orgId, id, verifyMfaChallengeRequest);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling MfaApi.VerifyMfaChallengeWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **orgId** | **string** |  |  |
| **id** | **string** |  |  |
| **verifyMfaChallengeRequest** | [**VerifyMfaChallengeRequest**](VerifyMfaChallengeRequest.md) |  |  |

### Return type

[**MfaChallenge**](MfaChallenge.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Approved |  -  |
| **400** | invalid_code (with attempts_remaining) |  -  |
| **403** | challenge_binding_mismatch |  -  |
| **410** | challenge_expired |  -  |
| **429** | mfa_locked |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

