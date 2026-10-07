# AdminEmailApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**adminEmailTemplatesDelete**](AdminEmailApi.md#adminEmailTemplatesDelete) | **DELETE** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Remove the custom email template so the built-in default is used |
| [**adminEmailTemplatesGet**](AdminEmailApi.md#adminEmailTemplatesGet) | **GET** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Get an email template (custom or built-in default) |
| [**adminEmailTemplatesList**](AdminEmailApi.md#adminEmailTemplatesList) | **GET** /orgs/{orgId}/api/v1/admin/email-templates | List every email template type with its current (custom or built-in) template |
| [**adminEmailTemplatesPreview**](AdminEmailApi.md#adminEmailTemplatesPreview) | **POST** /orgs/{orgId}/api/v1/admin/email-templates/{type}/preview | Render an email template with sample data |
| [**adminEmailTemplatesUpsert**](AdminEmailApi.md#adminEmailTemplatesUpsert) | **PUT** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Create or replace the custom email template for a type |
| [**adminEmailTemplatesVariables**](AdminEmailApi.md#adminEmailTemplatesVariables) | **GET** /orgs/{orgId}/api/v1/admin/email-templates/{type}/variables | List the placeholders available to an email template type |


<a id="adminEmailTemplatesDelete"></a>
# **adminEmailTemplatesDelete**
> MessageResponse adminEmailTemplatesDelete(orgId, type)

Remove the custom email template so the built-in default is used

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminEmailApi;

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

    AdminEmailApi apiInstance = new AdminEmailApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String type = "type_example"; // String | 
    try {
      MessageResponse result = apiInstance.adminEmailTemplatesDelete(orgId, type);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminEmailApi#adminEmailTemplatesDelete");
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
| **type** | **String**|  | |

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
| **200** | Reverted to default |  -  |
| **404** | Unknown template type, or no custom template exists |  -  |

<a id="adminEmailTemplatesGet"></a>
# **adminEmailTemplatesGet**
> EmailTemplate adminEmailTemplatesGet(orgId, type)

Get an email template (custom or built-in default)

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminEmailApi;

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

    AdminEmailApi apiInstance = new AdminEmailApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String type = "type_example"; // String | 
    try {
      EmailTemplate result = apiInstance.adminEmailTemplatesGet(orgId, type);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminEmailApi#adminEmailTemplatesGet");
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
| **type** | **String**|  | |

### Return type

[**EmailTemplate**](EmailTemplate.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Template including body_html |  -  |
| **404** | Unknown template type |  -  |

<a id="adminEmailTemplatesList"></a>
# **adminEmailTemplatesList**
> AdminEmailTemplatesListResponse adminEmailTemplatesList(orgId)

List every email template type with its current (custom or built-in) template

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminEmailApi;

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

    AdminEmailApi apiInstance = new AdminEmailApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminEmailTemplatesListResponse result = apiInstance.adminEmailTemplatesList(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminEmailApi#adminEmailTemplatesList");
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

[**AdminEmailTemplatesListResponse**](AdminEmailTemplatesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Templates without body_html; &#x60;email_templates&#x60; duplicates &#x60;data&#x60; |  -  |

<a id="adminEmailTemplatesPreview"></a>
# **adminEmailTemplatesPreview**
> AdminEmailTemplatesPreviewResponse adminEmailTemplatesPreview(orgId, type)

Render an email template with sample data

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminEmailApi;

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

    AdminEmailApi apiInstance = new AdminEmailApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String type = "type_example"; // String | 
    try {
      AdminEmailTemplatesPreviewResponse result = apiInstance.adminEmailTemplatesPreview(orgId, type);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminEmailApi#adminEmailTemplatesPreview");
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
| **type** | **String**|  | |

### Return type

[**AdminEmailTemplatesPreviewResponse**](AdminEmailTemplatesPreviewResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Rendered preview |  -  |
| **404** | Unknown template type |  -  |

<a id="adminEmailTemplatesUpsert"></a>
# **adminEmailTemplatesUpsert**
> EmailTemplate adminEmailTemplatesUpsert(orgId, type)

Create or replace the custom email template for a type

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminEmailApi;

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

    AdminEmailApi apiInstance = new AdminEmailApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String type = "type_example"; // String | 
    try {
      EmailTemplate result = apiInstance.adminEmailTemplatesUpsert(orgId, type);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminEmailApi#adminEmailTemplatesUpsert");
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
| **type** | **String**|  | |

### Return type

[**EmailTemplate**](EmailTemplate.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Saved template including body_html |  -  |
| **404** | Unknown template type |  -  |
| **422** | Validation failed |  -  |

<a id="adminEmailTemplatesVariables"></a>
# **adminEmailTemplatesVariables**
> AdminEmailTemplatesVariablesResponse adminEmailTemplatesVariables(orgId, type)

List the placeholders available to an email template type

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminEmailApi;

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

    AdminEmailApi apiInstance = new AdminEmailApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String type = "type_example"; // String | 
    try {
      AdminEmailTemplatesVariablesResponse result = apiInstance.adminEmailTemplatesVariables(orgId, type);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminEmailApi#adminEmailTemplatesVariables");
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
| **type** | **String**|  | |

### Return type

[**AdminEmailTemplatesVariablesResponse**](AdminEmailTemplatesVariablesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Placeholder to description map |  -  |
| **404** | Unknown template type |  -  |

