# AdminIdentityProvidersApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**adminSocialProvidersAvailable**](AdminIdentityProvidersApi.md#adminSocialProvidersAvailable) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/available | List the available social login provider types |
| [**adminSocialProvidersCallbackUrls**](AdminIdentityProvidersApi.md#adminSocialProvidersCallbackUrls) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/callback-urls | Get the OAuth callback URL of every configured provider |
| [**adminSocialProvidersCreate**](AdminIdentityProvidersApi.md#adminSocialProvidersCreate) | **POST** /orgs/{orgId}/api/v1/admin/social-providers | Create a social login provider |
| [**adminSocialProvidersDelete**](AdminIdentityProvidersApi.md#adminSocialProvidersDelete) | **DELETE** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Delete a social login provider |
| [**adminSocialProvidersDisable**](AdminIdentityProvidersApi.md#adminSocialProvidersDisable) | **POST** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/disable | Disable a social login provider |
| [**adminSocialProvidersEnable**](AdminIdentityProvidersApi.md#adminSocialProvidersEnable) | **POST** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/enable | Enable a social login provider |
| [**adminSocialProvidersGet**](AdminIdentityProvidersApi.md#adminSocialProvidersGet) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Get a social login provider |
| [**adminSocialProvidersList**](AdminIdentityProvidersApi.md#adminSocialProvidersList) | **GET** /orgs/{orgId}/api/v1/admin/social-providers | List social login providers |
| [**adminSocialProvidersTypes**](AdminIdentityProvidersApi.md#adminSocialProvidersTypes) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/types | List the available social login provider types |
| [**patchAdminSocialProvidersUpdate**](AdminIdentityProvidersApi.md#patchAdminSocialProvidersUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Update a social login provider |
| [**putAdminSocialProvidersUpdate**](AdminIdentityProvidersApi.md#putAdminSocialProvidersUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Create or replace a social login provider |


<a id="adminSocialProvidersAvailable"></a>
# **adminSocialProvidersAvailable**
> AdminSocialProvidersAvailableResponse adminSocialProvidersAvailable(orgId)

List the available social login provider types

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminIdentityProvidersApi;

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

    AdminIdentityProvidersApi apiInstance = new AdminIdentityProvidersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminSocialProvidersAvailableResponse result = apiInstance.adminSocialProvidersAvailable(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminIdentityProvidersApi#adminSocialProvidersAvailable");
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

[**AdminSocialProvidersAvailableResponse**](AdminSocialProvidersAvailableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Provider types |  -  |

<a id="adminSocialProvidersCallbackUrls"></a>
# **adminSocialProvidersCallbackUrls**
> AdminSocialProvidersCallbackUrlsResponse adminSocialProvidersCallbackUrls(orgId)

Get the OAuth callback URL of every configured provider

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminIdentityProvidersApi;

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

    AdminIdentityProvidersApi apiInstance = new AdminIdentityProvidersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminSocialProvidersCallbackUrlsResponse result = apiInstance.adminSocialProvidersCallbackUrls(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminIdentityProvidersApi#adminSocialProvidersCallbackUrls");
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

[**AdminSocialProvidersCallbackUrlsResponse**](AdminSocialProvidersCallbackUrlsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Map of provider name to callback URL |  -  |

<a id="adminSocialProvidersCreate"></a>
# **adminSocialProvidersCreate**
> AdminSocialProvidersCreateResponse adminSocialProvidersCreate(orgId)

Create a social login provider

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminIdentityProvidersApi;

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

    AdminIdentityProvidersApi apiInstance = new AdminIdentityProvidersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminSocialProvidersCreateResponse result = apiInstance.adminSocialProvidersCreate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminIdentityProvidersApi#adminSocialProvidersCreate");
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

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created provider (detailed; secrets redacted) |  -  |
| **409** | Provider already configured |  -  |

<a id="adminSocialProvidersDelete"></a>
# **adminSocialProvidersDelete**
> MessageResponse adminSocialProvidersDelete(orgId, providerId)

Delete a social login provider

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminIdentityProvidersApi;

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

    AdminIdentityProvidersApi apiInstance = new AdminIdentityProvidersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String providerId = "providerId_example"; // String | 
    try {
      MessageResponse result = apiInstance.adminSocialProvidersDelete(orgId, providerId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminIdentityProvidersApi#adminSocialProvidersDelete");
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
| **providerId** | **String**|  | |

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
| **200** | Deleted |  -  |
| **404** | Social login provider not found |  -  |

<a id="adminSocialProvidersDisable"></a>
# **adminSocialProvidersDisable**
> AdminSocialProvidersCreateResponse adminSocialProvidersDisable(orgId, providerId)

Disable a social login provider

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminIdentityProvidersApi;

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

    AdminIdentityProvidersApi apiInstance = new AdminIdentityProvidersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String providerId = "providerId_example"; // String | 
    try {
      AdminSocialProvidersCreateResponse result = apiInstance.adminSocialProvidersDisable(orgId, providerId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminIdentityProvidersApi#adminSocialProvidersDisable");
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
| **providerId** | **String**|  | |

### Return type

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Provider disabled (summary fields only) |  -  |
| **404** | Social login provider not found |  -  |

<a id="adminSocialProvidersEnable"></a>
# **adminSocialProvidersEnable**
> AdminSocialProvidersCreateResponse adminSocialProvidersEnable(orgId, providerId)

Enable a social login provider

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminIdentityProvidersApi;

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

    AdminIdentityProvidersApi apiInstance = new AdminIdentityProvidersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String providerId = "providerId_example"; // String | 
    try {
      AdminSocialProvidersCreateResponse result = apiInstance.adminSocialProvidersEnable(orgId, providerId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminIdentityProvidersApi#adminSocialProvidersEnable");
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
| **providerId** | **String**|  | |

### Return type

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Provider enabled (summary fields only) |  -  |
| **404** | Social login provider not found |  -  |

<a id="adminSocialProvidersGet"></a>
# **adminSocialProvidersGet**
> AdminSocialProvidersGetResponse adminSocialProvidersGet(orgId, providerId)

Get a social login provider

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminIdentityProvidersApi;

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

    AdminIdentityProvidersApi apiInstance = new AdminIdentityProvidersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String providerId = "providerId_example"; // String | 
    try {
      AdminSocialProvidersGetResponse result = apiInstance.adminSocialProvidersGet(orgId, providerId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminIdentityProvidersApi#adminSocialProvidersGet");
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
| **providerId** | **String**|  | |

### Return type

[**AdminSocialProvidersGetResponse**](AdminSocialProvidersGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Provider (detailed; secrets redacted) |  -  |
| **404** | Social login provider not found |  -  |

<a id="adminSocialProvidersList"></a>
# **adminSocialProvidersList**
> AdminSocialProvidersListResponse adminSocialProvidersList(orgId)

List social login providers

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminIdentityProvidersApi;

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

    AdminIdentityProvidersApi apiInstance = new AdminIdentityProvidersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminSocialProvidersListResponse result = apiInstance.adminSocialProvidersList(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminIdentityProvidersApi#adminSocialProvidersList");
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

[**AdminSocialProvidersListResponse**](AdminSocialProvidersListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Providers (summary fields only) |  -  |

<a id="adminSocialProvidersTypes"></a>
# **adminSocialProvidersTypes**
> AdminSocialProvidersAvailableResponse adminSocialProvidersTypes(orgId)

List the available social login provider types

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminIdentityProvidersApi;

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

    AdminIdentityProvidersApi apiInstance = new AdminIdentityProvidersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminSocialProvidersAvailableResponse result = apiInstance.adminSocialProvidersTypes(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminIdentityProvidersApi#adminSocialProvidersTypes");
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

[**AdminSocialProvidersAvailableResponse**](AdminSocialProvidersAvailableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Provider types |  -  |

<a id="patchAdminSocialProvidersUpdate"></a>
# **patchAdminSocialProvidersUpdate**
> AdminSocialProvidersCreateResponse patchAdminSocialProvidersUpdate(orgId, providerId)

Update a social login provider

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminIdentityProvidersApi;

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

    AdminIdentityProvidersApi apiInstance = new AdminIdentityProvidersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String providerId = "providerId_example"; // String | 
    try {
      AdminSocialProvidersCreateResponse result = apiInstance.patchAdminSocialProvidersUpdate(orgId, providerId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminIdentityProvidersApi#patchAdminSocialProvidersUpdate");
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
| **providerId** | **String**|  | |

### Return type

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated provider (detailed) |  -  |
| **404** | Social login provider not found |  -  |

<a id="putAdminSocialProvidersUpdate"></a>
# **putAdminSocialProvidersUpdate**
> AdminSocialProvidersCreateResponse putAdminSocialProvidersUpdate(orgId, providerId)

Create or replace a social login provider

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminIdentityProvidersApi;

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

    AdminIdentityProvidersApi apiInstance = new AdminIdentityProvidersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String providerId = "providerId_example"; // String | 
    try {
      AdminSocialProvidersCreateResponse result = apiInstance.putAdminSocialProvidersUpdate(orgId, providerId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminIdentityProvidersApi#putAdminSocialProvidersUpdate");
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
| **providerId** | **String**|  | |

### Return type

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated provider (detailed) |  -  |
| **201** | Provider did not exist and was created |  -  |

