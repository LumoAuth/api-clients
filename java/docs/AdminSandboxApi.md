# AdminSandboxApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**adminSandboxDestroy**](AdminSandboxApi.md#adminSandboxDestroy) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/{sandboxSlug}/destroy | Destroy a sandbox tenant |
| [**adminSandboxList**](AdminSandboxApi.md#adminSandboxList) | **GET** /orgs/{orgId}/api/v1/admin/sandbox | List the caller&#39;s sandbox tenants |
| [**adminSandboxSpawn**](AdminSandboxApi.md#adminSandboxSpawn) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/spawn | Spawn a sandbox tenant |


<a id="adminSandboxDestroy"></a>
# **adminSandboxDestroy**
> MessageResponse adminSandboxDestroy(orgId, sandboxSlug)

Destroy a sandbox tenant

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSandboxApi;

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

    AdminSandboxApi apiInstance = new AdminSandboxApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String sandboxSlug = "sandboxSlug_example"; // String | 
    try {
      MessageResponse result = apiInstance.adminSandboxDestroy(orgId, sandboxSlug);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSandboxApi#adminSandboxDestroy");
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
| **sandboxSlug** | **String**|  | |

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
| **200** | Sandbox destroyed |  -  |
| **404** | Sandbox not found |  -  |

<a id="adminSandboxList"></a>
# **adminSandboxList**
> AdminSandboxListResponse adminSandboxList(orgId)

List the caller&#39;s sandbox tenants

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSandboxApi;

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

    AdminSandboxApi apiInstance = new AdminSandboxApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminSandboxListResponse result = apiInstance.adminSandboxList(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSandboxApi#adminSandboxList");
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

[**AdminSandboxListResponse**](AdminSandboxListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Sandboxes |  -  |

<a id="adminSandboxSpawn"></a>
# **adminSandboxSpawn**
> AdminSandboxSpawnResponse adminSandboxSpawn(orgId, adminSandboxSpawnRequest)

Spawn a sandbox tenant

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSandboxApi;

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

    AdminSandboxApi apiInstance = new AdminSandboxApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    AdminSandboxSpawnRequest adminSandboxSpawnRequest = new AdminSandboxSpawnRequest(); // AdminSandboxSpawnRequest | 
    try {
      AdminSandboxSpawnResponse result = apiInstance.adminSandboxSpawn(orgId, adminSandboxSpawnRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSandboxApi#adminSandboxSpawn");
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
| **adminSandboxSpawnRequest** | [**AdminSandboxSpawnRequest**](AdminSandboxSpawnRequest.md)|  | [optional] |

### Return type

[**AdminSandboxSpawnResponse**](AdminSandboxSpawnResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Sandbox created |  -  |
| **429** | Per-owner active-sandbox cap reached |  -  |

