# AdminOAuthClientsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**adminClientsCimdCheck**](AdminOAuthClientsApi.md#adminClientsCimdCheck) | **POST** /orgs/{orgId}/api/v1/admin/clients/cimd/check | Check a Client ID Metadata Document |
| [**adminClientsGetBranding**](AdminOAuthClientsApi.md#adminClientsGetBranding) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId}/branding | Get an OAuth client&#39;s login and consent page branding |
| [**createClient**](AdminOAuthClientsApi.md#createClient) | **POST** /orgs/{orgId}/api/v1/admin/clients | Create an OAuth client |
| [**deleteClient**](AdminOAuthClientsApi.md#deleteClient) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Delete an OAuth client |
| [**disableClient**](AdminOAuthClientsApi.md#disableClient) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/disable | Disable an OAuth client |
| [**enableClient**](AdminOAuthClientsApi.md#enableClient) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/enable | Enable an OAuth client |
| [**getClient**](AdminOAuthClientsApi.md#getClient) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Get an OAuth client |
| [**listClientScopes**](AdminOAuthClientsApi.md#listClientScopes) | **GET** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | List the scopes granted to an OAuth client |
| [**listClients**](AdminOAuthClientsApi.md#listClients) | **GET** /orgs/{orgId}/api/v1/admin/clients | List OAuth clients |
| [**patchAdminClientsUpdateBranding**](AdminOAuthClientsApi.md#patchAdminClientsUpdateBranding) | **PATCH** /orgs/{orgId}/api/v1/admin/clients/{clientId}/branding | Change keys of an OAuth client&#39;s login and/or consent page branding |
| [**patchClient**](AdminOAuthClientsApi.md#patchClient) | **PATCH** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Update an OAuth client |
| [**putAdminClientsUpdateBranding**](AdminOAuthClientsApi.md#putAdminClientsUpdateBranding) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId}/branding | Replace an OAuth client&#39;s login and/or consent page branding |
| [**rotateClientSecret**](AdminOAuthClientsApi.md#rotateClientSecret) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/rotate-secret | Rotate an OAuth client secret |
| [**setClientScopes**](AdminOAuthClientsApi.md#setClientScopes) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId}/scopes | Replace the scopes granted to an OAuth client |
| [**updateClient**](AdminOAuthClientsApi.md#updateClient) | **PUT** /orgs/{orgId}/api/v1/admin/clients/{clientId} | Update an OAuth client (same as PATCH: only the fields that are sent change) |


<a id="adminClientsCimdCheck"></a>
# **adminClientsCimdCheck**
> AdminClientsCimdCheckResponse adminClientsCimdCheck(orgId, adminClientsCimdCheckRequest)

Check a Client ID Metadata Document

Fetches and validates the metadata document at &#x60;client_id&#x60; exactly as the authorization server does (SSRF guard, domain allow-list, size and content-type limits, schema rules) and returns the effective client: redirect URIs, grant types and scopes after the organization policy is applied, plus what the document asked for that was dropped. Works even while CIMD is switched off for the organization (&#x60;enabled: false&#x60;), so a document can be validated before the switch is flipped. Nothing is registered or stored. &#x60;refresh: true&#x60; discards the cached copy first.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOAuthClientsApi;

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

    AdminOAuthClientsApi apiInstance = new AdminOAuthClientsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    AdminClientsCimdCheckRequest adminClientsCimdCheckRequest = new AdminClientsCimdCheckRequest(); // AdminClientsCimdCheckRequest | 
    try {
      AdminClientsCimdCheckResponse result = apiInstance.adminClientsCimdCheck(orgId, adminClientsCimdCheckRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOAuthClientsApi#adminClientsCimdCheck");
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
| **adminClientsCimdCheckRequest** | [**AdminClientsCimdCheckRequest**](AdminClientsCimdCheckRequest.md)|  | |

### Return type

[**AdminClientsCimdCheckResponse**](AdminClientsCimdCheckResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Check result (ok&#x3D;false is still 200: the document was reachable for inspection but rejected) |  -  |
| **422** | validation_error: client_id missing |  -  |

<a id="adminClientsGetBranding"></a>
# **adminClientsGetBranding**
> AdminClientsGetBrandingResponse adminClientsGetBranding(orgId, clientId)

Get an OAuth client&#39;s login and consent page branding

Login settings use the same keys as the organization branding settings (GET /settings/branding); a missing or null value means \&quot;same as the organization\&quot;.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOAuthClientsApi;

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

    AdminOAuthClientsApi apiInstance = new AdminOAuthClientsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String clientId = "clientId_example"; // String | 
    try {
      AdminClientsGetBrandingResponse result = apiInstance.adminClientsGetBranding(orgId, clientId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOAuthClientsApi#adminClientsGetBranding");
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

[**AdminClientsGetBrandingResponse**](AdminClientsGetBrandingResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Branding of the application |  -  |
| **404** | OAuth client not found |  -  |

<a id="createClient"></a>
# **createClient**
> CreateClientResponse createClient(orgId)

Create an OAuth client

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOAuthClientsApi;

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

    AdminOAuthClientsApi apiInstance = new AdminOAuthClientsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      CreateClientResponse result = apiInstance.createClient(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOAuthClientsApi#createClient");
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

[**CreateClientResponse**](CreateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created. For a confidential client the plaintext secret is included once and never shown again; a public client (isConfidential false) has no secret and the field is absent |  -  |

<a id="deleteClient"></a>
# **deleteClient**
> MessageResponse deleteClient(orgId, clientId)

Delete an OAuth client

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOAuthClientsApi;

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

    AdminOAuthClientsApi apiInstance = new AdminOAuthClientsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String clientId = "clientId_example"; // String | 
    try {
      MessageResponse result = apiInstance.deleteClient(orgId, clientId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOAuthClientsApi#deleteClient");
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
| **404** | OAuth client not found |  -  |

<a id="disableClient"></a>
# **disableClient**
> UpdateClientResponse disableClient(orgId, clientId)

Disable an OAuth client

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOAuthClientsApi;

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

    AdminOAuthClientsApi apiInstance = new AdminOAuthClientsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String clientId = "clientId_example"; // String | 
    try {
      UpdateClientResponse result = apiInstance.disableClient(orgId, clientId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOAuthClientsApi#disableClient");
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

[**UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Client disabled (summary fields only) |  -  |
| **404** | Client not found |  -  |

<a id="enableClient"></a>
# **enableClient**
> UpdateClientResponse enableClient(orgId, clientId)

Enable an OAuth client

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOAuthClientsApi;

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

    AdminOAuthClientsApi apiInstance = new AdminOAuthClientsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String clientId = "clientId_example"; // String | 
    try {
      UpdateClientResponse result = apiInstance.enableClient(orgId, clientId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOAuthClientsApi#enableClient");
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

[**UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Client enabled (summary fields only) |  -  |
| **404** | Client not found |  -  |

<a id="getClient"></a>
# **getClient**
> GetClientResponse getClient(orgId, clientId)

Get an OAuth client

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOAuthClientsApi;

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

    AdminOAuthClientsApi apiInstance = new AdminOAuthClientsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String clientId = "clientId_example"; // String | 
    try {
      GetClientResponse result = apiInstance.getClient(orgId, clientId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOAuthClientsApi#getClient");
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

[**GetClientResponse**](GetClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OAuth client (detailed) |  -  |
| **404** | OAuth client not found |  -  |

<a id="listClientScopes"></a>
# **listClientScopes**
> ListClientScopesResponse listClientScopes(orgId, clientId)

List the scopes granted to an OAuth client

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOAuthClientsApi;

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

    AdminOAuthClientsApi apiInstance = new AdminOAuthClientsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String clientId = "clientId_example"; // String | 
    try {
      ListClientScopesResponse result = apiInstance.listClientScopes(orgId, clientId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOAuthClientsApi#listClientScopes");
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

[**ListClientScopesResponse**](ListClientScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Scope names |  -  |
| **404** | OAuth client not found |  -  |

<a id="listClients"></a>
# **listClients**
> ListClientsResponse listClients(orgId)

List OAuth clients

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOAuthClientsApi;

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

    AdminOAuthClientsApi apiInstance = new AdminOAuthClientsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      ListClientsResponse result = apiInstance.listClients(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOAuthClientsApi#listClients");
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

[**ListClientsResponse**](ListClientsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OAuth clients (summary fields only) |  -  |

<a id="patchAdminClientsUpdateBranding"></a>
# **patchAdminClientsUpdateBranding**
> PatchAdminClientsUpdateBrandingResponse patchAdminClientsUpdateBranding(orgId, clientId, adminClientsGetBrandingResponseData)

Change keys of an OAuth client&#39;s login and/or consent page branding

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOAuthClientsApi;

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

    AdminOAuthClientsApi apiInstance = new AdminOAuthClientsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String clientId = "clientId_example"; // String | 
    AdminClientsGetBrandingResponseData adminClientsGetBrandingResponseData = new AdminClientsGetBrandingResponseData(); // AdminClientsGetBrandingResponseData | 
    try {
      PatchAdminClientsUpdateBrandingResponse result = apiInstance.patchAdminClientsUpdateBranding(orgId, clientId, adminClientsGetBrandingResponseData);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOAuthClientsApi#patchAdminClientsUpdateBranding");
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
| **adminClientsGetBrandingResponseData** | [**AdminClientsGetBrandingResponseData**](AdminClientsGetBrandingResponseData.md)|  | [optional] |

### Return type

[**PatchAdminClientsUpdateBrandingResponse**](PatchAdminClientsUpdateBrandingResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated branding |  -  |
| **404** | OAuth client not found |  -  |

<a id="patchClient"></a>
# **patchClient**
> UpdateClientResponse patchClient(orgId, clientId)

Update an OAuth client

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOAuthClientsApi;

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

    AdminOAuthClientsApi apiInstance = new AdminOAuthClientsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String clientId = "clientId_example"; // String | 
    try {
      UpdateClientResponse result = apiInstance.patchClient(orgId, clientId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOAuthClientsApi#patchClient");
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

[**UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated OAuth client (detailed) |  -  |
| **404** | OAuth client not found |  -  |

<a id="putAdminClientsUpdateBranding"></a>
# **putAdminClientsUpdateBranding**
> PutAdminClientsUpdateBrandingResponse putAdminClientsUpdateBranding(orgId, clientId, putAdminClientsUpdateBrandingRequest)

Replace an OAuth client&#39;s login and/or consent page branding

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOAuthClientsApi;

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

    AdminOAuthClientsApi apiInstance = new AdminOAuthClientsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String clientId = "clientId_example"; // String | 
    PutAdminClientsUpdateBrandingRequest putAdminClientsUpdateBrandingRequest = new PutAdminClientsUpdateBrandingRequest(); // PutAdminClientsUpdateBrandingRequest | 
    try {
      PutAdminClientsUpdateBrandingResponse result = apiInstance.putAdminClientsUpdateBranding(orgId, clientId, putAdminClientsUpdateBrandingRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOAuthClientsApi#putAdminClientsUpdateBranding");
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
| **putAdminClientsUpdateBrandingRequest** | [**PutAdminClientsUpdateBrandingRequest**](PutAdminClientsUpdateBrandingRequest.md)|  | [optional] |

### Return type

[**PutAdminClientsUpdateBrandingResponse**](PutAdminClientsUpdateBrandingResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated branding |  -  |
| **404** | OAuth client not found |  -  |

<a id="rotateClientSecret"></a>
# **rotateClientSecret**
> RotateClientSecretResponse rotateClientSecret(orgId, clientId)

Rotate an OAuth client secret

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOAuthClientsApi;

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

    AdminOAuthClientsApi apiInstance = new AdminOAuthClientsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String clientId = "clientId_example"; // String | 
    try {
      RotateClientSecretResponse result = apiInstance.rotateClientSecret(orgId, clientId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOAuthClientsApi#rotateClientSecret");
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

[**RotateClientSecretResponse**](RotateClientSecretResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Rotated — the new plaintext secret is included once and never shown again |  -  |
| **404** | OAuth client not found |  -  |

<a id="setClientScopes"></a>
# **setClientScopes**
> SetClientScopesResponse setClientScopes(orgId, clientId)

Replace the scopes granted to an OAuth client

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOAuthClientsApi;

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

    AdminOAuthClientsApi apiInstance = new AdminOAuthClientsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String clientId = "clientId_example"; // String | 
    try {
      SetClientScopesResponse result = apiInstance.setClientScopes(orgId, clientId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOAuthClientsApi#setClientScopes");
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

[**SetClientScopesResponse**](SetClientScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated scope names |  -  |
| **404** | OAuth client not found |  -  |

<a id="updateClient"></a>
# **updateClient**
> UpdateClientResponse updateClient(orgId, clientId)

Update an OAuth client (same as PATCH: only the fields that are sent change)

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOAuthClientsApi;

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

    AdminOAuthClientsApi apiInstance = new AdminOAuthClientsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String clientId = "clientId_example"; // String | 
    try {
      UpdateClientResponse result = apiInstance.updateClient(orgId, clientId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOAuthClientsApi#updateClient");
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

[**UpdateClientResponse**](UpdateClientResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated OAuth client (detailed) |  -  |
| **404** | OAuth client not found |  -  |

