# AdminAbacApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**abacAttributesCreate**](AdminAbacApi.md#abacAttributesCreate) | **POST** /orgs/{orgId}/api/v1/abac/attributes | Create an attribute definition |
| [**abacAttributesDelete**](AdminAbacApi.md#abacAttributesDelete) | **DELETE** /orgs/{orgId}/api/v1/abac/attributes/{id} | Delete an attribute definition |
| [**abacAttributesGet**](AdminAbacApi.md#abacAttributesGet) | **GET** /orgs/{orgId}/api/v1/abac/attributes/{id} | Get an attribute definition |
| [**abacAttributesList**](AdminAbacApi.md#abacAttributesList) | **GET** /orgs/{orgId}/api/v1/abac/attributes | List attribute definitions |
| [**abacPoliciesCreate**](AdminAbacApi.md#abacPoliciesCreate) | **POST** /orgs/{orgId}/api/v1/abac/policies | Create an ABAC policy |
| [**abacPoliciesDelete**](AdminAbacApi.md#abacPoliciesDelete) | **DELETE** /orgs/{orgId}/api/v1/abac/policies/{id} | Delete an ABAC policy |
| [**abacPoliciesGet**](AdminAbacApi.md#abacPoliciesGet) | **GET** /orgs/{orgId}/api/v1/abac/policies/{id} | Get an ABAC policy |
| [**abacPoliciesList**](AdminAbacApi.md#abacPoliciesList) | **GET** /orgs/{orgId}/api/v1/abac/policies | List ABAC policies |
| [**abacPoliciesToggle**](AdminAbacApi.md#abacPoliciesToggle) | **POST** /orgs/{orgId}/api/v1/abac/policies/{id}/toggle | Toggle a policy between active and inactive |
| [**patchAbacAttributesUpdate**](AdminAbacApi.md#patchAbacAttributesUpdate) | **PATCH** /orgs/{orgId}/api/v1/abac/attributes/{id} | Partially update an attribute definition |
| [**patchAbacPoliciesUpdate**](AdminAbacApi.md#patchAbacPoliciesUpdate) | **PATCH** /orgs/{orgId}/api/v1/abac/policies/{id} | Partially update an ABAC policy |
| [**putAbacAttributesUpdate**](AdminAbacApi.md#putAbacAttributesUpdate) | **PUT** /orgs/{orgId}/api/v1/abac/attributes/{id} | Update an attribute definition |
| [**putAbacPoliciesUpdate**](AdminAbacApi.md#putAbacPoliciesUpdate) | **PUT** /orgs/{orgId}/api/v1/abac/policies/{id} | Update an ABAC policy |


<a id="abacAttributesCreate"></a>
# **abacAttributesCreate**
> AbacAttributesCreateResponse abacAttributesCreate(orgId, abacAttributesCreateRequest)

Create an attribute definition

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAbacApi;

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

    AdminAbacApi apiInstance = new AdminAbacApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    AbacAttributesCreateRequest abacAttributesCreateRequest = new AbacAttributesCreateRequest(); // AbacAttributesCreateRequest | 
    try {
      AbacAttributesCreateResponse result = apiInstance.abacAttributesCreate(orgId, abacAttributesCreateRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAbacApi#abacAttributesCreate");
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
| **abacAttributesCreateRequest** | [**AbacAttributesCreateRequest**](AbacAttributesCreateRequest.md)|  | |

### Return type

[**AbacAttributesCreateResponse**](AbacAttributesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created |  -  |
| **403** | An active policy already reads an attribute of this name and covers permissions that the caller does not hold. |  -  |
| **409** | An attribute with this slug already exists |  -  |

<a id="abacAttributesDelete"></a>
# **abacAttributesDelete**
> MessageResponse abacAttributesDelete(orgId, id)

Delete an attribute definition

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAbacApi;

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

    AdminAbacApi apiInstance = new AdminAbacApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String id = "id_example"; // String | 
    try {
      MessageResponse result = apiInstance.abacAttributesDelete(orgId, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAbacApi#abacAttributesDelete");
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
| **id** | **String**|  | |

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
| **403** | System and built-in attribute definitions cannot be deleted. Also refused when an active policy reads the attribute and covers permissions that the caller does not hold: only a full administrator, or an administrator who holds those permissions, can create, delete or change the kind, data type or default value of such an attribute. |  -  |
| **404** | Attribute definition not found |  -  |

<a id="abacAttributesGet"></a>
# **abacAttributesGet**
> AbacAttributesGetResponse abacAttributesGet(orgId, id)

Get an attribute definition

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAbacApi;

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

    AdminAbacApi apiInstance = new AdminAbacApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String id = "id_example"; // String | 
    try {
      AbacAttributesGetResponse result = apiInstance.abacAttributesGet(orgId, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAbacApi#abacAttributesGet");
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
| **id** | **String**|  | |

### Return type

[**AbacAttributesGetResponse**](AbacAttributesGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Attribute definition |  -  |
| **404** | Attribute definition not found |  -  |

<a id="abacAttributesList"></a>
# **abacAttributesList**
> AbacAttributesListResponse abacAttributesList(orgId)

List attribute definitions

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAbacApi;

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

    AdminAbacApi apiInstance = new AdminAbacApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AbacAttributesListResponse result = apiInstance.abacAttributesList(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAbacApi#abacAttributesList");
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

[**AbacAttributesListResponse**](AbacAttributesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated attribute definitions |  -  |

<a id="abacPoliciesCreate"></a>
# **abacPoliciesCreate**
> AbacPoliciesCreateResponse abacPoliciesCreate(orgId, abacPoliciesCreateRequest)

Create an ABAC policy

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAbacApi;

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

    AdminAbacApi apiInstance = new AdminAbacApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    AbacPoliciesCreateRequest abacPoliciesCreateRequest = new AbacPoliciesCreateRequest(); // AbacPoliciesCreateRequest | 
    try {
      AbacPoliciesCreateResponse result = apiInstance.abacPoliciesCreate(orgId, abacPoliciesCreateRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAbacApi#abacPoliciesCreate");
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
| **abacPoliciesCreateRequest** | [**AbacPoliciesCreateRequest**](AbacPoliciesCreateRequest.md)|  | |

### Return type

[**AbacPoliciesCreateResponse**](AbacPoliciesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created |  -  |
| **400** | Invalid effect, priority (a whole number from 0 to 1000), resourceType or action (empty, longer than 100 characters, or naming no action), or policy conditions. &#x60;action&#x60; is one action, several separated by commas (&#x60;read, write&#x60;), or &#x60;*&#x60;. |  -  |
| **409** | A policy with this slug already exists |  -  |

<a id="abacPoliciesDelete"></a>
# **abacPoliciesDelete**
> MessageResponse abacPoliciesDelete(orgId, id)

Delete an ABAC policy

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAbacApi;

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

    AdminAbacApi apiInstance = new AdminAbacApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String id = "id_example"; // String | 
    try {
      MessageResponse result = apiInstance.abacPoliciesDelete(orgId, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAbacApi#abacPoliciesDelete");
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
| **id** | **String**|  | |

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
| **403** | System and built-in policies cannot be deleted. Also refused when the change removes, switches off or narrows an active deny policy and the caller could not allow what it denies: that needs a full administrator, or the permission &#x60;&lt;resourceType&gt;.&lt;action&gt;&#x60; for every action of the policy. |  -  |
| **404** | Policy not found |  -  |

<a id="abacPoliciesGet"></a>
# **abacPoliciesGet**
> AbacPoliciesGetResponse abacPoliciesGet(orgId, id)

Get an ABAC policy

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAbacApi;

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

    AdminAbacApi apiInstance = new AdminAbacApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String id = "id_example"; // String | 
    try {
      AbacPoliciesGetResponse result = apiInstance.abacPoliciesGet(orgId, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAbacApi#abacPoliciesGet");
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
| **id** | **String**|  | |

### Return type

[**AbacPoliciesGetResponse**](AbacPoliciesGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Policy |  -  |
| **404** | Policy not found |  -  |

<a id="abacPoliciesList"></a>
# **abacPoliciesList**
> AbacPoliciesListResponse abacPoliciesList(orgId, action)

List ABAC policies

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAbacApi;

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

    AdminAbacApi apiInstance = new AdminAbacApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String action = "action_example"; // String | Only policies that name this action, alone or in a comma-separated list. `*` lists the policies that name `*`.
    try {
      AbacPoliciesListResponse result = apiInstance.abacPoliciesList(orgId, action);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAbacApi#abacPoliciesList");
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
| **action** | **String**| Only policies that name this action, alone or in a comma-separated list. &#x60;*&#x60; lists the policies that name &#x60;*&#x60;. | [optional] |

### Return type

[**AbacPoliciesListResponse**](AbacPoliciesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated policies |  -  |

<a id="abacPoliciesToggle"></a>
# **abacPoliciesToggle**
> AbacPoliciesToggleResponse abacPoliciesToggle(orgId, id)

Toggle a policy between active and inactive

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAbacApi;

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

    AdminAbacApi apiInstance = new AdminAbacApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String id = "id_example"; // String | 
    try {
      AbacPoliciesToggleResponse result = apiInstance.abacPoliciesToggle(orgId, id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAbacApi#abacPoliciesToggle");
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
| **id** | **String**|  | |

### Return type

[**AbacPoliciesToggleResponse**](AbacPoliciesToggleResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Toggled policy |  -  |
| **403** | System and built-in policies cannot be modified. Also refused when the change removes, switches off or narrows an active deny policy and the caller could not allow what it denies: that needs a full administrator, or the permission &#x60;&lt;resourceType&gt;.&lt;action&gt;&#x60; for every action of the policy. |  -  |
| **404** | Policy not found |  -  |

<a id="patchAbacAttributesUpdate"></a>
# **patchAbacAttributesUpdate**
> PutAbacAttributesUpdateResponse patchAbacAttributesUpdate(orgId, id, putAbacAttributesUpdateRequest)

Partially update an attribute definition

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAbacApi;

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

    AdminAbacApi apiInstance = new AdminAbacApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String id = "id_example"; // String | 
    PutAbacAttributesUpdateRequest putAbacAttributesUpdateRequest = new PutAbacAttributesUpdateRequest(); // PutAbacAttributesUpdateRequest | 
    try {
      PutAbacAttributesUpdateResponse result = apiInstance.patchAbacAttributesUpdate(orgId, id, putAbacAttributesUpdateRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAbacApi#patchAbacAttributesUpdate");
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
| **id** | **String**|  | |
| **putAbacAttributesUpdateRequest** | [**PutAbacAttributesUpdateRequest**](PutAbacAttributesUpdateRequest.md)|  | |

### Return type

[**PutAbacAttributesUpdateResponse**](PutAbacAttributesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated |  -  |
| **403** | System and built-in attribute definitions cannot be modified. Also refused when an active policy reads the attribute and covers permissions that the caller does not hold: only a full administrator, or an administrator who holds those permissions, can create, delete or change the kind, data type or default value of such an attribute. |  -  |
| **404** | Attribute definition not found |  -  |

<a id="patchAbacPoliciesUpdate"></a>
# **patchAbacPoliciesUpdate**
> PutAbacPoliciesUpdateResponse patchAbacPoliciesUpdate(orgId, id, putAbacPoliciesUpdateRequest)

Partially update an ABAC policy

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAbacApi;

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

    AdminAbacApi apiInstance = new AdminAbacApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String id = "id_example"; // String | 
    PutAbacPoliciesUpdateRequest putAbacPoliciesUpdateRequest = new PutAbacPoliciesUpdateRequest(); // PutAbacPoliciesUpdateRequest | 
    try {
      PutAbacPoliciesUpdateResponse result = apiInstance.patchAbacPoliciesUpdate(orgId, id, putAbacPoliciesUpdateRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAbacApi#patchAbacPoliciesUpdate");
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
| **id** | **String**|  | |
| **putAbacPoliciesUpdateRequest** | [**PutAbacPoliciesUpdateRequest**](PutAbacPoliciesUpdateRequest.md)|  | |

### Return type

[**PutAbacPoliciesUpdateResponse**](PutAbacPoliciesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated |  -  |
| **400** | Invalid effect, priority, resourceType or action (empty, longer than 100 characters, or naming no action), or policy conditions |  -  |
| **403** | System and built-in policies cannot be modified. Also refused when the change removes, switches off or narrows an active deny policy and the caller could not allow what it denies: that needs a full administrator, or the permission &#x60;&lt;resourceType&gt;.&lt;action&gt;&#x60; for every action of the policy. |  -  |
| **404** | Policy not found |  -  |

<a id="putAbacAttributesUpdate"></a>
# **putAbacAttributesUpdate**
> PutAbacAttributesUpdateResponse putAbacAttributesUpdate(orgId, id, putAbacAttributesUpdateRequest)

Update an attribute definition

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAbacApi;

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

    AdminAbacApi apiInstance = new AdminAbacApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String id = "id_example"; // String | 
    PutAbacAttributesUpdateRequest putAbacAttributesUpdateRequest = new PutAbacAttributesUpdateRequest(); // PutAbacAttributesUpdateRequest | 
    try {
      PutAbacAttributesUpdateResponse result = apiInstance.putAbacAttributesUpdate(orgId, id, putAbacAttributesUpdateRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAbacApi#putAbacAttributesUpdate");
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
| **id** | **String**|  | |
| **putAbacAttributesUpdateRequest** | [**PutAbacAttributesUpdateRequest**](PutAbacAttributesUpdateRequest.md)|  | |

### Return type

[**PutAbacAttributesUpdateResponse**](PutAbacAttributesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated |  -  |
| **403** | System and built-in attribute definitions cannot be modified. Also refused when an active policy reads the attribute and covers permissions that the caller does not hold: only a full administrator, or an administrator who holds those permissions, can create, delete or change the kind, data type or default value of such an attribute. |  -  |
| **404** | Attribute definition not found |  -  |

<a id="putAbacPoliciesUpdate"></a>
# **putAbacPoliciesUpdate**
> PutAbacPoliciesUpdateResponse putAbacPoliciesUpdate(orgId, id, putAbacPoliciesUpdateRequest)

Update an ABAC policy

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminAbacApi;

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

    AdminAbacApi apiInstance = new AdminAbacApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String id = "id_example"; // String | 
    PutAbacPoliciesUpdateRequest putAbacPoliciesUpdateRequest = new PutAbacPoliciesUpdateRequest(); // PutAbacPoliciesUpdateRequest | 
    try {
      PutAbacPoliciesUpdateResponse result = apiInstance.putAbacPoliciesUpdate(orgId, id, putAbacPoliciesUpdateRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminAbacApi#putAbacPoliciesUpdate");
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
| **id** | **String**|  | |
| **putAbacPoliciesUpdateRequest** | [**PutAbacPoliciesUpdateRequest**](PutAbacPoliciesUpdateRequest.md)|  | |

### Return type

[**PutAbacPoliciesUpdateResponse**](PutAbacPoliciesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated |  -  |
| **400** | Invalid effect, priority, resourceType or action (empty, longer than 100 characters, or naming no action), or policy conditions |  -  |
| **403** | System and built-in policies cannot be modified. Also refused when the change removes, switches off or narrows an active deny policy and the caller could not allow what it denies: that needs a full administrator, or the permission &#x60;&lt;resourceType&gt;.&lt;action&gt;&#x60; for every action of the policy. |  -  |
| **404** | Policy not found |  -  |

