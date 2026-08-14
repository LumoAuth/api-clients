# AdminAgentsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**adminAgentsActivate**](AdminAgentsApi.md#adminAgentsActivate) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/activate | Activate an agent |
| [**adminAgentsAgentsDisable**](AdminAgentsApi.md#adminAgentsAgentsDisable) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/disable | Disable agent |
| [**adminAgentsAgentsEnable**](AdminAgentsApi.md#adminAgentsAgentsEnable) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/enable | Enable agent |
| [**adminAgentsAgentsRotateKey**](AdminAgentsApi.md#adminAgentsAgentsRotateKey) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-key | Rotate agent API key |
| [**adminAgentsCreate**](AdminAgentsApi.md#adminAgentsCreate) | **POST** /orgs/{orgId}/api/v1/admin/agents | Create a new agent |
| [**adminAgentsDeactivate**](AdminAgentsApi.md#adminAgentsDeactivate) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/deactivate | Deactivate an agent |
| [**adminAgentsDelete**](AdminAgentsApi.md#adminAgentsDelete) | **DELETE** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Delete an agent |
| [**adminAgentsGenerateToken**](AdminAgentsApi.md#adminAgentsGenerateToken) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/token | Generate a token for the agent |
| [**adminAgentsGet**](AdminAgentsApi.md#adminAgentsGet) | **GET** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Get a single agent by ID or agentId |
| [**adminAgentsGetScopes**](AdminAgentsApi.md#adminAgentsGetScopes) | **GET** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Get agent scopes/capabilities |
| [**adminAgentsList**](AdminAgentsApi.md#adminAgentsList) | **GET** /orgs/{orgId}/api/v1/admin/agents | List all agents in the tenant |
| [**adminAgentsRevokeKey**](AdminAgentsApi.md#adminAgentsRevokeKey) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/revoke-key | Revoke agent API key (nullify it so it can no longer authenticate) |
| [**adminAgentsRotateCredentials**](AdminAgentsApi.md#adminAgentsRotateCredentials) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-credentials | Rotate agent credentials |
| [**adminAgentsSetScopes**](AdminAgentsApi.md#adminAgentsSetScopes) | **PUT** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Update agent scopes/capabilities |
| [**patchAdminAgentsUpdate**](AdminAgentsApi.md#patchAdminAgentsUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent |
| [**putAdminAgentsUpdate**](AdminAgentsApi.md#putAdminAgentsUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent |


<a id="adminAgentsActivate"></a>
# **adminAgentsActivate**
> AdminAgentsActivateResponse adminAgentsActivate(orgId, agentId)

Activate an agent

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAgentsApi;

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

    AdminAgentsApi apiInstance = new AdminAgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String agentId = "agentId_example"; // String | 
    try {
      AdminAgentsActivateResponse result = apiInstance.adminAgentsActivate(orgId, agentId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAgentsApi#adminAgentsActivate");
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

[**AdminAgentsActivateResponse**](AdminAgentsActivateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Agent activated. |  -  |
| **401** | Authentication required. |  -  |
| **403** | Admin privileges required. |  -  |
| **404** | Tenant or agent not found. |  -  |

<a id="adminAgentsAgentsDisable"></a>
# **adminAgentsAgentsDisable**
> AdminAgentsAgentsDisableResponse adminAgentsAgentsDisable(orgId, agentId)

Disable agent

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAgentsApi;

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

    AdminAgentsApi apiInstance = new AdminAgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String agentId = "agentId_example"; // String | 
    try {
      AdminAgentsAgentsDisableResponse result = apiInstance.adminAgentsAgentsDisable(orgId, agentId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAgentsApi#adminAgentsAgentsDisable");
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

[**AdminAgentsAgentsDisableResponse**](AdminAgentsAgentsDisableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Agent disabled. |  -  |
| **401** | Authentication required. |  -  |
| **403** | Admin privileges required. |  -  |
| **404** | Tenant or agent not found. |  -  |

<a id="adminAgentsAgentsEnable"></a>
# **adminAgentsAgentsEnable**
> AdminAgentsAgentsEnableResponse adminAgentsAgentsEnable(orgId, agentId)

Enable agent

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAgentsApi;

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

    AdminAgentsApi apiInstance = new AdminAgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String agentId = "agentId_example"; // String | 
    try {
      AdminAgentsAgentsEnableResponse result = apiInstance.adminAgentsAgentsEnable(orgId, agentId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAgentsApi#adminAgentsAgentsEnable");
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

[**AdminAgentsAgentsEnableResponse**](AdminAgentsAgentsEnableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Agent enabled. |  -  |
| **401** | Authentication required. |  -  |
| **403** | Admin privileges required. |  -  |
| **404** | Tenant or agent not found. |  -  |

<a id="adminAgentsAgentsRotateKey"></a>
# **adminAgentsAgentsRotateKey**
> AdminAgentsAgentsRotateKeyResponse adminAgentsAgentsRotateKey(orgId, agentId)

Rotate agent API key

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAgentsApi;

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

    AdminAgentsApi apiInstance = new AdminAgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String agentId = "agentId_example"; // String | 
    try {
      AdminAgentsAgentsRotateKeyResponse result = apiInstance.adminAgentsAgentsRotateKey(orgId, agentId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAgentsApi#adminAgentsAgentsRotateKey");
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

[**AdminAgentsAgentsRotateKeyResponse**](AdminAgentsAgentsRotateKeyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | API key rotated. The new key is returned ONCE and cannot be retrieved again. |  -  |
| **401** | Authentication required. |  -  |
| **403** | Admin privileges required. |  -  |
| **404** | Tenant or agent not found. |  -  |

<a id="adminAgentsCreate"></a>
# **adminAgentsCreate**
> AdminAgentsCreateResponse adminAgentsCreate(orgId, adminAgentsCreateRequest)

Create a new agent

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAgentsApi;

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

    AdminAgentsApi apiInstance = new AdminAgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    AdminAgentsCreateRequest adminAgentsCreateRequest = new AdminAgentsCreateRequest(); // AdminAgentsCreateRequest | 
    try {
      AdminAgentsCreateResponse result = apiInstance.adminAgentsCreate(orgId, adminAgentsCreateRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAgentsApi#adminAgentsCreate");
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
| **adminAgentsCreateRequest** | [**AdminAgentsCreateRequest**](AdminAgentsCreateRequest.md)|  | |

### Return type

[**AdminAgentsCreateResponse**](AdminAgentsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Agent created. The generated credential/secret is returned ONCE and cannot be retrieved again. |  -  |
| **400** | Missing required field: name. |  -  |
| **401** | Authentication required. |  -  |
| **403** | Admin privileges required. |  -  |
| **404** | Tenant not found. |  -  |

<a id="adminAgentsDeactivate"></a>
# **adminAgentsDeactivate**
> AdminAgentsDeactivateResponse adminAgentsDeactivate(orgId, agentId)

Deactivate an agent

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAgentsApi;

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

    AdminAgentsApi apiInstance = new AdminAgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String agentId = "agentId_example"; // String | 
    try {
      AdminAgentsDeactivateResponse result = apiInstance.adminAgentsDeactivate(orgId, agentId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAgentsApi#adminAgentsDeactivate");
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

[**AdminAgentsDeactivateResponse**](AdminAgentsDeactivateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Agent deactivated. |  -  |
| **401** | Authentication required. |  -  |
| **403** | Admin privileges required. |  -  |
| **404** | Tenant or agent not found. |  -  |

<a id="adminAgentsDelete"></a>
# **adminAgentsDelete**
> MessageResponse adminAgentsDelete(orgId, agentId)

Delete an agent

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAgentsApi;

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

    AdminAgentsApi apiInstance = new AdminAgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String agentId = "agentId_example"; // String | 
    try {
      MessageResponse result = apiInstance.adminAgentsDelete(orgId, agentId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAgentsApi#adminAgentsDelete");
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

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Agent deleted. |  -  |
| **401** | Authentication required. |  -  |
| **403** | Admin privileges required. |  -  |
| **404** | Tenant or agent not found. |  -  |

<a id="adminAgentsGenerateToken"></a>
# **adminAgentsGenerateToken**
> AdminAgentsGenerateTokenResponse adminAgentsGenerateToken(orgId, agentId, adminAgentsGenerateTokenRequest)

Generate a token for the agent

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAgentsApi;

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

    AdminAgentsApi apiInstance = new AdminAgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String agentId = "agentId_example"; // String | 
    AdminAgentsGenerateTokenRequest adminAgentsGenerateTokenRequest = new AdminAgentsGenerateTokenRequest(); // AdminAgentsGenerateTokenRequest | 
    try {
      AdminAgentsGenerateTokenResponse result = apiInstance.adminAgentsGenerateToken(orgId, agentId, adminAgentsGenerateTokenRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAgentsApi#adminAgentsGenerateToken");
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
| **adminAgentsGenerateTokenRequest** | [**AdminAgentsGenerateTokenRequest**](AdminAgentsGenerateTokenRequest.md)|  | [optional] |

### Return type

[**AdminAgentsGenerateTokenResponse**](AdminAgentsGenerateTokenResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A generated agent token. The token value is returned ONCE. |  -  |
| **400** | Cannot generate token for inactive agent. |  -  |
| **401** | Authentication required. |  -  |
| **403** | Admin privileges required. |  -  |
| **404** | Tenant or agent not found. |  -  |

<a id="adminAgentsGet"></a>
# **adminAgentsGet**
> AdminAgentsGetResponse adminAgentsGet(orgId, agentId)

Get a single agent by ID or agentId

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAgentsApi;

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

    AdminAgentsApi apiInstance = new AdminAgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String agentId = "agentId_example"; // String | 
    try {
      AdminAgentsGetResponse result = apiInstance.adminAgentsGet(orgId, agentId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAgentsApi#adminAgentsGet");
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

[**AdminAgentsGetResponse**](AdminAgentsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The agent record. |  -  |
| **401** | Authentication required. |  -  |
| **403** | Admin privileges required. |  -  |
| **404** | Tenant or agent not found. |  -  |

<a id="adminAgentsGetScopes"></a>
# **adminAgentsGetScopes**
> AdminAgentsGetScopesResponse adminAgentsGetScopes(orgId, agentId)

Get agent scopes/capabilities

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAgentsApi;

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

    AdminAgentsApi apiInstance = new AdminAgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String agentId = "agentId_example"; // String | 
    try {
      AdminAgentsGetScopesResponse result = apiInstance.adminAgentsGetScopes(orgId, agentId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAgentsApi#adminAgentsGetScopes");
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

[**AdminAgentsGetScopesResponse**](AdminAgentsGetScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Agent scopes/capabilities. |  -  |
| **401** | Authentication required. |  -  |
| **403** | Admin privileges required. |  -  |
| **404** | Tenant or agent not found. |  -  |

<a id="adminAgentsList"></a>
# **adminAgentsList**
> AdminAgentsListResponse adminAgentsList(orgId)

List all agents in the tenant

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAgentsApi;

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

    AdminAgentsApi apiInstance = new AdminAgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminAgentsListResponse result = apiInstance.adminAgentsList(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAgentsApi#adminAgentsList");
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

[**AdminAgentsListResponse**](AdminAgentsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated list of agents. |  -  |
| **401** | Authentication required. |  -  |
| **403** | Admin privileges required. |  -  |
| **404** | Tenant not found. |  -  |

<a id="adminAgentsRevokeKey"></a>
# **adminAgentsRevokeKey**
> AdminAgentsRevokeKeyResponse adminAgentsRevokeKey(orgId, agentId)

Revoke agent API key (nullify it so it can no longer authenticate)

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAgentsApi;

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

    AdminAgentsApi apiInstance = new AdminAgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String agentId = "agentId_example"; // String | 
    try {
      AdminAgentsRevokeKeyResponse result = apiInstance.adminAgentsRevokeKey(orgId, agentId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAgentsApi#adminAgentsRevokeKey");
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

[**AdminAgentsRevokeKeyResponse**](AdminAgentsRevokeKeyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Agent API key revoked (nullified). |  -  |
| **401** | Authentication required. |  -  |
| **403** | Admin privileges required. |  -  |
| **404** | Tenant or agent not found. |  -  |

<a id="adminAgentsRotateCredentials"></a>
# **adminAgentsRotateCredentials**
> AdminAgentsRotateCredentialsResponse adminAgentsRotateCredentials(orgId, agentId)

Rotate agent credentials

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAgentsApi;

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

    AdminAgentsApi apiInstance = new AdminAgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String agentId = "agentId_example"; // String | 
    try {
      AdminAgentsRotateCredentialsResponse result = apiInstance.adminAgentsRotateCredentials(orgId, agentId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAgentsApi#adminAgentsRotateCredentials");
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

[**AdminAgentsRotateCredentialsResponse**](AdminAgentsRotateCredentialsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Credentials rotated. The new secret is returned ONCE and cannot be retrieved again. |  -  |
| **400** | Credentials cannot be rotated for this agent (invalid identity type). |  -  |
| **401** | Authentication required. |  -  |
| **403** | Admin privileges required. |  -  |
| **404** | Tenant or agent not found. |  -  |

<a id="adminAgentsSetScopes"></a>
# **adminAgentsSetScopes**
> AdminAgentsSetScopesResponse adminAgentsSetScopes(orgId, agentId, adminAgentsSetScopesRequest)

Update agent scopes/capabilities

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAgentsApi;

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

    AdminAgentsApi apiInstance = new AdminAgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String agentId = "agentId_example"; // String | 
    AdminAgentsSetScopesRequest adminAgentsSetScopesRequest = new AdminAgentsSetScopesRequest(); // AdminAgentsSetScopesRequest | 
    try {
      AdminAgentsSetScopesResponse result = apiInstance.adminAgentsSetScopes(orgId, agentId, adminAgentsSetScopesRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAgentsApi#adminAgentsSetScopes");
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
| **adminAgentsSetScopesRequest** | [**AdminAgentsSetScopesRequest**](AdminAgentsSetScopesRequest.md)|  | |

### Return type

[**AdminAgentsSetScopesResponse**](AdminAgentsSetScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Agent scopes updated. |  -  |
| **400** | scopes array is required. |  -  |
| **401** | Authentication required. |  -  |
| **403** | Admin privileges required. |  -  |
| **404** | Tenant or agent not found. |  -  |

<a id="patchAdminAgentsUpdate"></a>
# **patchAdminAgentsUpdate**
> PutAdminAgentsUpdateResponse patchAdminAgentsUpdate(orgId, agentId, putAdminAgentsUpdateRequest)

Update an existing agent

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAgentsApi;

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

    AdminAgentsApi apiInstance = new AdminAgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String agentId = "agentId_example"; // String | 
    PutAdminAgentsUpdateRequest putAdminAgentsUpdateRequest = new PutAdminAgentsUpdateRequest(); // PutAdminAgentsUpdateRequest | 
    try {
      PutAdminAgentsUpdateResponse result = apiInstance.patchAdminAgentsUpdate(orgId, agentId, putAdminAgentsUpdateRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAgentsApi#patchAdminAgentsUpdate");
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
| **putAdminAgentsUpdateRequest** | [**PutAdminAgentsUpdateRequest**](PutAdminAgentsUpdateRequest.md)|  | |

### Return type

[**PutAdminAgentsUpdateResponse**](PutAdminAgentsUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Agent updated. |  -  |
| **401** | Authentication required. |  -  |
| **403** | Admin privileges required. |  -  |
| **404** | Tenant or agent not found. |  -  |

<a id="putAdminAgentsUpdate"></a>
# **putAdminAgentsUpdate**
> PutAdminAgentsUpdateResponse putAdminAgentsUpdate(orgId, agentId, putAdminAgentsUpdateRequest)

Update an existing agent

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAgentsApi;

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

    AdminAgentsApi apiInstance = new AdminAgentsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String agentId = "agentId_example"; // String | 
    PutAdminAgentsUpdateRequest putAdminAgentsUpdateRequest = new PutAdminAgentsUpdateRequest(); // PutAdminAgentsUpdateRequest | 
    try {
      PutAdminAgentsUpdateResponse result = apiInstance.putAdminAgentsUpdate(orgId, agentId, putAdminAgentsUpdateRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAgentsApi#putAdminAgentsUpdate");
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
| **putAdminAgentsUpdateRequest** | [**PutAdminAgentsUpdateRequest**](PutAdminAgentsUpdateRequest.md)|  | |

### Return type

[**PutAdminAgentsUpdateResponse**](PutAdminAgentsUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Agent updated. |  -  |
| **401** | Authentication required. |  -  |
| **403** | Admin privileges required. |  -  |
| **404** | Tenant or agent not found. |  -  |

