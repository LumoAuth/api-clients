# MfaApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createMfaChallenge**](MfaApi.md#createMfaChallenge) | **POST** /orgs/{orgId}/api/v1/mfa/challenges | Start an MFA challenge |
| [**deleteAuthenticator**](MfaApi.md#deleteAuthenticator) | **DELETE** /orgs/{orgId}/api/v1/me/authenticators/{id} | Remove an authenticator |
| [**enrollAuthenticator**](MfaApi.md#enrollAuthenticator) | **POST** /orgs/{orgId}/api/v1/me/authenticators/{type}/enroll | Start enrolling an authenticator |
| [**generateRecoveryCodes**](MfaApi.md#generateRecoveryCodes) | **POST** /orgs/{orgId}/api/v1/me/recovery-codes | Generate recovery codes |
| [**getMfaChallenge**](MfaApi.md#getMfaChallenge) | **GET** /orgs/{orgId}/api/v1/mfa/challenges/{id} | Get challenge status |
| [**getRecoveryCodeStatus**](MfaApi.md#getRecoveryCodeStatus) | **GET** /orgs/{orgId}/api/v1/me/recovery-codes | Recovery-code status |
| [**listMyAuthenticators**](MfaApi.md#listMyAuthenticators) | **GET** /orgs/{orgId}/api/v1/me/authenticators | List my authenticators |
| [**listTrustedDevices**](MfaApi.md#listTrustedDevices) | **GET** /orgs/{orgId}/api/v1/me/trusted-devices | List trusted devices |
| [**revokeTrustedDevice**](MfaApi.md#revokeTrustedDevice) | **DELETE** /orgs/{orgId}/api/v1/me/trusted-devices/{id} | Revoke a trusted device |
| [**updateAuthenticator**](MfaApi.md#updateAuthenticator) | **PATCH** /orgs/{orgId}/api/v1/me/authenticators/{id} | Rename an authenticator or make it the default |
| [**verifyAuthenticator**](MfaApi.md#verifyAuthenticator) | **POST** /orgs/{orgId}/api/v1/me/authenticators/{id}/verify | Verify a pending authenticator |
| [**verifyMfaChallenge**](MfaApi.md#verifyMfaChallenge) | **POST** /orgs/{orgId}/api/v1/mfa/challenges/{id}/verify | Answer a challenge |


<a id="createMfaChallenge"></a>
# **createMfaChallenge**
> MfaChallenge createMfaChallenge(orgId, createMfaChallengeRequest)

Start an MFA challenge

Starts the user&#39;s default factor (or &#x60;authenticator_id&#x60;) and delivers it: sends the push (with number_match to display), texts or emails a code, or returns WebAuthn request options (&#x60;public_key&#x60;). For push step-up, &#x60;action_description&#x60; is shown in the app (e.g. \&quot;Approve transfer of $500 to •••• 1122\&quot;).

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.MfaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    MfaApi apiInstance = new MfaApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    CreateMfaChallengeRequest createMfaChallengeRequest = new CreateMfaChallengeRequest(); // CreateMfaChallengeRequest | 
    try {
      MfaChallenge result = apiInstance.createMfaChallenge(orgId, createMfaChallengeRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MfaApi#createMfaChallenge");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **createMfaChallengeRequest** | [**CreateMfaChallengeRequest**](CreateMfaChallengeRequest.md)|  | [optional] |

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

<a id="deleteAuthenticator"></a>
# **deleteAuthenticator**
> deleteAuthenticator(orgId, id, xMFAChallenge)

Remove an authenticator

Needs fresh MFA with a different factor where one exists (MGT-004). Blocked with 409 last_factor_required when the organization requires MFA and this is the last factor.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.MfaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    MfaApi apiInstance = new MfaApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String id = "id_example"; // String | 
    String xMFAChallenge = "xMFAChallenge_example"; // String | Approved step_up challenge id
    try {
      apiInstance.deleteAuthenticator(orgId, id, xMFAChallenge);
    } catch (ApiException e) {
      System.err.println("Exception when calling MfaApi#deleteAuthenticator");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **id** | **String**|  | |
| **xMFAChallenge** | **String**| Approved step_up challenge id | [optional] |

### Return type

null (empty response body)

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

<a id="enrollAuthenticator"></a>
# **enrollAuthenticator**
> EnrollAuthenticator201Response enrollAuthenticator(orgId, type, enrollAuthenticatorRequest)

Start enrolling an authenticator

Creates a pending authenticator (purged after 15 minutes unless verified). totp → otpauth URI, secret and QR; sms_otp {phone, country?} → code sent; email_otp → code sent; push → QR / deep link / activation code for the LumoAuth app; passkey → WebAuthn creation options (&#x60;public_key&#x60;).

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.MfaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    MfaApi apiInstance = new MfaApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String type = "totp"; // String | 
    EnrollAuthenticatorRequest enrollAuthenticatorRequest = new EnrollAuthenticatorRequest(); // EnrollAuthenticatorRequest | 
    try {
      EnrollAuthenticator201Response result = apiInstance.enrollAuthenticator(orgId, type, enrollAuthenticatorRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MfaApi#enrollAuthenticator");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **type** | **String**|  | [enum: totp, sms_otp, email_otp, push, passkey] |
| **enrollAuthenticatorRequest** | [**EnrollAuthenticatorRequest**](EnrollAuthenticatorRequest.md)|  | [optional] |

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

<a id="generateRecoveryCodes"></a>
# **generateRecoveryCodes**
> GenerateRecoveryCodesResponse generateRecoveryCodes(orgId)

Generate recovery codes

10 single-use XXXXX-XXXXX codes, returned once; any previous set stops working. Needs fresh MFA when replacing an existing set.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.MfaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    MfaApi apiInstance = new MfaApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      GenerateRecoveryCodesResponse result = apiInstance.generateRecoveryCodes(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MfaApi#generateRecoveryCodes");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |

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

<a id="getMfaChallenge"></a>
# **getMfaChallenge**
> MfaChallenge getMfaChallenge(orgId, id)

Get challenge status

Poll this for push challenges; status turns approved / denied / expired.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.MfaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    MfaApi apiInstance = new MfaApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String id = "id_example"; // String | 
    try {
      MfaChallenge result = apiInstance.getMfaChallenge(orgId, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MfaApi#getMfaChallenge");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **id** | **String**|  | |

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

<a id="getRecoveryCodeStatus"></a>
# **getRecoveryCodeStatus**
> GetRecoveryCodeStatusResponse getRecoveryCodeStatus(orgId)

Recovery-code status

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.MfaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    MfaApi apiInstance = new MfaApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      GetRecoveryCodeStatusResponse result = apiInstance.getRecoveryCodeStatus(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MfaApi#getRecoveryCodeStatus");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |

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

<a id="listMyAuthenticators"></a>
# **listMyAuthenticators**
> ListMyAuthenticatorsResponse listMyAuthenticators(orgId)

List my authenticators

Every enrolled authenticator with tier and usage, the protection status (MGT-006), recovery-code count, and which factor types the organization allows.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.MfaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    MfaApi apiInstance = new MfaApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      ListMyAuthenticatorsResponse result = apiInstance.listMyAuthenticators(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MfaApi#listMyAuthenticators");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |

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

<a id="listTrustedDevices"></a>
# **listTrustedDevices**
> ListTrustedDevicesResponse listTrustedDevices(orgId)

List trusted devices

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.MfaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    MfaApi apiInstance = new MfaApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      ListTrustedDevicesResponse result = apiInstance.listTrustedDevices(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MfaApi#listTrustedDevices");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |

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

<a id="revokeTrustedDevice"></a>
# **revokeTrustedDevice**
> revokeTrustedDevice(orgId, id)

Revoke a trusted device

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.MfaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    MfaApi apiInstance = new MfaApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String id = "id_example"; // String | 
    try {
      apiInstance.revokeTrustedDevice(orgId, id);
    } catch (ApiException e) {
      System.err.println("Exception when calling MfaApi#revokeTrustedDevice");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **id** | **String**|  | |

### Return type

null (empty response body)

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

<a id="updateAuthenticator"></a>
# **updateAuthenticator**
> MfaAuthenticator updateAuthenticator(orgId, id, updateAuthenticatorRequest)

Rename an authenticator or make it the default

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.MfaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    MfaApi apiInstance = new MfaApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String id = "id_example"; // String | 
    UpdateAuthenticatorRequest updateAuthenticatorRequest = new UpdateAuthenticatorRequest(); // UpdateAuthenticatorRequest | 
    try {
      MfaAuthenticator result = apiInstance.updateAuthenticator(orgId, id, updateAuthenticatorRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MfaApi#updateAuthenticator");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **id** | **String**|  | |
| **updateAuthenticatorRequest** | [**UpdateAuthenticatorRequest**](UpdateAuthenticatorRequest.md)|  | |

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

<a id="verifyAuthenticator"></a>
# **verifyAuthenticator**
> MfaAuthenticator verifyAuthenticator(orgId, id, verifyMfaChallengeRequest)

Verify a pending authenticator

Proof of possession that activates the authenticator: &#x60;{code}&#x60; for totp / sms_otp / email_otp, &#x60;{credential}&#x60; (the PublicKeyCredential JSON) for passkey, &#x60;{}&#x60; to poll a push enrollment (returns state pending, awaiting_test with number_match, or active). The first active factor becomes the default.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.MfaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    MfaApi apiInstance = new MfaApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String id = "id_example"; // String | 
    VerifyMfaChallengeRequest verifyMfaChallengeRequest = new VerifyMfaChallengeRequest(); // VerifyMfaChallengeRequest | 
    try {
      MfaAuthenticator result = apiInstance.verifyAuthenticator(orgId, id, verifyMfaChallengeRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MfaApi#verifyAuthenticator");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **id** | **String**|  | |
| **verifyMfaChallengeRequest** | [**VerifyMfaChallengeRequest**](VerifyMfaChallengeRequest.md)|  | [optional] |

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

<a id="verifyMfaChallenge"></a>
# **verifyMfaChallenge**
> MfaChallenge verifyMfaChallenge(orgId, id, verifyMfaChallengeRequest)

Answer a challenge

&#x60;{code}&#x60; for totp / sms_otp / email_otp / recovery_code (and the LumoAuth app&#39;s offline code for push), or &#x60;{credential}&#x60; with the WebAuthn assertion for passkeys. 5 wrong answers exhaust the challenge; 10 failures in 15 minutes lock MFA for 15 minutes.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.MfaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure API key authorization: ApiKeyAuth
    ApiKeyAuth ApiKeyAuth = (ApiKeyAuth) defaultClient.getAuthentication("ApiKeyAuth");
    ApiKeyAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ApiKeyAuth.setApiKeyPrefix("Token");

    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    MfaApi apiInstance = new MfaApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String id = "id_example"; // String | 
    VerifyMfaChallengeRequest verifyMfaChallengeRequest = new VerifyMfaChallengeRequest(); // VerifyMfaChallengeRequest | 
    try {
      MfaChallenge result = apiInstance.verifyMfaChallenge(orgId, id, verifyMfaChallengeRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MfaApi#verifyMfaChallenge");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **orgId** | **String**|  | |
| **id** | **String**|  | |
| **verifyMfaChallengeRequest** | [**VerifyMfaChallengeRequest**](VerifyMfaChallengeRequest.md)|  | |

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

