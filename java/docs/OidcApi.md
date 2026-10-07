# OidcApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**checkSession**](OidcApi.md#checkSession) | **GET** /orgs/{orgId}/api/v1/oauth/check_session | OP session-check iframe (OIDC Session Management 1.0) |
| [**logout**](OidcApi.md#logout) | **GET** /orgs/{orgId}/api/v1/oauth/logout | RP-initiated logout (OIDC RP-Initiated Logout 1.0) |
| [**logoutPost**](OidcApi.md#logoutPost) | **POST** /orgs/{orgId}/api/v1/oauth/logout | RP-initiated logout (confirmation submission) |
| [**userinfo**](OidcApi.md#userinfo) | **GET** /orgs/{orgId}/api/v1/oauth/userinfo | OpenID Connect UserInfo endpoint |
| [**userinfoPost**](OidcApi.md#userinfoPost) | **POST** /orgs/{orgId}/api/v1/oauth/userinfo | OpenID Connect UserInfo endpoint (POST) |


<a id="checkSession"></a>
# **checkSession**
> String checkSession(orgId)

OP session-check iframe (OIDC Session Management 1.0)

The check_session_iframe page advertised in discovery. Relying parties embed it and postMessage \&quot;&lt;client_id&gt; &lt;session_state&gt;\&quot; to learn whether the OP session changed. Not a JSON API.

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
      String result = apiInstance.checkSession(orgId);
      System.out.println(result);
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

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | HTML page containing the session-state comparison script. |  -  |

<a id="logout"></a>
# **logout**
> String logout(orgId)

RP-initiated logout (OIDC RP-Initiated Logout 1.0)

end_session_endpoint. Accepts id_token_hint, post_logout_redirect_uri and state. Logs out immediately only when id_token_hint proves the request is about the signed-in user; otherwise the user confirms through a CSRF-protected POST. Triggers front-channel and back-channel logout for the session&#39;s clients. Not a JSON API.

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
      String result = apiInstance.logout(orgId);
      System.out.println(result);
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

**String**

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

<a id="logoutPost"></a>
# **logoutPost**
> String logoutPost(orgId)

RP-initiated logout (confirmation submission)

Same parameters as GET plus the _csrf_token of the confirmation page. Not a JSON API.

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
      String result = apiInstance.logoutPost(orgId);
      System.out.println(result);
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

**String**

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

<a id="userinfo"></a>
# **userinfo**
> UserinfoResponse userinfo(orgId)

OpenID Connect UserInfo endpoint

Returns claims about the authenticated principal for an access token presented as Authorization: Bearer or Authorization: DPoP (with a DPoP proof when the token is sender-constrained). The openid scope is required.

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
      UserinfoResponse result = apiInstance.userinfo(orgId);
      System.out.println(result);
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

<a id="userinfoPost"></a>
# **userinfoPost**
> UserinfoResponse userinfoPost(orgId)

OpenID Connect UserInfo endpoint (POST)

Identical to GET.

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
      UserinfoResponse result = apiInstance.userinfoPost(orgId);
      System.out.println(result);
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

