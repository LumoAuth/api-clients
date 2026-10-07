# IdentityApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getMe**](IdentityApi.md#getMe) | **GET** /orgs/{orgId}/api/v1/me | Who am I |


<a id="getMe"></a>
# **getMe**
> GetMeResponse getMe(orgId)

Who am I

Returns the authenticated principal (user or agent). Use the &#x60;subject_type&#x60; field to discriminate.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.IdentityApi;

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

    IdentityApi apiInstance = new IdentityApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      GetMeResponse result = apiInstance.getMe(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IdentityApi#getMe");
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

[**GetMeResponse**](GetMeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The authenticated principal |  -  |
| **401** | Unauthorized |  -  |
| **404** | Tenant not found |  -  |

