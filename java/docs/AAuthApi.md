# AAuthApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**authorizeAgent**](AAuthApi.md#authorizeAgent) | **GET** /orgs/{orgId}/api/v1/aauth/agent/auth | Agent Auth Endpoint - redirects to user consent page. |
| [**getAgentJwks**](AAuthApi.md#getAgentJwks) | **GET** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/jwks.json | Agent JWKS endpoint |
| [**getAgentMetadata**](AAuthApi.md#getAgentMetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-agent | Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents. |
| [**getAgentMetadataById**](AAuthApi.md#getAgentMetadataById) | **GET** /orgs/{orgId}/api/v1/aauth/agents/{agentId}/metadata | Individual Agent Metadata |
| [**getIssuerJwks**](AAuthApi.md#getIssuerJwks) | **GET** /orgs/{orgId}/api/v1/aauth/jwks.json | Auth Server JWKS endpoint for AAuth. |
| [**getIssuerMetadata**](AAuthApi.md#getIssuerMetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-issuer | Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant. |
| [**getResourceJwks**](AAuthApi.md#getResourceJwks) | **GET** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/jwks.json | Resource JWKS endpoint |
| [**getResourceMetadata**](AAuthApi.md#getResourceMetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/aauth-resource | Resource Metadata (Section 8.3) |
| [**getResourceMetadataById**](AAuthApi.md#getResourceMetadataById) | **GET** /orgs/{orgId}/api/v1/aauth/resources/{resourceId}/metadata | Individual Resource Metadata |
| [**issueAgentToken**](AAuthApi.md#issueAgentToken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/token | Agent Token Endpoint |
| [**issueDelegateToken**](AAuthApi.md#issueDelegateToken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/issue | Issue an agent token to a delegate. |
| [**issuePlatformToken**](AAuthApi.md#issuePlatformToken) | **POST** /orgs/{orgId}/api/v1/aauth/agent/platform-token |  |
| [**issueResourceToken**](AAuthApi.md#issueResourceToken) | **POST** /orgs/{orgId}/api/v1/aauth/resource/token | Resource Token Endpoint (Section 6) |
| [**revokeAgentToken**](AAuthApi.md#revokeAgentToken) | **POST** /orgs/{orgId}/api/v1/aauth/token/revoke | Revoke an auth token or refresh token. |
| [**verifyAuthToken**](AAuthApi.md#verifyAuthToken) | **POST** /orgs/{orgId}/api/v1/aauth/auth/token/verify | Auth Token Verification endpoint. |
| [**verifyResourceToken**](AAuthApi.md#verifyResourceToken) | **POST** /orgs/{orgId}/api/v1/aauth/resource/token/verify | Resource Token Verification (for resources to validate their own tokens). |


<a id="authorizeAgent"></a>
# **authorizeAgent**
> authorizeAgent(orgId)

Agent Auth Endpoint - redirects to user consent page.

Per Section 9.4: The auth server redirects the user&#39;s browser to its authorization page.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: AAuthSigned
    HttpBearerAuth AAuthSigned = (HttpBearerAuth) defaultClient.getAuthentication("AAuthSigned");
    AAuthSigned.setBearerToken("BEARER TOKEN");

    AAuthApi apiInstance = new AAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.authorizeAgent(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling AAuthApi#authorizeAgent");
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

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **302** | Redirect to the tenant portal AAuth consent page for the given request_token. |  -  |
| **400** | Missing request_token query parameter. |  -  |

<a id="getAgentJwks"></a>
# **getAgentJwks**
> JwksResponse getAgentJwks(orgId, agentId)

Agent JWKS endpoint

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    AAuthApi apiInstance = new AAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String agentId = "agentId_example"; // String | 
    try {
      JwksResponse result = apiInstance.getAgentJwks(orgId, agentId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AAuthApi#getAgentJwks");
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
| **agentId** | **String**|  | |

### Return type

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The agent JWKS. |  -  |
| **404** | Agent not found. |  -  |

<a id="getAgentMetadata"></a>
# **getAgentMetadata**
> List&lt;Object&gt; getAgentMetadata(orgId)

Agent Metadata (Section 8.1) Published at /.well-known/aauth-agent for registered agents.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    AAuthApi apiInstance = new AAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      List<Object> result = apiInstance.getAgentMetadata(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AAuthApi#getAgentMetadata");
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

**List&lt;Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Metadata documents for all active agents of this tenant (Section 8.1). |  -  |

<a id="getAgentMetadataById"></a>
# **getAgentMetadataById**
> Object getAgentMetadataById(orgId, agentId)

Individual Agent Metadata

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    AAuthApi apiInstance = new AAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String agentId = "agentId_example"; // String | 
    try {
      Object result = apiInstance.getAgentMetadataById(orgId, agentId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AAuthApi#getAgentMetadataById");
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
| **agentId** | **String**|  | |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Metadata document for a single active agent. |  -  |
| **404** | Agent not found. |  -  |

<a id="getIssuerJwks"></a>
# **getIssuerJwks**
> JwksResponse getIssuerJwks(orgId)

Auth Server JWKS endpoint for AAuth.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    AAuthApi apiInstance = new AAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      JwksResponse result = apiInstance.getIssuerJwks(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AAuthApi#getIssuerJwks");
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

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The auth server JWKS (public keys used to verify issued JWTs). |  -  |

<a id="getIssuerMetadata"></a>
# **getIssuerMetadata**
> GetIssuerMetadataResponse getIssuerMetadata(orgId)

Auth Server Metadata (Section 8.2) Published at /.well-known/aauth-issuer for each tenant.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    AAuthApi apiInstance = new AAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      GetIssuerMetadataResponse result = apiInstance.getIssuerMetadata(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AAuthApi#getIssuerMetadata");
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

[**GetIssuerMetadataResponse**](GetIssuerMetadataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | AAuth auth-server metadata document (Section 8.2). |  -  |

<a id="getResourceJwks"></a>
# **getResourceJwks**
> JwksResponse getResourceJwks(orgId, resourceId)

Resource JWKS endpoint

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    AAuthApi apiInstance = new AAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String resourceId = "resourceId_example"; // String | 
    try {
      JwksResponse result = apiInstance.getResourceJwks(orgId, resourceId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AAuthApi#getResourceJwks");
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
| **resourceId** | **String**|  | |

### Return type

[**JwksResponse**](JwksResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The resource JWKS. |  -  |
| **404** | Resource not found. |  -  |

<a id="getResourceMetadata"></a>
# **getResourceMetadata**
> List&lt;Object&gt; getResourceMetadata(orgId)

Resource Metadata (Section 8.3)

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    AAuthApi apiInstance = new AAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      List<Object> result = apiInstance.getResourceMetadata(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AAuthApi#getResourceMetadata");
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

**List&lt;Object&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Metadata documents for all active resources of this tenant (Section 8.3). |  -  |

<a id="getResourceMetadataById"></a>
# **getResourceMetadataById**
> Object getResourceMetadataById(orgId, resourceId)

Individual Resource Metadata

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    AAuthApi apiInstance = new AAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String resourceId = "resourceId_example"; // String | 
    try {
      Object result = apiInstance.getResourceMetadataById(orgId, resourceId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AAuthApi#getResourceMetadataById");
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
| **resourceId** | **String**|  | |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Metadata document for a single active resource. |  -  |
| **404** | Resource not found. |  -  |

<a id="issueAgentToken"></a>
# **issueAgentToken**
> IssueAgentTokenResponse issueAgentToken(orgId, issueAgentTokenRequest)

Agent Token Endpoint

Per Section 9: The agent token endpoint is the auth server&#39;s endpoint agents use to request auth tokens.  Required HTTP signature covering: @method, @target-uri, content-type, content-digest, authorization

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: AAuthSigned
    HttpBearerAuth AAuthSigned = (HttpBearerAuth) defaultClient.getAuthentication("AAuthSigned");
    AAuthSigned.setBearerToken("BEARER TOKEN");

    AAuthApi apiInstance = new AAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    IssueAgentTokenRequest issueAgentTokenRequest = new IssueAgentTokenRequest(); // IssueAgentTokenRequest | 
    try {
      IssueAgentTokenResponse result = apiInstance.issueAgentToken(orgId, issueAgentTokenRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AAuthApi#issueAgentToken");
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
| **issueAgentTokenRequest** | [**IssueAgentTokenRequest**](IssueAgentTokenRequest.md)|  | |

### Return type

[**IssueAgentTokenResponse**](IssueAgentTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An auth token, or a request token + authorization URI when user consent is needed. |  -  |
| **400** | Invalid request (missing/unknown request_type, invalid body, invalid resource/redirect). |  -  |
| **401** | Agent-Auth challenge — missing/invalid Agent-Auth header, signature, or agent token. |  -  |
| **429** | Rate limit exceeded. |  -  |

<a id="issueDelegateToken"></a>
# **issueDelegateToken**
> IssueDelegateTokenResponse issueDelegateToken(orgId, issueDelegateTokenRequest)

Issue an agent token to a delegate.

Called by the agent server when a delegate needs to act on its behalf.  This endpoint requires the agent server to authenticate itself (via HTTP signature with its registered key).

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: AAuthSigned
    HttpBearerAuth AAuthSigned = (HttpBearerAuth) defaultClient.getAuthentication("AAuthSigned");
    AAuthSigned.setBearerToken("BEARER TOKEN");

    AAuthApi apiInstance = new AAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    IssueDelegateTokenRequest issueDelegateTokenRequest = new IssueDelegateTokenRequest(); // IssueDelegateTokenRequest | 
    try {
      IssueDelegateTokenResponse result = apiInstance.issueDelegateToken(orgId, issueDelegateTokenRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AAuthApi#issueDelegateToken");
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
| **issueDelegateTokenRequest** | [**IssueDelegateTokenRequest**](IssueDelegateTokenRequest.md)|  | |

### Return type

[**IssueDelegateTokenResponse**](IssueDelegateTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The issued agent token and its metadata. |  -  |
| **400** | Invalid JSON body, or missing delegate_sub / delegate_public_key. |  -  |
| **401** | Agent server HTTP-message-signature verification failed. |  -  |
| **429** | Rate limit exceeded. |  -  |

<a id="issuePlatformToken"></a>
# **issuePlatformToken**
> IssuePlatformTokenResponse issuePlatformToken(orgId, issuePlatformTokenRequest)



### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: AAuthSigned
    HttpBearerAuth AAuthSigned = (HttpBearerAuth) defaultClient.getAuthentication("AAuthSigned");
    AAuthSigned.setBearerToken("BEARER TOKEN");

    AAuthApi apiInstance = new AAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    IssuePlatformTokenRequest issuePlatformTokenRequest = new IssuePlatformTokenRequest(); // IssuePlatformTokenRequest | 
    try {
      IssuePlatformTokenResponse result = apiInstance.issuePlatformToken(orgId, issuePlatformTokenRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AAuthApi#issuePlatformToken");
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
| **issuePlatformTokenRequest** | [**IssuePlatformTokenRequest**](IssuePlatformTokenRequest.md)|  | |

### Return type

[**IssuePlatformTokenResponse**](IssuePlatformTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A short-lived, DPoP-bound core-agent access token accepted by JIT, the token vault, and the authz PDP. It carries cnf.jkt (thumbprint of the agent key) and must be presented with a DPoP proof from that key. |  -  |
| **400** | Invalid exchange request (grant_type / subject_token). |  -  |
| **401** | The AAuth token is invalid, expired, or revoked, or the RFC 9421 request signature is missing/invalid/replayed. |  -  |
| **403** | Denied by a conditional access policy. |  -  |
| **429** | Rate limit exceeded (per IP or per agent). |  -  |

<a id="issueResourceToken"></a>
# **issueResourceToken**
> IssueResourceTokenResponse issueResourceToken(orgId, issueResourceTokenRequest)

Resource Token Endpoint (Section 6)

Called by a registered resource to create a resource token binding an agent&#39;s request to the resource&#39;s identity.  The resource authenticates via HTTP Message Signature using its registered key.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: AAuthSigned
    HttpBearerAuth AAuthSigned = (HttpBearerAuth) defaultClient.getAuthentication("AAuthSigned");
    AAuthSigned.setBearerToken("BEARER TOKEN");

    AAuthApi apiInstance = new AAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    IssueResourceTokenRequest issueResourceTokenRequest = new IssueResourceTokenRequest(); // IssueResourceTokenRequest | 
    try {
      IssueResourceTokenResponse result = apiInstance.issueResourceToken(orgId, issueResourceTokenRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AAuthApi#issueResourceToken");
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
| **issueResourceTokenRequest** | [**IssueResourceTokenRequest**](IssueResourceTokenRequest.md)|  | |

### Return type

[**IssueResourceTokenResponse**](IssueResourceTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A resource token binding the agent request to the resource identity. |  -  |
| **400** | Invalid JSON body, missing agent/agent_jkt, or unsupported scope. |  -  |
| **401** | Resource authentication (HTTP message signature) failed. |  -  |
| **429** | Rate limit exceeded. |  -  |

<a id="revokeAgentToken"></a>
# **revokeAgentToken**
> RevokeAgentTokenResponse revokeAgentToken(orgId, revokeAgentTokenRequest)

Revoke an auth token or refresh token.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: AAuthSigned
    HttpBearerAuth AAuthSigned = (HttpBearerAuth) defaultClient.getAuthentication("AAuthSigned");
    AAuthSigned.setBearerToken("BEARER TOKEN");

    AAuthApi apiInstance = new AAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    RevokeAgentTokenRequest revokeAgentTokenRequest = new RevokeAgentTokenRequest(); // RevokeAgentTokenRequest | 
    try {
      RevokeAgentTokenResponse result = apiInstance.revokeAgentToken(orgId, revokeAgentTokenRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AAuthApi#revokeAgentToken");
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
| **revokeAgentTokenRequest** | [**RevokeAgentTokenRequest**](RevokeAgentTokenRequest.md)|  | |

### Return type

[**RevokeAgentTokenResponse**](RevokeAgentTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Revocation acknowledged (always 200 — existence of the token is not disclosed). |  -  |
| **400** | Missing token parameter. |  -  |
| **401** | Agent-Auth challenge — authentication/signature verification failed. |  -  |
| **429** | Rate limit exceeded. |  -  |

<a id="verifyAuthToken"></a>
# **verifyAuthToken**
> VerifyAuthTokenResponse verifyAuthToken(orgId, verifyAuthTokenRequest)

Auth Token Verification endpoint.

Resources call this to validate an auth token presented by an agent. Per Section 7.7, the resource validates:   1. JWT signature from trusted auth server   2. aud matches resource identifier   3. exp is in the future   4. HTTP Message Signature on the agent&#39;s incoming request matches the      key whose thumbprint is &#x60;cnf_jkt&#x60; in the response.  IMPORTANT — proof-of-possession is mandatory. A response of &#x60;{\&quot;active\&quot;: true, ...}&#x60; from this endpoint means the JWT is well-formed and bound to the named resource; it does NOT mean the caller is the legitimate holder of the token. The resource MUST independently verify that the HTTP Message Signature on the agent&#39;s request was produced with the key that hashes to &#x60;cnf_jkt&#x60;. A token without this PoP check is effectively a bearer token and can be replayed by anyone who observes it. The response includes &#x60;pop_required: true&#x60; to surface this contract to integrators who only inspect &#x60;active&#x60;.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: AAuthSigned
    HttpBearerAuth AAuthSigned = (HttpBearerAuth) defaultClient.getAuthentication("AAuthSigned");
    AAuthSigned.setBearerToken("BEARER TOKEN");

    AAuthApi apiInstance = new AAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    VerifyAuthTokenRequest verifyAuthTokenRequest = new VerifyAuthTokenRequest(); // VerifyAuthTokenRequest | 
    try {
      VerifyAuthTokenResponse result = apiInstance.verifyAuthToken(orgId, verifyAuthTokenRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AAuthApi#verifyAuthToken");
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
| **verifyAuthTokenRequest** | [**VerifyAuthTokenRequest**](VerifyAuthTokenRequest.md)|  | |

### Return type

[**VerifyAuthTokenResponse**](VerifyAuthTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Introspection result. active&#x3D;true does NOT imply PoP — the caller MUST verify the HTTP message signature against cnf_jkt. |  -  |
| **400** | Missing auth_token or resource. |  -  |
| **401** | Resource authentication failed. |  -  |
| **403** | Requested resource does not match the authenticated resource. |  -  |
| **429** | Rate limit exceeded. |  -  |

<a id="verifyResourceToken"></a>
# **verifyResourceToken**
> VerifyResourceTokenResponse verifyResourceToken(orgId, verifyResourceTokenRequest)

Resource Token Verification (for resources to validate their own tokens).

A convenience endpoint—resources can also validate locally.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AAuthApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");
    
    // Configure HTTP bearer authorization: AAuthSigned
    HttpBearerAuth AAuthSigned = (HttpBearerAuth) defaultClient.getAuthentication("AAuthSigned");
    AAuthSigned.setBearerToken("BEARER TOKEN");

    AAuthApi apiInstance = new AAuthApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    VerifyResourceTokenRequest verifyResourceTokenRequest = new VerifyResourceTokenRequest(); // VerifyResourceTokenRequest | 
    try {
      VerifyResourceTokenResponse result = apiInstance.verifyResourceToken(orgId, verifyResourceTokenRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AAuthApi#verifyResourceToken");
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
| **verifyResourceTokenRequest** | [**VerifyResourceTokenRequest**](VerifyResourceTokenRequest.md)|  | |

### Return type

[**VerifyResourceTokenResponse**](VerifyResourceTokenResponse.md)

### Authorization

[AAuthSigned](../README.md#AAuthSigned)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Introspection result; active&#x3D;false with an error when the token is invalid. |  -  |
| **400** | Missing resource_token, agent, or agent_jkt. |  -  |
| **401** | Resource authentication failed. |  -  |
| **403** | Resource token is not valid for the authenticated resource. |  -  |
| **429** | Rate limit exceeded. |  -  |

