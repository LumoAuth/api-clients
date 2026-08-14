# WellKnownApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getAuthorizationServerMetadata**](WellKnownApi.md#getAuthorizationServerMetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-authorization-server |  |
| [**getJwks**](WellKnownApi.md#getJwks) | **GET** /orgs/{orgId}/api/v1/.well-known/jwks.json |  |
| [**getOpenidConfiguration**](WellKnownApi.md#getOpenidConfiguration) | **GET** /orgs/{orgId}/api/v1/.well-known/openid-configuration |  |
| [**getSsfConfiguration**](WellKnownApi.md#getSsfConfiguration) | **GET** /orgs/{orgId}/api/v1/.well-known/ssf-configuration |  |


<a id="getAuthorizationServerMetadata"></a>
# **getAuthorizationServerMetadata**
> getAuthorizationServerMetadata(orgId)



### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.WellKnownApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    WellKnownApi apiInstance = new WellKnownApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.getAuthorizationServerMetadata(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling WellKnownApi#getAuthorizationServerMetadata");
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

<a id="getJwks"></a>
# **getJwks**
> getJwks(orgId)



### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.WellKnownApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    WellKnownApi apiInstance = new WellKnownApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.getJwks(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling WellKnownApi#getJwks");
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

<a id="getOpenidConfiguration"></a>
# **getOpenidConfiguration**
> getOpenidConfiguration(orgId)



### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.WellKnownApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    WellKnownApi apiInstance = new WellKnownApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.getOpenidConfiguration(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling WellKnownApi#getOpenidConfiguration");
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

<a id="getSsfConfiguration"></a>
# **getSsfConfiguration**
> getSsfConfiguration(orgId)



### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.WellKnownApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://app.lumoauth.dev");

    WellKnownApi apiInstance = new WellKnownApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      apiInstance.getSsfConfiguration(orgId);
    } catch (ApiException e) {
      System.err.println("Exception when calling WellKnownApi#getSsfConfiguration");
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

