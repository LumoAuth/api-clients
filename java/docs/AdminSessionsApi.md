# AdminSessionsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**adminClientTokensRevokeAll**](AdminSessionsApi.md#adminClientTokensRevokeAll) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens | Revoke all tokens of a client |
| [**adminClientTokensRevokePost**](AdminSessionsApi.md#adminClientTokensRevokePost) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens/revoke | Revoke all tokens of a client (POST alias) |
| [**adminSessionsCount**](AdminSessionsApi.md#adminSessionsCount) | **GET** /orgs/{orgId}/api/v1/admin/sessions/count | Active session count |
| [**adminSessionsList**](AdminSessionsApi.md#adminSessionsList) | **GET** /orgs/{orgId}/api/v1/admin/sessions | List active sessions |
| [**adminSessionsRevoke**](AdminSessionsApi.md#adminSessionsRevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/sessions/{sessionId} | Revoke a session |
| [**adminSessionsRevokeAll**](AdminSessionsApi.md#adminSessionsRevokeAll) | **POST** /orgs/{orgId}/api/v1/admin/sessions/revoke-all | Revoke every session in the tenant |
| [**adminSessionsStats**](AdminSessionsApi.md#adminSessionsStats) | **GET** /orgs/{orgId}/api/v1/admin/sessions/stats | Session statistics |
| [**adminTokensList**](AdminSessionsApi.md#adminTokensList) | **GET** /orgs/{orgId}/api/v1/admin/tokens | List access tokens |
| [**adminTokensRevoke**](AdminSessionsApi.md#adminTokensRevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/tokens/{tokenId} | Revoke a token |
| [**adminUserSessionsList**](AdminSessionsApi.md#adminUserSessionsList) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | List a user&#39;s active sessions |
| [**adminUserSessionsRevokeAll**](AdminSessionsApi.md#adminUserSessionsRevokeAll) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | Revoke all sessions of a user |
| [**adminUserSessionsRevokePost**](AdminSessionsApi.md#adminUserSessionsRevokePost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions/revoke | Revoke all sessions of a user (POST alias) |
| [**adminUserTokensRevokeAll**](AdminSessionsApi.md#adminUserTokensRevokeAll) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens | Revoke all tokens of a user |
| [**adminUserTokensRevokePost**](AdminSessionsApi.md#adminUserTokensRevokePost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens/revoke | Revoke all tokens of a user (POST alias) |


<a id="adminClientTokensRevokeAll"></a>
# **adminClientTokensRevokeAll**
> AdminClientTokensRevokeAllResponse adminClientTokensRevokeAll(orgId, clientId)

Revoke all tokens of a client

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSessionsApi;

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

    AdminSessionsApi apiInstance = new AdminSessionsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String clientId = "clientId_example"; // String | 
    try {
      AdminClientTokensRevokeAllResponse result = apiInstance.adminClientTokensRevokeAll(orgId, clientId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSessionsApi#adminClientTokensRevokeAll");
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

[**AdminClientTokensRevokeAllResponse**](AdminClientTokensRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Tokens revoked; the message carries the count |  -  |
| **404** | Client not found |  -  |

<a id="adminClientTokensRevokePost"></a>
# **adminClientTokensRevokePost**
> AdminUserTokensRevokePostResponse adminClientTokensRevokePost(orgId, clientId)

Revoke all tokens of a client (POST alias)

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSessionsApi;

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

    AdminSessionsApi apiInstance = new AdminSessionsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String clientId = "clientId_example"; // String | 
    try {
      AdminUserTokensRevokePostResponse result = apiInstance.adminClientTokensRevokePost(orgId, clientId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSessionsApi#adminClientTokensRevokePost");
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

[**AdminUserTokensRevokePostResponse**](AdminUserTokensRevokePostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Tokens revoked; the message carries the count |  -  |
| **404** | Client not found |  -  |

<a id="adminSessionsCount"></a>
# **adminSessionsCount**
> AdminSessionsCountResponse adminSessionsCount(orgId)

Active session count

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSessionsApi;

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

    AdminSessionsApi apiInstance = new AdminSessionsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminSessionsCountResponse result = apiInstance.adminSessionsCount(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSessionsApi#adminSessionsCount");
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

[**AdminSessionsCountResponse**](AdminSessionsCountResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Active session count |  -  |

<a id="adminSessionsList"></a>
# **adminSessionsList**
> AdminSessionsListResponse adminSessionsList(orgId)

List active sessions

Paginated active sessions for the tenant (expired and idle-timed-out sessions are invalidated first). Optional &#x60;userId&#x60; filter accepts a user UUID or email.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSessionsApi;

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

    AdminSessionsApi apiInstance = new AdminSessionsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminSessionsListResponse result = apiInstance.adminSessionsList(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSessionsApi#adminSessionsList");
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

[**AdminSessionsListResponse**](AdminSessionsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Sessions |  -  |

<a id="adminSessionsRevoke"></a>
# **adminSessionsRevoke**
> AdminSessionsRevokeResponse adminSessionsRevoke(orgId, sessionId)

Revoke a session

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSessionsApi;

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

    AdminSessionsApi apiInstance = new AdminSessionsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String sessionId = "sessionId_example"; // String | 
    try {
      AdminSessionsRevokeResponse result = apiInstance.adminSessionsRevoke(orgId, sessionId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSessionsApi#adminSessionsRevoke");
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
| **sessionId** | **String**|  | |

### Return type

[**AdminSessionsRevokeResponse**](AdminSessionsRevokeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Session revoked |  -  |
| **403** | Target holds privileges the actor lacks |  -  |
| **404** | Session not found |  -  |

<a id="adminSessionsRevokeAll"></a>
# **adminSessionsRevokeAll**
> AdminSessionsRevokeAllResponse adminSessionsRevokeAll(orgId, adminSessionsRevokeAllRequest)

Revoke every session in the tenant

Signs out all users. Requires &#x60;confirm: true&#x60; in the body.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSessionsApi;

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

    AdminSessionsApi apiInstance = new AdminSessionsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    AdminSessionsRevokeAllRequest adminSessionsRevokeAllRequest = new AdminSessionsRevokeAllRequest(); // AdminSessionsRevokeAllRequest | 
    try {
      AdminSessionsRevokeAllResponse result = apiInstance.adminSessionsRevokeAll(orgId, adminSessionsRevokeAllRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSessionsApi#adminSessionsRevokeAll");
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
| **adminSessionsRevokeAllRequest** | [**AdminSessionsRevokeAllRequest**](AdminSessionsRevokeAllRequest.md)|  | |

### Return type

[**AdminSessionsRevokeAllResponse**](AdminSessionsRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Sessions revoked; the message carries the count |  -  |
| **400** | confirm: true is required |  -  |

<a id="adminSessionsStats"></a>
# **adminSessionsStats**
> AdminSessionsStatsResponse adminSessionsStats(orgId)

Session statistics

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSessionsApi;

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

    AdminSessionsApi apiInstance = new AdminSessionsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminSessionsStatsResponse result = apiInstance.adminSessionsStats(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSessionsApi#adminSessionsStats");
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

[**AdminSessionsStatsResponse**](AdminSessionsStatsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Session counts |  -  |

<a id="adminTokensList"></a>
# **adminTokensList**
> AdminTokensListResponse adminTokensList(orgId)

List access tokens

Paginated OAuth access tokens issued by the tenant&#39;s clients. Filters: &#x60;revoked&#x60; (bool), &#x60;clientId&#x60;, &#x60;userId&#x60;.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSessionsApi;

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

    AdminSessionsApi apiInstance = new AdminSessionsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminTokensListResponse result = apiInstance.adminTokensList(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSessionsApi#adminTokensList");
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

[**AdminTokensListResponse**](AdminTokensListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Tokens |  -  |

<a id="adminTokensRevoke"></a>
# **adminTokensRevoke**
> AdminTokensRevokeResponse adminTokensRevoke(orgId, tokenId)

Revoke a token

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSessionsApi;

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

    AdminSessionsApi apiInstance = new AdminSessionsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String tokenId = "tokenId_example"; // String | 
    try {
      AdminTokensRevokeResponse result = apiInstance.adminTokensRevoke(orgId, tokenId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSessionsApi#adminTokensRevoke");
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
| **tokenId** | **String**|  | |

### Return type

[**AdminTokensRevokeResponse**](AdminTokensRevokeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Token revoked |  -  |
| **403** | Target holds privileges the actor lacks |  -  |
| **404** | Token not found |  -  |

<a id="adminUserSessionsList"></a>
# **adminUserSessionsList**
> AdminUserSessionsListResponse adminUserSessionsList(orgId, userId)

List a user&#39;s active sessions

All active sessions of one user (UUID or email), returned as a single page.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSessionsApi;

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

    AdminSessionsApi apiInstance = new AdminSessionsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      AdminUserSessionsListResponse result = apiInstance.adminUserSessionsList(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSessionsApi#adminUserSessionsList");
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
| **userId** | **String**|  | |

### Return type

[**AdminUserSessionsListResponse**](AdminUserSessionsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Sessions |  -  |
| **404** | User not found |  -  |

<a id="adminUserSessionsRevokeAll"></a>
# **adminUserSessionsRevokeAll**
> AdminUserSessionsRevokeAllResponse adminUserSessionsRevokeAll(orgId, userId)

Revoke all sessions of a user

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSessionsApi;

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

    AdminSessionsApi apiInstance = new AdminSessionsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      AdminUserSessionsRevokeAllResponse result = apiInstance.adminUserSessionsRevokeAll(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSessionsApi#adminUserSessionsRevokeAll");
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
| **userId** | **String**|  | |

### Return type

[**AdminUserSessionsRevokeAllResponse**](AdminUserSessionsRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Sessions revoked; the message carries the count |  -  |
| **403** | Target holds privileges the actor lacks |  -  |
| **404** | User not found |  -  |

<a id="adminUserSessionsRevokePost"></a>
# **adminUserSessionsRevokePost**
> AdminUserSessionsRevokePostResponse adminUserSessionsRevokePost(orgId, userId)

Revoke all sessions of a user (POST alias)

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSessionsApi;

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

    AdminSessionsApi apiInstance = new AdminSessionsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      AdminUserSessionsRevokePostResponse result = apiInstance.adminUserSessionsRevokePost(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSessionsApi#adminUserSessionsRevokePost");
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
| **userId** | **String**|  | |

### Return type

[**AdminUserSessionsRevokePostResponse**](AdminUserSessionsRevokePostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Sessions revoked; the message carries the count |  -  |
| **403** | Target holds privileges the actor lacks |  -  |
| **404** | User not found |  -  |

<a id="adminUserTokensRevokeAll"></a>
# **adminUserTokensRevokeAll**
> AdminUserTokensRevokeAllResponse adminUserTokensRevokeAll(orgId, userId)

Revoke all tokens of a user

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSessionsApi;

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

    AdminSessionsApi apiInstance = new AdminSessionsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      AdminUserTokensRevokeAllResponse result = apiInstance.adminUserTokensRevokeAll(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSessionsApi#adminUserTokensRevokeAll");
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
| **userId** | **String**|  | |

### Return type

[**AdminUserTokensRevokeAllResponse**](AdminUserTokensRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Tokens revoked |  -  |
| **403** | Target holds privileges the actor lacks |  -  |
| **404** | User not found |  -  |

<a id="adminUserTokensRevokePost"></a>
# **adminUserTokensRevokePost**
> AdminUserTokensRevokePostResponse adminUserTokensRevokePost(orgId, userId)

Revoke all tokens of a user (POST alias)

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSessionsApi;

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

    AdminSessionsApi apiInstance = new AdminSessionsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      AdminUserTokensRevokePostResponse result = apiInstance.adminUserTokensRevokePost(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSessionsApi#adminUserTokensRevokePost");
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
| **userId** | **String**|  | |

### Return type

[**AdminUserTokensRevokePostResponse**](AdminUserTokensRevokePostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Tokens revoked; the message carries the count |  -  |
| **403** | Target holds privileges the actor lacks |  -  |
| **404** | User not found |  -  |

