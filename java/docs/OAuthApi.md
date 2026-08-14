# OAuthApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**authorize**](OAuthApi.md#authorize) | **GET** /orgs/{orgId}/api/v1/oauth/authorize |  |
| [**backchannelAuthorize**](OAuthApi.md#backchannelAuthorize) | **POST** /orgs/{orgId}/api/v1/oauth/bc-authorize |  |
| [**deviceAuthorization**](OAuthApi.md#deviceAuthorization) | **POST** /orgs/{orgId}/api/v1/oauth/device_authorization | Device Authorization Endpoint (RFC 8628 Section 3.1 &amp; 3.2) |
| [**getClientConfiguration**](OAuthApi.md#getClientConfiguration) | **GET** /orgs/{orgId}/api/v1/connect/register/{clientId} | Client Configuration Endpoint per OIDC spec Section 4 |
| [**getDeviceVerification**](OAuthApi.md#getDeviceVerification) | **GET** /orgs/{orgId}/api/v1/oauth/device | Device Verification Page (RFC 8628 Section 3.3) |
| [**getOrgSelection**](OAuthApi.md#getOrgSelection) | **GET** /orgs/{orgId}/api/v1/oauth/org-select |  |
| [**introspect**](OAuthApi.md#introspect) | **POST** /orgs/{orgId}/api/v1/oauth/introspect | RFC 7662 - Token Introspection Endpoint |
| [**par**](OAuthApi.md#par) | **POST** /orgs/{orgId}/api/v1/oauth/par |  |
| [**passkeyLogin**](OAuthApi.md#passkeyLogin) | **GET** /orgs/{orgId}/api/v1/oauth/passkey-login |  |
| [**registerClient**](OAuthApi.md#registerClient) | **POST** /orgs/{orgId}/api/v1/connect/register | Client Registration Endpoint per OIDC spec Section 3 |
| [**revoke**](OAuthApi.md#revoke) | **POST** /orgs/{orgId}/api/v1/oauth/revoke | RFC 7009 - Token Revocation Endpoint |
| [**socialCallback**](OAuthApi.md#socialCallback) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Handle social login callback from provider. |
| [**socialCallbackPost**](OAuthApi.md#socialCallbackPost) | **POST** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Handle social login callback from provider. |
| [**socialLogin**](OAuthApi.md#socialLogin) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider} | Initiate social login flow. |
| [**submitAuthorization**](OAuthApi.md#submitAuthorization) | **POST** /orgs/{orgId}/api/v1/oauth/authorize |  |
| [**submitDeviceVerification**](OAuthApi.md#submitDeviceVerification) | **POST** /orgs/{orgId}/api/v1/oauth/device | Device Verification Page (RFC 8628 Section 3.3) |
| [**submitLogin**](OAuthApi.md#submitLogin) | **POST** /orgs/{orgId}/api/v1/oauth/login/submit |  |
| [**submitLoginJson**](OAuthApi.md#submitLoginJson) | **POST** /orgs/{orgId}/api/v1/oauth/login/json | JSON credential login, for applications that render their own sign-in form. |
| [**submitOrgSelection**](OAuthApi.md#submitOrgSelection) | **POST** /orgs/{orgId}/api/v1/oauth/org-select |  |
| [**token**](OAuthApi.md#token) | **POST** /orgs/{orgId}/api/v1/oauth/token | OAuth 2.1 Token Endpoint |


<a id="authorize"></a>
# **authorize**
> authorize(orgId)



### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.authorize(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#authorize");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="backchannelAuthorize"></a>
# **backchannelAuthorize**
> backchannelAuthorize(orgId)



### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP basic authorization: ClientAuth
    HttpBasicAuth ClientAuth = (HttpBasicAuth) defaultClient.getAuthentication("ClientAuth");
    ClientAuth.setUsername("YOUR USERNAME");
    ClientAuth.setPassword("YOUR PASSWORD");

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.backchannelAuthorize(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#backchannelAuthorize");
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

null (empty response body)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="deviceAuthorization"></a>
# **deviceAuthorization**
> deviceAuthorization(orgId)

Device Authorization Endpoint (RFC 8628 Section 3.1 &amp; 3.2)

The device makes a request to the authorization server&#39;s device authorization endpoint, including the client identifier, and MAY also include a scope parameter.  Request: - POST /oauth/device_authorization - Content-Type: application/x-www-form-urlencoded - client_id (REQUIRED) - scope (OPTIONAL)  Response (Section 3.2): - device_code: High-entropy code for device polling - user_code: Short code for user to enter - verification_uri: URL where user should enter the code - verification_uri_complete: URL with user_code embedded (optional) - expires_in: Lifetime of device_code and user_code - interval: Minimum polling interval in seconds

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP basic authorization: ClientAuth
    HttpBasicAuth ClientAuth = (HttpBasicAuth) defaultClient.getAuthentication("ClientAuth");
    ClientAuth.setUsername("YOUR USERNAME");
    ClientAuth.setPassword("YOUR PASSWORD");

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.deviceAuthorization(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#deviceAuthorization");
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

null (empty response body)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="getClientConfiguration"></a>
# **getClientConfiguration**
> getClientConfiguration(orgId, clientId)

Client Configuration Endpoint per OIDC spec Section 4

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

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

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String clientId = "clientId_example"; // String | 
    try {
      apiInstance.getClientConfiguration(orgId, clientId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#getClientConfiguration");
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
| **clientId** | **String**|  | |

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
| **0** |  |  -  |

<a id="getDeviceVerification"></a>
# **getDeviceVerification**
> getDeviceVerification(orgId)

Device Verification Page (RFC 8628 Section 3.3)

This endpoint displays the user verification page where users enter their user_code to authorize the device.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.getDeviceVerification(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#getDeviceVerification");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="getOrgSelection"></a>
# **getOrgSelection**
> getOrgSelection(orgId)



### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.getOrgSelection(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#getOrgSelection");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="introspect"></a>
# **introspect**
> introspect(orgId)

RFC 7662 - Token Introspection Endpoint

Allows resource servers to query the authorization server to determine the active state and meta-information about a token.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP basic authorization: ClientAuth
    HttpBasicAuth ClientAuth = (HttpBasicAuth) defaultClient.getAuthentication("ClientAuth");
    ClientAuth.setUsername("YOUR USERNAME");
    ClientAuth.setPassword("YOUR PASSWORD");

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.introspect(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#introspect");
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

null (empty response body)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="par"></a>
# **par**
> par(orgId)



### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP basic authorization: ClientAuth
    HttpBasicAuth ClientAuth = (HttpBasicAuth) defaultClient.getAuthentication("ClientAuth");
    ClientAuth.setUsername("YOUR USERNAME");
    ClientAuth.setPassword("YOUR PASSWORD");

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.par(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#par");
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

null (empty response body)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="passkeyLogin"></a>
# **passkeyLogin**
> passkeyLogin(orgId)



### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.passkeyLogin(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#passkeyLogin");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="registerClient"></a>
# **registerClient**
> registerClient(orgId)

Client Registration Endpoint per OIDC spec Section 3

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

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

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.registerClient(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#registerClient");
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

null (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="revoke"></a>
# **revoke**
> revoke(orgId)

RFC 7009 - Token Revocation Endpoint

Allows clients to notify the authorization server that a previously obtained token is no longer needed.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP basic authorization: ClientAuth
    HttpBasicAuth ClientAuth = (HttpBasicAuth) defaultClient.getAuthentication("ClientAuth");
    ClientAuth.setUsername("YOUR USERNAME");
    ClientAuth.setPassword("YOUR PASSWORD");

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.revoke(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#revoke");
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

null (empty response body)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="socialCallback"></a>
# **socialCallback**
> socialCallback(orgId, provider)

Handle social login callback from provider.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String provider = "provider_example"; // String | 
    try {
      apiInstance.socialCallback(orgId, provider);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#socialCallback");
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
| **provider** | **String**|  | |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="socialCallbackPost"></a>
# **socialCallbackPost**
> socialCallbackPost(orgId, provider)

Handle social login callback from provider.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String provider = "provider_example"; // String | 
    try {
      apiInstance.socialCallbackPost(orgId, provider);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#socialCallbackPost");
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
| **provider** | **String**|  | |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="socialLogin"></a>
# **socialLogin**
> socialLogin(orgId, provider)

Initiate social login flow.

Redirects to the external provider&#39;s authorization endpoint.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String provider = "provider_example"; // String | 
    try {
      apiInstance.socialLogin(orgId, provider);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#socialLogin");
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
| **provider** | **String**|  | |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="submitAuthorization"></a>
# **submitAuthorization**
> submitAuthorization(orgId)



### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.submitAuthorization(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#submitAuthorization");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="submitDeviceVerification"></a>
# **submitDeviceVerification**
> submitDeviceVerification(orgId)

Device Verification Page (RFC 8628 Section 3.3)

This endpoint displays the user verification page where users enter their user_code to authorize the device.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.submitDeviceVerification(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#submitDeviceVerification");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="submitLogin"></a>
# **submitLogin**
> submitLogin(orgId)



### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.submitLogin(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#submitLogin");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="submitLoginJson"></a>
# **submitLoginJson**
> submitLoginJson(orgId)

JSON credential login, for applications that render their own sign-in form.

The form-post sibling below (&#x60;/login/submit&#x60;) does the same authentication but answers with a 302, which a fetch()-driven UI cannot act on. This returns the outcome as data so an embedded form can decide what to show — an MFA prompt, a field error, or continue the OAuth flow.  It deliberately does NOT mint tokens. On success it establishes the end-user session, exactly as the hosted login page does; the caller then continues to /oauth/authorize, which now issues a code without presenting a login screen. Keeping code issuance in one place means this endpoint cannot become a second, weaker way to obtain tokens.  Responses:   200 {\&quot;status\&quot;:\&quot;complete\&quot;}          — signed in, continue to /authorize   200 {\&quot;status\&quot;:\&quot;mfa_required\&quot;}      — challenge the second factor   401 {\&quot;status\&quot;:\&quot;invalid_credentials\&quot;}   403 {\&quot;status\&quot;:\&quot;blocked\&quot;|\&quot;inactive\&quot;}   429 {\&quot;status\&quot;:\&quot;rate_limited\&quot;}

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.submitLoginJson(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#submitLoginJson");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="submitOrgSelection"></a>
# **submitOrgSelection**
> submitOrgSelection(orgId)



### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.submitOrgSelection(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#submitOrgSelection");
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

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="token"></a>
# **token**
> token(orgId)

OAuth 2.1 Token Endpoint

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP basic authorization: ClientAuth
    HttpBasicAuth ClientAuth = (HttpBasicAuth) defaultClient.getAuthentication("ClientAuth");
    ClientAuth.setUsername("YOUR USERNAME");
    ClientAuth.setPassword("YOUR PASSWORD");

    OAuthApi apiInstance = new OAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.token(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OAuthApi#token");
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

null (empty response body)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

