# AuthorizationApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**checkAbac**](AuthorizationApi.md#checkAbac) | **POST** /orgs/{orgId}/api/v1/abac/check | Evaluate an ABAC policy decision for the caller |
| [**checkAbacBulk**](AuthorizationApi.md#checkAbacBulk) | **POST** /orgs/{orgId}/api/v1/abac/check-bulk | Evaluate up to 100 ABAC checks for the caller in one call |
| [**checkAllPermissions**](AuthorizationApi.md#checkAllPermissions) | **POST** /api/v1/authz/check-all | Check whether the subject holds all of the permissions |
| [**checkAnyPermission**](AuthorizationApi.md#checkAnyPermission) | **POST** /api/v1/authz/check-any | Check whether the subject holds any of the permissions |
| [**checkPermission**](AuthorizationApi.md#checkPermission) | **POST** /api/v1/authz/check | Check one permission |
| [**checkPermissionsBulk**](AuthorizationApi.md#checkPermissionsBulk) | **POST** /api/v1/authz/check-bulk | Check up to 100 permissions in one call |
| [**checkRelation**](AuthorizationApi.md#checkRelation) | **POST** /api/v1/authz/zanzibar/check | Zanzibar relationship check |
| [**checkRelationScoped**](AuthorizationApi.md#checkRelationScoped) | **POST** /orgs/{orgId}/api/v1/zanzibar/check | Zanzibar relationship check |
| [**evaluate**](AuthorizationApi.md#evaluate) | **POST** /api/v1/authz/v1/evaluation | AuthZEN 1.0 access evaluation |
| [**evaluateBatch**](AuthorizationApi.md#evaluateBatch) | **POST** /api/v1/authz/v1/evaluations | AuthZEN 1.0 boxcarred access evaluations |
| [**expandRelation**](AuthorizationApi.md#expandRelation) | **POST** /api/v1/authz/zanzibar/expand | Zanzibar-style userset expansion: every subject that satisfies &#x60;object#relation&#x60;, as a tree that mirrors the namespace rewrites. |
| [**expandRelationScoped**](AuthorizationApi.md#expandRelationScoped) | **POST** /orgs/{orgId}/api/v1/zanzibar/expand | Zanzibar Expand: the userset tree of every subject satisfying &#x60;object#relation&#x60;. Always reveals other subjects, so it requires the oracle privilege (&#x60;authz.check&#x60; permission or &#x60;authz:check&#x60; scope). |
| [**getMyAttributes**](AuthorizationApi.md#getMyAttributes) | **GET** /orgs/{orgId}/api/v1/abac/my-attributes | The caller&#39;s ABAC subject attributes |
| [**getResourceAttributes**](AuthorizationApi.md#getResourceAttributes) | **GET** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes | Attributes stored for a resource |
| [**listAttributeDefinitions**](AuthorizationApi.md#listAttributeDefinitions) | **GET** /orgs/{orgId}/api/v1/abac/attribute-definitions | Attribute definitions available to the organization |
| [**listPermissions**](AuthorizationApi.md#listPermissions) | **GET** /api/v1/authz/permissions | List the caller&#39;s effective permissions |
| [**setResourceAttribute**](AuthorizationApi.md#setResourceAttribute) | **PUT** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes/{attributeSlug} | Set a resource attribute |
| [**setUserAttribute**](AuthorizationApi.md#setUserAttribute) | **PUT** /orgs/{orgId}/api/v1/abac/users/{userId}/attributes/{attributeSlug} | Set a user attribute |


<a id="checkAbac"></a>
# **checkAbac**
> CheckAbacResponse checkAbac(orgId)

Evaluate an ABAC policy decision for the caller

POST /api/v1/abac/check Body: {   resourceType: string,   action: string,   resourceId?: string,   environment?: { ip?: string, userAgent?: string, ... } }  Returns: { allowed: boolean, reason: string, matchedPolicies: [...] }

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AuthorizationApi;

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

    AuthorizationApi apiInstance = new AuthorizationApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      CheckAbacResponse result = apiInstance.checkAbac(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationApi#checkAbac");
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

[**CheckAbacResponse**](CheckAbacResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Decision |  -  |

<a id="checkAbacBulk"></a>
# **checkAbacBulk**
> CheckAbacBulkResponse checkAbacBulk(orgId)

Evaluate up to 100 ABAC checks for the caller in one call

POST /api/v1/abac/check-bulk Body: {   checks: [     { resourceType: string, action: string, resourceId?: string },     ...   ],   environment?: { ... } }

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AuthorizationApi;

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

    AuthorizationApi apiInstance = new AuthorizationApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      CheckAbacBulkResponse result = apiInstance.checkAbacBulk(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationApi#checkAbacBulk");
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

[**CheckAbacBulkResponse**](CheckAbacBulkResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Per-check decisions in request order |  -  |

<a id="checkAllPermissions"></a>
# **checkAllPermissions**
> CheckAnyPermissionResponse checkAllPermissions()

Check whether the subject holds all of the permissions

POST /api/v1/authz/check-all Body: {   \&quot;permissions\&quot;: [\&quot;document.edit\&quot;, \&quot;document.publish\&quot;],   \&quot;context\&quot;: {\&quot;document_id\&quot;: 123},   \&quot;subject\&quot;: {\&quot;type\&quot;: \&quot;user\&quot;, \&quot;id\&quot;: \&quot;&lt;uuid&gt;\&quot;}   // optional — see /check }

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AuthorizationApi;

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

    AuthorizationApi apiInstance = new AuthorizationApi(defaultClient);
    try {
      CheckAnyPermissionResponse result = apiInstance.checkAllPermissions();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationApi#checkAllPermissions");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CheckAnyPermissionResponse**](CheckAnyPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Decision |  -  |

<a id="checkAnyPermission"></a>
# **checkAnyPermission**
> CheckAnyPermissionResponse checkAnyPermission()

Check whether the subject holds any of the permissions

POST /api/v1/authz/check-any Body: {   \&quot;permissions\&quot;: [\&quot;document.edit\&quot;, \&quot;document.view\&quot;],   \&quot;context\&quot;: {\&quot;document_id\&quot;: 123},   \&quot;subject\&quot;: {\&quot;type\&quot;: \&quot;user\&quot;, \&quot;id\&quot;: \&quot;&lt;uuid&gt;\&quot;}   // optional — see /check }

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AuthorizationApi;

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

    AuthorizationApi apiInstance = new AuthorizationApi(defaultClient);
    try {
      CheckAnyPermissionResponse result = apiInstance.checkAnyPermission();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationApi#checkAnyPermission");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CheckAnyPermissionResponse**](CheckAnyPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Decision |  -  |

<a id="checkPermission"></a>
# **checkPermission**
> CheckPermissionResponse checkPermission()

Check one permission

POST /api/v1/authz/check Body: {   \&quot;permission\&quot;: \&quot;document.edit\&quot;,   \&quot;context\&quot;: {\&quot;document_id\&quot;: 123, \&quot;owner_id\&quot;: 456},   \&quot;subject\&quot;: {\&quot;type\&quot;: \&quot;user\&quot;, \&quot;id\&quot;: \&quot;&lt;uuid&gt;\&quot;}   // optional — defaults to the caller }  All four check endpoints accept the optional &#x60;subject&#x60;. Naming a subject other than the caller requires the &#x60;authz.check&#x60; permission or the &#x60;authz:check&#x60; scope (403 &#x60;insufficient_permissions&#x60; otherwise) — see ThirdPartySubjectGuard.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AuthorizationApi;

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

    AuthorizationApi apiInstance = new AuthorizationApi(defaultClient);
    try {
      CheckPermissionResponse result = apiInstance.checkPermission();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationApi#checkPermission");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CheckPermissionResponse**](CheckPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Decision |  -  |

<a id="checkPermissionsBulk"></a>
# **checkPermissionsBulk**
> CheckPermissionsBulkResponse checkPermissionsBulk()

Check up to 100 permissions in one call

POST /api/v1/authz/check-bulk Body: {   \&quot;permissions\&quot;: [\&quot;document.edit\&quot;, \&quot;document.delete\&quot;],   \&quot;context\&quot;: {\&quot;document_id\&quot;: 123},   \&quot;subject\&quot;: {\&quot;type\&quot;: \&quot;user\&quot;, \&quot;id\&quot;: \&quot;&lt;uuid&gt;\&quot;}   // optional — see /check }

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AuthorizationApi;

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

    AuthorizationApi apiInstance = new AuthorizationApi(defaultClient);
    try {
      CheckPermissionsBulkResponse result = apiInstance.checkPermissionsBulk();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationApi#checkPermissionsBulk");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CheckPermissionsBulkResponse**](CheckPermissionsBulkResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Per-permission decisions |  -  |

<a id="checkRelation"></a>
# **checkRelation**
> CheckRelationResponse checkRelation()

Zanzibar relationship check

POST /api/v1/authz/zanzibar/check Body: {   \&quot;object\&quot;: \&quot;document:123\&quot;,   \&quot;relation\&quot;: \&quot;viewer\&quot;,   \&quot;subject\&quot;: \&quot;user:456\&quot; }

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AuthorizationApi;

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

    AuthorizationApi apiInstance = new AuthorizationApi(defaultClient);
    try {
      CheckRelationResponse result = apiInstance.checkRelation();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationApi#checkRelation");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CheckRelationResponse**](CheckRelationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Decision |  -  |

<a id="checkRelationScoped"></a>
# **checkRelationScoped**
> CheckRelationScopedResponse checkRelationScoped(orgId)

Zanzibar relationship check

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AuthorizationApi;

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

    AuthorizationApi apiInstance = new AuthorizationApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      CheckRelationScopedResponse result = apiInstance.checkRelationScoped(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationApi#checkRelationScoped");
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

[**CheckRelationScopedResponse**](CheckRelationScopedResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Decision |  -  |

<a id="evaluate"></a>
# **evaluate**
> AuthZenDecision evaluate()

AuthZEN 1.0 access evaluation

POST /api/v1/authz/v1/evaluation Body: {   \&quot;subject\&quot;:  {\&quot;type\&quot;: \&quot;user\&quot;|\&quot;agent\&quot;, \&quot;id\&quot;: \&quot;...\&quot;},   \&quot;action\&quot;:   {\&quot;name\&quot;: \&quot;...\&quot;},   \&quot;resource\&quot;: {\&quot;type\&quot;: \&quot;...\&quot;, \&quot;id\&quot;: \&quot;...\&quot;},   \&quot;context\&quot;:  {...} } Response: {\&quot;decision\&quot;: true|false, \&quot;context\&quot;: {...}?}

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AuthorizationApi;

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

    AuthorizationApi apiInstance = new AuthorizationApi(defaultClient);
    try {
      AuthZenDecision result = apiInstance.evaluate();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationApi#evaluate");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuthZenDecision**](AuthZenDecision.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | AuthZEN decision |  -  |

<a id="evaluateBatch"></a>
# **evaluateBatch**
> EvaluateBatchResponse evaluateBatch()

AuthZEN 1.0 boxcarred access evaluations

POST /api/v1/authz/v1/evaluations Body: {   \&quot;subject\&quot;:  {...}?,   // optional defaults, overridden per item   \&quot;action\&quot;:   {...}?,   \&quot;resource\&quot;: {...}?,   \&quot;context\&quot;:  {...}?,   \&quot;evaluations\&quot;: [{...}, ...] } Response: {\&quot;evaluations\&quot;: [{\&quot;decision\&quot;: ...}, ...]} preserving order.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AuthorizationApi;

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

    AuthorizationApi apiInstance = new AuthorizationApi(defaultClient);
    try {
      EvaluateBatchResponse result = apiInstance.evaluateBatch();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationApi#evaluateBatch");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EvaluateBatchResponse**](EvaluateBatchResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | One decision per evaluation, in request order |  -  |

<a id="expandRelation"></a>
# **expandRelation**
> ExpandRelationResponse expandRelation(expandRelationRequest)

Zanzibar-style userset expansion: every subject that satisfies &#x60;object#relation&#x60;, as a tree that mirrors the namespace rewrites.

POST /api/v1/authz/zanzibar/expand Body: {   \&quot;object\&quot;: \&quot;document:123\&quot;,   \&quot;relation\&quot;: \&quot;viewer\&quot; } Response: {   \&quot;tree\&quot;: {     \&quot;type\&quot;: \&quot;union\&quot; | \&quot;intersection\&quot; | \&quot;leaf\&quot;,     \&quot;object\&quot;: \&quot;document:123\&quot;,     \&quot;relation\&quot;: \&quot;viewer\&quot;,     \&quot;children\&quot;: [ ...nested nodes... ],     \&quot;subjects\&quot;: [ \&quot;user:1\&quot;, \&quot;group:2#member\&quot; ]   } }  Expansion always reveals other subjects, so it requires the oracle privilege (&#x60;authz.check&#x60; permission or &#x60;authz:check&#x60; scope) — there is no \&quot;self\&quot; variant.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AuthorizationApi;

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

    AuthorizationApi apiInstance = new AuthorizationApi(defaultClient);
    ExpandRelationRequest expandRelationRequest = new ExpandRelationRequest(); // ExpandRelationRequest | 
    try {
      ExpandRelationResponse result = apiInstance.expandRelation(expandRelationRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationApi#expandRelation");
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
| **expandRelationRequest** | [**ExpandRelationRequest**](ExpandRelationRequest.md)|  | |

### Return type

[**ExpandRelationResponse**](ExpandRelationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The userset tree for object#relation. |  -  |
| **400** | Missing object/relation or malformed object identifier. |  -  |
| **403** | insufficient_permissions — expand requires the authz.check permission or the authz:check scope. |  -  |

<a id="expandRelationScoped"></a>
# **expandRelationScoped**
> ExpandRelationResponse expandRelationScoped(orgId, expandRelationRequest)

Zanzibar Expand: the userset tree of every subject satisfying &#x60;object#relation&#x60;. Always reveals other subjects, so it requires the oracle privilege (&#x60;authz.check&#x60; permission or &#x60;authz:check&#x60; scope).

Body: {\&quot;object\&quot;: \&quot;document:123\&quot;, \&quot;relation\&quot;: \&quot;viewer\&quot;} Response: {\&quot;tree\&quot;: {\&quot;type\&quot;, \&quot;object\&quot;, \&quot;relation\&quot;, \&quot;children\&quot;, \&quot;subjects\&quot;}}

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AuthorizationApi;

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

    AuthorizationApi apiInstance = new AuthorizationApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    ExpandRelationRequest expandRelationRequest = new ExpandRelationRequest(); // ExpandRelationRequest | 
    try {
      ExpandRelationResponse result = apiInstance.expandRelationScoped(orgId, expandRelationRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationApi#expandRelationScoped");
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
| **expandRelationRequest** | [**ExpandRelationRequest**](ExpandRelationRequest.md)|  | |

### Return type

[**ExpandRelationResponse**](ExpandRelationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The userset tree for object#relation. |  -  |
| **400** | Missing object/relation or malformed object identifier. |  -  |
| **403** | insufficient_permissions — expand requires the authz.check permission or the authz:check scope; or the token is for another organization. |  -  |

<a id="getMyAttributes"></a>
# **getMyAttributes**
> GetMyAttributesResponse getMyAttributes(orgId)

The caller&#39;s ABAC subject attributes

GET /api/v1/abac/my-attributes

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AuthorizationApi;

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

    AuthorizationApi apiInstance = new AuthorizationApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      GetMyAttributesResponse result = apiInstance.getMyAttributes(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationApi#getMyAttributes");
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

[**GetMyAttributesResponse**](GetMyAttributesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Built-in identity attributes plus trait_&lt;key&gt; entries and tenant-defined custom attributes |  -  |

<a id="getResourceAttributes"></a>
# **getResourceAttributes**
> GetResourceAttributesResponse getResourceAttributes(orgId, resourceType, resourceId)

Attributes stored for a resource

GET /api/v1/abac/resources/{resourceType}/{resourceId}/attributes

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AuthorizationApi;

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

    AuthorizationApi apiInstance = new AuthorizationApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String resourceType = "resourceType_example"; // String | 
    String resourceId = "resourceId_example"; // String | 
    try {
      GetResourceAttributesResponse result = apiInstance.getResourceAttributes(orgId, resourceType, resourceId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationApi#getResourceAttributes");
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
| **resourceType** | **String**|  | |
| **resourceId** | **String**|  | |

### Return type

[**GetResourceAttributesResponse**](GetResourceAttributesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Resource attributes keyed by attribute slug |  -  |

<a id="listAttributeDefinitions"></a>
# **listAttributeDefinitions**
> ListAttributeDefinitionsResponse listAttributeDefinitions(orgId, type)

Attribute definitions available to the organization

GET /api/v1/abac/attribute-definitions Query params: type (user|resource|environment)

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AuthorizationApi;

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

    AuthorizationApi apiInstance = new AuthorizationApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String type = "user"; // String | 
    try {
      ListAttributeDefinitionsResponse result = apiInstance.listAttributeDefinitions(orgId, type);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationApi#listAttributeDefinitions");
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
| **type** | **String**|  | [optional] [enum: user, resource, environment] |

### Return type

[**ListAttributeDefinitionsResponse**](ListAttributeDefinitionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Definitions (tenant-defined and global) |  -  |

<a id="listPermissions"></a>
# **listPermissions**
> ListPermissionsResponse listPermissions()

List the caller&#39;s effective permissions

GET /api/v1/authz/permissions

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AuthorizationApi;

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

    AuthorizationApi apiInstance = new AuthorizationApi(defaultClient);
    try {
      ListPermissionsResponse result = apiInstance.listPermissions();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationApi#listPermissions");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListPermissionsResponse**](ListPermissionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Permissions from the user&#39;s roles (including group-inherited roles). &#x60;permissions&#x60; and &#x60;data&#x60; are identical. |  -  |

<a id="setResourceAttribute"></a>
# **setResourceAttribute**
> SetResourceAttributeResponse setResourceAttribute(orgId, resourceType, resourceId, attributeSlug)

Set a resource attribute

PUT /api/v1/abac/resources/{resourceType}/{resourceId}/attributes/{attributeSlug} Body: { value: any }

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AuthorizationApi;

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

    AuthorizationApi apiInstance = new AuthorizationApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String resourceType = "resourceType_example"; // String | 
    String resourceId = "resourceId_example"; // String | 
    String attributeSlug = "attributeSlug_example"; // String | 
    try {
      SetResourceAttributeResponse result = apiInstance.setResourceAttribute(orgId, resourceType, resourceId, attributeSlug);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationApi#setResourceAttribute");
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
| **resourceType** | **String**|  | |
| **resourceId** | **String**|  | |
| **attributeSlug** | **String**|  | |

### Return type

[**SetResourceAttributeResponse**](SetResourceAttributeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Stored attribute |  -  |

<a id="setUserAttribute"></a>
# **setUserAttribute**
> SetUserAttributeResponse setUserAttribute(orgId, userId, attributeSlug)

Set a user attribute

PUT /api/v1/abac/users/{userId}/attributes/{attributeSlug} Body: { value: any }

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AuthorizationApi;

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

    AuthorizationApi apiInstance = new AuthorizationApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    String attributeSlug = "attributeSlug_example"; // String | 
    try {
      SetUserAttributeResponse result = apiInstance.setUserAttribute(orgId, userId, attributeSlug);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthorizationApi#setUserAttribute");
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
| **attributeSlug** | **String**|  | |

### Return type

[**SetUserAttributeResponse**](SetUserAttributeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Stored attribute |  -  |

