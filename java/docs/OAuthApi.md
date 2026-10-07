# OAuthApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**authorize**](OAuthApi.md#authorize) | **GET** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint |
| [**backchannelAuthorize**](OAuthApi.md#backchannelAuthorize) | **POST** /orgs/{orgId}/api/v1/oauth/bc-authorize | CIBA backchannel authentication request |
| [**deviceAuthorization**](OAuthApi.md#deviceAuthorization) | **POST** /orgs/{orgId}/api/v1/oauth/device_authorization | Device authorization request (RFC 8628) |
| [**getClientConfiguration**](OAuthApi.md#getClientConfiguration) | **GET** /orgs/{orgId}/api/v1/connect/register/{clientId} | Read a dynamically registered client (RFC 7592 / OIDC DCR §4) |
| [**getDeviceVerification**](OAuthApi.md#getDeviceVerification) | **GET** /orgs/{orgId}/api/v1/oauth/device | Device verification page (RFC 8628 §3.3) |
| [**getOrgSelection**](OAuthApi.md#getOrgSelection) | **GET** /orgs/{orgId}/api/v1/oauth/org-select | Organization selector page |
| [**introspect**](OAuthApi.md#introspect) | **POST** /orgs/{orgId}/api/v1/oauth/introspect | Token introspection (RFC 7662) |
| [**par**](OAuthApi.md#par) | **POST** /orgs/{orgId}/api/v1/oauth/par | Pushed authorization request (RFC 9126) |
| [**passkeyLogin**](OAuthApi.md#passkeyLogin) | **GET** /orgs/{orgId}/api/v1/oauth/passkey-login | Passkey login entry point |
| [**registerClient**](OAuthApi.md#registerClient) | **POST** /orgs/{orgId}/api/v1/connect/register | Dynamic client registration (RFC 7591 / OIDC DCR) |
| [**revoke**](OAuthApi.md#revoke) | **POST** /orgs/{orgId}/api/v1/oauth/revoke | Token revocation (RFC 7009) |
| [**socialCallback**](OAuthApi.md#socialCallback) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback |
| [**socialCallbackPost**](OAuthApi.md#socialCallbackPost) | **POST** /orgs/{orgId}/api/v1/oauth/social/{provider}/callback | Social / enterprise identity-provider callback (form_post) |
| [**socialLogin**](OAuthApi.md#socialLogin) | **GET** /orgs/{orgId}/api/v1/oauth/social/{provider} | Start social / enterprise identity-provider login |
| [**submitAuthorization**](OAuthApi.md#submitAuthorization) | **POST** /orgs/{orgId}/api/v1/oauth/authorize | OAuth 2.1 / OIDC authorization endpoint (form submission) |
| [**submitDeviceVerification**](OAuthApi.md#submitDeviceVerification) | **POST** /orgs/{orgId}/api/v1/oauth/device | Submit device verification |
| [**submitLogin**](OAuthApi.md#submitLogin) | **POST** /orgs/{orgId}/api/v1/oauth/login/submit | Hosted login form submission |
| [**submitLoginJson**](OAuthApi.md#submitLoginJson) | **POST** /orgs/{orgId}/api/v1/oauth/login/json | Programmatic (JSON) login for the authorization flow |
| [**submitOrgSelection**](OAuthApi.md#submitOrgSelection) | **POST** /orgs/{orgId}/api/v1/oauth/org-select | Submit organization selection |
| [**token**](OAuthApi.md#token) | **POST** /orgs/{orgId}/api/v1/oauth/token | OAuth 2.1 token endpoint |


<a id="authorize"></a>
# **authorize**
> String authorize(orgId)

OAuth 2.1 / OIDC authorization endpoint

Browser-facing: validates the authorization request (query parameters, request object or PAR request_uri), renders the hosted login / consent pages and finally delivers the authorization response (code, state, iss, session_state — or a JARM JWT) to the client&#39;s redirect_uri in the requested response_mode. Not a JSON API.

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
      String result = apiInstance.authorize(orgId);
      System.out.println(result);
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

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | HTML page: the hosted login page, the consent page, the auto-submitting form for response_mode&#x3D;form_post, or an error page (unrecoverable requests are rendered as HTML errors instead of redirecting). |  -  |
| **303** | Authorization response delivered to the client&#39;s redirect_uri in the query (default) or fragment, carrying code, state and iss (or error / error_description) — JARM modes carry a single response JWT. A session_state cookie accompanies successful responses. |  * Location -  <br>  |
| **302** | Interstitial redirect: to the hosted login page, a social identity provider, the MFA / step-up challenge, the organization selector, or to logout for prompt&#x3D;login. |  * Location -  <br>  |
| **400** | HTML error page for malformed requests (unknown client, unregistered redirect_uri, invalid request object, …). |  -  |
| **429** | too_many_requests (JSON). |  -  |

<a id="backchannelAuthorize"></a>
# **backchannelAuthorize**
> BackchannelAuthorizeResponse backchannelAuthorize(orgId)

CIBA backchannel authentication request

OpenID Connect Client-Initiated Backchannel Authentication (CIBA Core §7). Classic CIBA: an authenticated client identifies the end user with login_hint / id_token_hint / login_hint_token. Agent-initiated CIBA: an agent (Authorization: Bearer with its agent credential, optionally on behalf of a CIBA-enabled client via agent_id) asks a user to approve RFC 9396 authorization_details. Poll the token endpoint with grant_type&#x3D;urn:openid:params:grant-type:ciba and the returned auth_req_id.

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
      BackchannelAuthorizeResponse result = apiInstance.backchannelAuthorize(orgId);
      System.out.println(result);
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

[**BackchannelAuthorizeResponse**](BackchannelAuthorizeResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Authentication request accepted (CIBA Core §7.3). The hint is never confirmed: an unknown user yields an unstored auth_req_id of the same shape. interval is present for poll and ping delivery modes (always for agent-initiated requests). |  -  |
| **400** | invalid_request, unauthorized_client (CIBA not enabled for the client or plan), invalid_scope, missing_user_code / invalid_user_code or invalid_authorization_details. |  -  |
| **401** | invalid_client — client authentication failed. |  -  |
| **403** | unauthorized_client (agent_id named but not authenticated by that agent) or access_denied. |  -  |
| **429** | too_many_requests, or slow_down when the target user already has too many pending requests. |  -  |

<a id="deviceAuthorization"></a>
# **deviceAuthorization**
> DeviceAuthorizationResponse deviceAuthorization(orgId)

Device authorization request (RFC 8628)

Starts the device authorization grant for a client registered for urn:ietf:params:oauth:grant-type:device_code. Public clients send client_id only; confidential clients must authenticate. The device then polls the token endpoint with the device_code.

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
      DeviceAuthorizationResponse result = apiInstance.deviceAuthorization(orgId);
      System.out.println(result);
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

[**DeviceAuthorizationResponse**](DeviceAuthorizationResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Device authorization response (RFC 8628 §3.2). |  -  |
| **400** | invalid_request (client_id missing), invalid_client (unknown / inactive client), unauthorized_client (grant not allowed) or invalid_scope. |  -  |
| **401** | invalid_client — a confidential client failed to authenticate. |  -  |
| **429** | too_many_requests — rate limit exceeded. |  -  |

<a id="getClientConfiguration"></a>
# **getClientConfiguration**
> RegisteredClientMetadata getClientConfiguration(orgId, clientId)

Read a dynamically registered client (RFC 7592 / OIDC DCR §4)

Client configuration endpoint. Authenticated with the registration_access_token issued at registration (Authorization: Bearer), presented at the same issuer the client was registered under.

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
      RegisteredClientMetadata result = apiInstance.getClientConfiguration(orgId, clientId);
      System.out.println(result);
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

[**RegisteredClientMetadata**](RegisteredClientMetadata.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Registered client metadata (OIDC Dynamic Client Registration §4.3). Never includes client_secret or registration_access_token; optional members are omitted when empty or at their default. Sent with Cache-Control: no-store. |  -  |
| **401** | invalid_token — registration access token missing, invalid, for another client, or presented at a different issuer than the registration (WWW-Authenticate: Bearer). |  -  |

<a id="getDeviceVerification"></a>
# **getDeviceVerification**
> String getDeviceVerification(orgId)

Device verification page (RFC 8628 §3.3)

Browser page where the end user enters the user_code (or arrives via verification_uri_complete) and approves or denies the device. Not a JSON API.

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
      String result = apiInstance.getDeviceVerification(orgId);
      System.out.println(result);
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

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | HTML page: code entry form (with inline validation errors), the device consent page, or the success / denied / error result page. |  -  |
| **302** | Redirect to the hosted login page when no user session exists; the browser returns here after sign-in. |  * Location -  <br>  |
| **429** | HTML error page — too many attempts. |  -  |

<a id="getOrgSelection"></a>
# **getOrgSelection**
> String getOrgSelection(orgId)

Organization selector page

Browser page shown during authorization when the signed-in user belongs to several organizations. Not a JSON API.

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
      String result = apiInstance.getOrgSelection(orgId);
      System.out.println(result);
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

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | HTML organization selector page. |  -  |
| **302** | Redirect to the hosted login page (no session) or back to /oauth/authorize once an organization is selected or none needs selecting. |  * Location -  <br>  |
| **404** | Unknown organization. |  -  |

<a id="introspect"></a>
# **introspect**
> IntrospectResponse introspect(orgId)

Token introspection (RFC 7662)

Resource servers query the active state and meta-information of an access or refresh token. Requires client (or agent) authentication. Always sent with Cache-Control: no-store.

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
      IntrospectResponse result = apiInstance.introspect(orgId);
      System.out.println(result);
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

[**IntrospectResponse**](IntrospectResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Introspection response (RFC 7662 §2.2). An inactive, expired, revoked or unknown token yields only {\&quot;active\&quot;: false}. For an active token the optional members are present when known: username only for user-bound tokens; iss/aud only for tokens bound to a client; nbf/jti only for JWT access tokens; empty-string values are omitted. |  -  |
| **400** | invalid_request — token parameter missing. |  -  |
| **401** | invalid_client — client authentication failed. |  -  |
| **429** | Rate limit exceeded. |  -  |

<a id="par"></a>
# **par**
> ParResponse par(orgId)

Pushed authorization request (RFC 9126)

Stores the authorization request parameters server-side and returns a request_uri for the authorization endpoint. Requires client authentication; a DPoP proof binds the resulting code to the key.

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
      ParResponse result = apiInstance.par(orgId);
      System.out.println(result);
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

[**ParResponse**](ParResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Pushed authorization request created (RFC 9126 §2.2). |  -  |
| **400** | invalid_request / invalid_target / invalid_request_object, or the tenant is unknown. |  -  |
| **401** | invalid_client — client authentication failed. |  -  |
| **429** | too_many_requests — rate limit exceeded. |  -  |

<a id="passkeyLogin"></a>
# **passkeyLogin**
> passkeyLogin(orgId)

Passkey login entry point

Placeholder: flashes an informational message and redirects to the hosted login page. Not a JSON API.

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
| **302** | Redirect to the hosted login page. |  * Location -  <br>  |

<a id="registerClient"></a>
# **registerClient**
> RegisterClientResponse registerClient(orgId)

Dynamic client registration (RFC 7591 / OIDC DCR)

Registers an OAuth client from a JSON metadata document. Authenticated with an initial access token (Authorization: Bearer) or an API key holding admin:clients:register; open registration applies when the organization allows it.

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
      RegisterClientResponse result = apiInstance.registerClient(orgId);
      System.out.println(result);
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

[**RegisterClientResponse**](RegisterClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Client registered (OIDC Dynamic Client Registration §3.2). client_secret / client_secret_expires_at only for confidential clients; registration_access_token and registration_client_uri when a registration access token was issued; the remaining optional members echo registered metadata and are omitted when empty or at their default. Sent with Cache-Control: no-store. |  -  |
| **400** | invalid_request (invalid JSON / unknown organization), invalid_client_metadata or invalid_redirect_uri. |  -  |
| **401** | access_denied — initial access token required or invalid (WWW-Authenticate: Bearer). |  -  |
| **403** | access_denied — dynamic registration disabled for this organization, or the API key is not authorized for it. |  -  |
| **429** | too_many_requests — rate limit exceeded. |  -  |

<a id="revoke"></a>
# **revoke**
> Object revoke(orgId)

Token revocation (RFC 7009)

Revokes an access or refresh token (revoking a refresh token also revokes the access tokens issued with it). Requires client authentication. Always sent with Cache-Control: no-store.

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
      Object result = apiInstance.revoke(orgId);
      System.out.println(result);
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

**Object**

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Revocation acknowledged — always 200 with an empty JSON object, whether or not the token existed (RFC 7009 §2.2). |  -  |
| **400** | invalid_request (token parameter missing) or unsupported_token_type. |  -  |
| **401** | invalid_client — client authentication failed. |  -  |
| **429** | too_many_requests — rate limit exceeded. |  -  |

<a id="socialCallback"></a>
# **socialCallback**
> socialCallback(orgId, provider)

Social / enterprise identity-provider callback

Receives the provider&#39;s authorization response (code + state), exchanges the code, verifies the ID token / fetches the profile, finds or provisions the user and signs them in. Not a JSON API.

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
| **302** | Redirect: on success to the safe redirect target carried in the state (or the portal), to the MFA challenge when a second factor is required, to the login page with a verification notice when the signup must first be confirmed by email, or back to the hosted login page with a flash message on any failure. |  * Location -  <br>  |

<a id="socialCallbackPost"></a>
# **socialCallbackPost**
> socialCallbackPost(orgId, provider)

Social / enterprise identity-provider callback (form_post)

Same as GET for providers that deliver the authorization response with response_mode&#x3D;form_post. Not a JSON API.

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
| **302** | Redirect: on success to the safe redirect target carried in the state (or the portal), to the MFA challenge when a second factor is required, to the login page with a verification notice when the signup must first be confirmed by email, or back to the hosted login page with a flash message on any failure. |  * Location -  <br>  |

<a id="socialLogin"></a>
# **socialLogin**
> socialLogin(orgId, provider)

Start social / enterprise identity-provider login

Browser entry point used by the hosted login page. Generates a signed state (carrying the optional redirect_uri and client_id) and redirects to the provider&#39;s authorization endpoint. Not a JSON API.

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
| **302** | Redirect to the external provider&#39;s authorization endpoint — or back to the hosted login page when the organization, provider or redirect target is invalid. |  * Location -  <br>  |

<a id="submitAuthorization"></a>
# **submitAuthorization**
> String submitAuthorization(orgId)

OAuth 2.1 / OIDC authorization endpoint (form submission)

Same as GET; also receives the consent form submission. Not a JSON API.

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
      String result = apiInstance.submitAuthorization(orgId);
      System.out.println(result);
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

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | HTML page: the hosted login page, the consent page, the auto-submitting form for response_mode&#x3D;form_post, or an error page (unrecoverable requests are rendered as HTML errors instead of redirecting). |  -  |
| **303** | Authorization response delivered to the client&#39;s redirect_uri in the query (default) or fragment, carrying code, state and iss (or error / error_description) — JARM modes carry a single response JWT. A session_state cookie accompanies successful responses. |  * Location -  <br>  |
| **302** | Interstitial redirect: to the hosted login page, a social identity provider, the MFA / step-up challenge, the organization selector, or to logout for prompt&#x3D;login. |  * Location -  <br>  |
| **400** | HTML error page for malformed requests (unknown client, unregistered redirect_uri, invalid request object, …). |  -  |
| **429** | too_many_requests (JSON). |  -  |

<a id="submitDeviceVerification"></a>
# **submitDeviceVerification**
> String submitDeviceVerification(orgId)

Submit device verification

Browser form submission: code entry, or the approve / deny decision for a device. Not a JSON API.

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
      String result = apiInstance.submitDeviceVerification(orgId);
      System.out.println(result);
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

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | HTML page: code entry form (with inline validation errors), the device consent page, or the success / denied / error result page. |  -  |
| **302** | Redirect to the hosted login page when no user session exists; the browser returns here after sign-in. |  * Location -  <br>  |
| **429** | HTML error page — too many attempts. |  -  |

<a id="submitLogin"></a>
# **submitLogin**
> submitLogin(orgId)

Hosted login form submission

Receives the hosted OAuth login page&#39;s form (email, password, csrf token and the authorization request parameters). Every outcome — success, invalid credentials, locked account, captcha or CSRF failure — answers with the same redirect back to /oauth/authorize, which re-renders the login page or continues the flow. Not a JSON API.

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
| **302** | Redirect to /oauth/authorize with the original client_id, redirect_uri, state, scope, PKCE and nonce parameters. |  * Location -  <br>  |
| **404** | Unknown or inactive organization. |  -  |

<a id="submitLoginJson"></a>
# **submitLoginJson**
> SubmitLoginJsonResponse submitLoginJson(orgId)

Programmatic (JSON) login for the authorization flow

Establishes the end-user browser session from JSON credentials so a following /oauth/authorize request issues a code without showing the hosted login page. Deliberately mints no tokens. Only accepted from trusted origins.

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
      SubmitLoginJsonResponse result = apiInstance.submitLoginJson(orgId);
      System.out.println(result);
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

[**SubmitLoginJsonResponse**](SubmitLoginJsonResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Signed in (status&#x3D;complete — continue to /oauth/authorize) or a second factor is required (status&#x3D;mfa_required with the challenge page URL). |  -  |
| **400** | {\&quot;status\&quot;:\&quot;invalid_request\&quot;} or {\&quot;status\&quot;:\&quot;captcha_required\&quot;,\&quot;message\&quot;:…}. |  -  |
| **401** | {\&quot;status\&quot;:\&quot;invalid_credentials\&quot;}. |  -  |
| **403** | {\&quot;status\&quot;:\&quot;blocked\&quot;} or {\&quot;status\&quot;:\&quot;inactive\&quot;}. |  -  |
| **404** | {\&quot;status\&quot;:\&quot;not_found\&quot;} — unknown or inactive organization. |  -  |
| **429** | {\&quot;status\&quot;:\&quot;rate_limited\&quot;}. |  -  |

<a id="submitOrgSelection"></a>
# **submitOrgSelection**
> String submitOrgSelection(orgId)

Submit organization selection

Stores the chosen organization in the session and resumes the pending authorization request. Not a JSON API.

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
      String result = apiInstance.submitOrgSelection(orgId);
      System.out.println(result);
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

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | HTML organization selector page. |  -  |
| **302** | Redirect to the hosted login page (no session) or back to /oauth/authorize once an organization is selected or none needs selecting. |  * Location -  <br>  |
| **404** | Unknown organization. |  -  |

<a id="token"></a>
# **token**
> TokenResponse token(orgId)

OAuth 2.1 token endpoint

Issues tokens for authorization_code, refresh_token, client_credentials, urn:ietf:params:oauth:grant-type:token-exchange (RFC 8693, ID-JAG and Txn-Token profiles), urn:ietf:params:oauth:grant-type:jwt-bearer (RFC 7523), urn:openid:params:grant-type:ciba and urn:ietf:params:oauth:grant-type:device_code. Accepts application/x-www-form-urlencoded or JSON bodies.

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
      TokenResponse result = apiInstance.token(orgId);
      System.out.println(result);
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

[**TokenResponse**](TokenResponse.md)

### Authorization

[ClientAuth](../README.md#ClientAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Token response (RFC 6749 §5.1). Which optional members are present depends on the grant: refresh_token only when the client may use the refresh_token grant; id_token for authorization_code / CIBA / device grants with the openid scope; issued_token_type for token exchange (including ID-JAG and Txn-Token, whose token_type is N_A and which carry no scope unless scopes were granted); authorization_details, jit_request_id and task_id only for agent-initiated CIBA. Always sent with Cache-Control: no-store. |  * DPoP-Nonce - Fresh server nonce when the request carried a DPoP proof (RFC 9449 §8). <br>  |
| **400** | invalid_request / invalid_grant / unsupported_grant_type / invalid_scope (RFC 6749 §5.2). |  -  |
| **401** | invalid_client — client authentication failed. |  -  |
| **429** | too_many_requests — rate limit exceeded. |  -  |

