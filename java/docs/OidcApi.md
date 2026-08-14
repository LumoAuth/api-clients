# OidcApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**checkSession**](OidcApi.md#checkSession) | **GET** /orgs/{orgId}/api/v1/oauth/check_session |  |
| [**logout**](OidcApi.md#logout) | **GET** /orgs/{orgId}/api/v1/oauth/logout |  |
| [**logoutPost**](OidcApi.md#logoutPost) | **POST** /orgs/{orgId}/api/v1/oauth/logout |  |
| [**userinfo**](OidcApi.md#userinfo) | **GET** /orgs/{orgId}/api/v1/oauth/userinfo | OIDC UserInfo Endpoint |
| [**userinfoPost**](OidcApi.md#userinfoPost) | **POST** /orgs/{orgId}/api/v1/oauth/userinfo | OIDC UserInfo Endpoint |


<a id="checkSession"></a>
# **checkSession**
> checkSession(orgId)



### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OidcApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    OidcApi apiInstance = new OidcApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.checkSession(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OidcApi#checkSession");
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

<a id="logout"></a>
# **logout**
> logout(orgId)



### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OidcApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    OidcApi apiInstance = new OidcApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.logout(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OidcApi#logout");
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

<a id="logoutPost"></a>
# **logoutPost**
> logoutPost(orgId)



### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OidcApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    OidcApi apiInstance = new OidcApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.logoutPost(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OidcApi#logoutPost");
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

<a id="userinfo"></a>
# **userinfo**
> userinfo(orgId)

OIDC UserInfo Endpoint

Returns claims about the authenticated End-User. Requires a valid access token with appropriate scopes.  Supported scopes and claims: - openid: sub - profile: name, given_name, family_name, nickname, picture, etc. - email: email, email_verified - phone: phone_number, phone_number_verified - address: address

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OidcApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    OidcApi apiInstance = new OidcApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.userinfo(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OidcApi#userinfo");
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

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

<a id="userinfoPost"></a>
# **userinfoPost**
> userinfoPost(orgId)

OIDC UserInfo Endpoint

Returns claims about the authenticated End-User. Requires a valid access token with appropriate scopes.  Supported scopes and claims: - openid: sub - profile: name, given_name, family_name, nickname, picture, etc. - email: email, email_verified - phone: phone_number, phone_number_verified - address: address

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.OidcApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: BearerAuth
    HttpBearerAuth BearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("BearerAuth");
    BearerAuth.setBearerToken("BEARER TOKEN");

    OidcApi apiInstance = new OidcApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.userinfoPost(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling OidcApi#userinfoPost");
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

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **0** |  |  -  |

