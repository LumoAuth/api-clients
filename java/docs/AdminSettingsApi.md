# AdminSettingsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**adminAnalyticsDashboard**](AdminSettingsApi.md#adminAnalyticsDashboard) | **GET** /orgs/{orgId}/api/v1/admin/analytics/dashboard | Get dashboard analytics |
| [**adminAnalyticsLogins**](AdminSettingsApi.md#adminAnalyticsLogins) | **GET** /orgs/{orgId}/api/v1/admin/analytics/logins | Get login analytics |
| [**adminAnalyticsUsers**](AdminSettingsApi.md#adminAnalyticsUsers) | **GET** /orgs/{orgId}/api/v1/admin/analytics/users | Get user growth analytics |
| [**adminOrganizationGet**](AdminSettingsApi.md#adminOrganizationGet) | **GET** /orgs/{orgId}/api/v1/admin/organization | Get organization (tenant) profile |
| [**adminSettingsAll**](AdminSettingsApi.md#adminSettingsAll) | **GET** /orgs/{orgId}/api/v1/admin/settings | Get all settings (combined) |
| [**adminSettingsAuthGet**](AdminSettingsApi.md#adminSettingsAuthGet) | **GET** /orgs/{orgId}/api/v1/admin/settings/auth | Get authentication settings |
| [**adminSettingsAuthenticationGet**](AdminSettingsApi.md#adminSettingsAuthenticationGet) | **GET** /orgs/{orgId}/api/v1/admin/settings/authentication | Get authentication settings (alias for settings/auth) |
| [**adminSettingsBrandingGet**](AdminSettingsApi.md#adminSettingsBrandingGet) | **GET** /orgs/{orgId}/api/v1/admin/settings/branding | Get branding/login page settings |
| [**adminSettingsEmailGet**](AdminSettingsApi.md#adminSettingsEmailGet) | **GET** /orgs/{orgId}/api/v1/admin/settings/email | Get email settings |
| [**adminSettingsGeneralGet**](AdminSettingsApi.md#adminSettingsGeneralGet) | **GET** /orgs/{orgId}/api/v1/admin/settings/general | Get general settings |
| [**adminSettingsScimGet**](AdminSettingsApi.md#adminSettingsScimGet) | **GET** /orgs/{orgId}/api/v1/admin/settings/scim | Get SCIM settings |
| [**adminSettingsSecurityGet**](AdminSettingsApi.md#adminSettingsSecurityGet) | **GET** /orgs/{orgId}/api/v1/admin/settings/security | Get security settings |
| [**adminTenantGet**](AdminSettingsApi.md#adminTenantGet) | **GET** /orgs/{orgId}/api/v1/admin/tenant | Get organization (tenant) profile |
| [**patchAdminOrganizationUpdate**](AdminSettingsApi.md#patchAdminOrganizationUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organization | Update organization (tenant) name and settings |
| [**patchAdminSettingsAuthUpdate**](AdminSettingsApi.md#patchAdminSettingsAuthUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings |
| [**patchAdminSettingsAuthenticationUpdate**](AdminSettingsApi.md#patchAdminSettingsAuthenticationUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth) |
| [**patchAdminSettingsBrandingUpdate**](AdminSettingsApi.md#patchAdminSettingsBrandingUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings |
| [**patchAdminSettingsEmailUpdate**](AdminSettingsApi.md#patchAdminSettingsEmailUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings |
| [**patchAdminSettingsGeneralUpdate**](AdminSettingsApi.md#patchAdminSettingsGeneralUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings |
| [**patchAdminSettingsScimUpdate**](AdminSettingsApi.md#patchAdminSettingsScimUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings |
| [**patchAdminSettingsSecurityUpdate**](AdminSettingsApi.md#patchAdminSettingsSecurityUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings |
| [**patchAdminTenantUpdate**](AdminSettingsApi.md#patchAdminTenantUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/tenant | Update organization (tenant) name and settings |
| [**putAdminOrganizationUpdate**](AdminSettingsApi.md#putAdminOrganizationUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/organization | Update organization (tenant) name and settings |
| [**putAdminSettingsAuthUpdate**](AdminSettingsApi.md#putAdminSettingsAuthUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/auth | Update authentication settings |
| [**putAdminSettingsAuthenticationUpdate**](AdminSettingsApi.md#putAdminSettingsAuthenticationUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/authentication | Update authentication settings (alias for settings/auth) |
| [**putAdminSettingsBrandingUpdate**](AdminSettingsApi.md#putAdminSettingsBrandingUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/branding | Update branding/login page settings |
| [**putAdminSettingsEmailUpdate**](AdminSettingsApi.md#putAdminSettingsEmailUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/email | Update email settings |
| [**putAdminSettingsGeneralUpdate**](AdminSettingsApi.md#putAdminSettingsGeneralUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/general | Update general settings |
| [**putAdminSettingsScimUpdate**](AdminSettingsApi.md#putAdminSettingsScimUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/scim | Update SCIM settings |
| [**putAdminSettingsSecurityUpdate**](AdminSettingsApi.md#putAdminSettingsSecurityUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/settings/security | Update security settings |
| [**putAdminTenantUpdate**](AdminSettingsApi.md#putAdminTenantUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/tenant | Update organization (tenant) name and settings |


<a id="adminAnalyticsDashboard"></a>
# **adminAnalyticsDashboard**
> AdminAnalyticsDashboardResponse adminAnalyticsDashboard(orgId)

Get dashboard analytics

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminAnalyticsDashboardResponse result = apiInstance.adminAnalyticsDashboard(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#adminAnalyticsDashboard");
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

[**AdminAnalyticsDashboardResponse**](AdminAnalyticsDashboardResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Dashboard counters |  -  |

<a id="adminAnalyticsLogins"></a>
# **adminAnalyticsLogins**
> AdminAnalyticsLoginsResponse adminAnalyticsLogins(orgId, days)

Get login analytics

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    Integer days = 30; // Integer | Window in days (1-90, default 30).
    try {
      AdminAnalyticsLoginsResponse result = apiInstance.adminAnalyticsLogins(orgId, days);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#adminAnalyticsLogins");
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
| **days** | **Integer**| Window in days (1-90, default 30). | [optional] [default to 30] |

### Return type

[**AdminAnalyticsLoginsResponse**](AdminAnalyticsLoginsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Daily login attempts |  -  |

<a id="adminAnalyticsUsers"></a>
# **adminAnalyticsUsers**
> AdminAnalyticsUsersResponse adminAnalyticsUsers(orgId, days)

Get user growth analytics

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    Integer days = 30; // Integer | Window in days (1-90, default 30).
    try {
      AdminAnalyticsUsersResponse result = apiInstance.adminAnalyticsUsers(orgId, days);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#adminAnalyticsUsers");
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
| **days** | **Integer**| Window in days (1-90, default 30). | [optional] [default to 30] |

### Return type

[**AdminAnalyticsUsersResponse**](AdminAnalyticsUsersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Daily registrations and user breakdowns |  -  |

<a id="adminOrganizationGet"></a>
# **adminOrganizationGet**
> AdminTenantGetResponse adminOrganizationGet(orgId)

Get organization (tenant) profile

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminTenantGetResponse result = apiInstance.adminOrganizationGet(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#adminOrganizationGet");
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

[**AdminTenantGetResponse**](AdminTenantGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Organization profile |  -  |

<a id="adminSettingsAll"></a>
# **adminSettingsAll**
> AdminSettingsAllResponse adminSettingsAll(orgId)

Get all settings (combined)

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminSettingsAllResponse result = apiInstance.adminSettingsAll(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#adminSettingsAll");
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

[**AdminSettingsAllResponse**](AdminSettingsAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Combined settings |  -  |

<a id="adminSettingsAuthGet"></a>
# **adminSettingsAuthGet**
> AdminSettingsAuthenticationGetResponse adminSettingsAuthGet(orgId)

Get authentication settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminSettingsAuthenticationGetResponse result = apiInstance.adminSettingsAuthGet(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#adminSettingsAuthGet");
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

[**AdminSettingsAuthenticationGetResponse**](AdminSettingsAuthenticationGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Authentication settings |  -  |

<a id="adminSettingsAuthenticationGet"></a>
# **adminSettingsAuthenticationGet**
> AdminSettingsAuthenticationGetResponse adminSettingsAuthenticationGet(orgId)

Get authentication settings (alias for settings/auth)

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminSettingsAuthenticationGetResponse result = apiInstance.adminSettingsAuthenticationGet(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#adminSettingsAuthenticationGet");
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

[**AdminSettingsAuthenticationGetResponse**](AdminSettingsAuthenticationGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Authentication settings |  -  |

<a id="adminSettingsBrandingGet"></a>
# **adminSettingsBrandingGet**
> AdminSettingsBrandingGetResponse adminSettingsBrandingGet(orgId)

Get branding/login page settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminSettingsBrandingGetResponse result = apiInstance.adminSettingsBrandingGet(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#adminSettingsBrandingGet");
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

[**AdminSettingsBrandingGetResponse**](AdminSettingsBrandingGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Branding settings |  -  |

<a id="adminSettingsEmailGet"></a>
# **adminSettingsEmailGet**
> AdminSettingsEmailGetResponse adminSettingsEmailGet(orgId)

Get email settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminSettingsEmailGetResponse result = apiInstance.adminSettingsEmailGet(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#adminSettingsEmailGet");
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

[**AdminSettingsEmailGetResponse**](AdminSettingsEmailGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Email settings |  -  |

<a id="adminSettingsGeneralGet"></a>
# **adminSettingsGeneralGet**
> AdminSettingsGeneralGetResponse adminSettingsGeneralGet(orgId)

Get general settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminSettingsGeneralGetResponse result = apiInstance.adminSettingsGeneralGet(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#adminSettingsGeneralGet");
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

[**AdminSettingsGeneralGetResponse**](AdminSettingsGeneralGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | General settings |  -  |

<a id="adminSettingsScimGet"></a>
# **adminSettingsScimGet**
> AdminSettingsScimGetResponse adminSettingsScimGet(orgId)

Get SCIM settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminSettingsScimGetResponse result = apiInstance.adminSettingsScimGet(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#adminSettingsScimGet");
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

[**AdminSettingsScimGetResponse**](AdminSettingsScimGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SCIM settings |  -  |

<a id="adminSettingsSecurityGet"></a>
# **adminSettingsSecurityGet**
> AdminSettingsSecurityGetResponse adminSettingsSecurityGet(orgId)

Get security settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminSettingsSecurityGetResponse result = apiInstance.adminSettingsSecurityGet(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#adminSettingsSecurityGet");
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

[**AdminSettingsSecurityGetResponse**](AdminSettingsSecurityGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Security settings |  -  |

<a id="adminTenantGet"></a>
# **adminTenantGet**
> AdminTenantGetResponse adminTenantGet(orgId)

Get organization (tenant) profile

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminTenantGetResponse result = apiInstance.adminTenantGet(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#adminTenantGet");
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

[**AdminTenantGetResponse**](AdminTenantGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Organization profile |  -  |

<a id="patchAdminOrganizationUpdate"></a>
# **patchAdminOrganizationUpdate**
> PutAdminTenantUpdateResponse patchAdminOrganizationUpdate(orgId)

Update organization (tenant) name and settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      PutAdminTenantUpdateResponse result = apiInstance.patchAdminOrganizationUpdate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#patchAdminOrganizationUpdate");
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

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated organization profile |  -  |

<a id="patchAdminSettingsAuthUpdate"></a>
# **patchAdminSettingsAuthUpdate**
> PutAdminSettingsAuthenticationUpdateResponse patchAdminSettingsAuthUpdate(orgId)

Update authentication settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      PutAdminSettingsAuthenticationUpdateResponse result = apiInstance.patchAdminSettingsAuthUpdate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#patchAdminSettingsAuthUpdate");
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

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated authentication settings |  -  |

<a id="patchAdminSettingsAuthenticationUpdate"></a>
# **patchAdminSettingsAuthenticationUpdate**
> PutAdminSettingsAuthenticationUpdateResponse patchAdminSettingsAuthenticationUpdate(orgId)

Update authentication settings (alias for settings/auth)

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      PutAdminSettingsAuthenticationUpdateResponse result = apiInstance.patchAdminSettingsAuthenticationUpdate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#patchAdminSettingsAuthenticationUpdate");
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

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated authentication settings |  -  |

<a id="patchAdminSettingsBrandingUpdate"></a>
# **patchAdminSettingsBrandingUpdate**
> PutAdminSettingsBrandingUpdateResponse patchAdminSettingsBrandingUpdate(orgId)

Update branding/login page settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      PutAdminSettingsBrandingUpdateResponse result = apiInstance.patchAdminSettingsBrandingUpdate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#patchAdminSettingsBrandingUpdate");
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

[**PutAdminSettingsBrandingUpdateResponse**](PutAdminSettingsBrandingUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated branding settings |  -  |

<a id="patchAdminSettingsEmailUpdate"></a>
# **patchAdminSettingsEmailUpdate**
> PutAdminSettingsEmailUpdateResponse patchAdminSettingsEmailUpdate(orgId)

Update email settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      PutAdminSettingsEmailUpdateResponse result = apiInstance.patchAdminSettingsEmailUpdate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#patchAdminSettingsEmailUpdate");
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

[**PutAdminSettingsEmailUpdateResponse**](PutAdminSettingsEmailUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated email settings |  -  |

<a id="patchAdminSettingsGeneralUpdate"></a>
# **patchAdminSettingsGeneralUpdate**
> PutAdminSettingsGeneralUpdateResponse patchAdminSettingsGeneralUpdate(orgId)

Update general settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      PutAdminSettingsGeneralUpdateResponse result = apiInstance.patchAdminSettingsGeneralUpdate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#patchAdminSettingsGeneralUpdate");
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

[**PutAdminSettingsGeneralUpdateResponse**](PutAdminSettingsGeneralUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated general settings |  -  |

<a id="patchAdminSettingsScimUpdate"></a>
# **patchAdminSettingsScimUpdate**
> PutAdminSettingsScimUpdateResponse patchAdminSettingsScimUpdate(orgId)

Update SCIM settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      PutAdminSettingsScimUpdateResponse result = apiInstance.patchAdminSettingsScimUpdate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#patchAdminSettingsScimUpdate");
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

[**PutAdminSettingsScimUpdateResponse**](PutAdminSettingsScimUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated SCIM settings |  -  |

<a id="patchAdminSettingsSecurityUpdate"></a>
# **patchAdminSettingsSecurityUpdate**
> PutAdminSettingsSecurityUpdateResponse patchAdminSettingsSecurityUpdate(orgId)

Update security settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      PutAdminSettingsSecurityUpdateResponse result = apiInstance.patchAdminSettingsSecurityUpdate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#patchAdminSettingsSecurityUpdate");
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

[**PutAdminSettingsSecurityUpdateResponse**](PutAdminSettingsSecurityUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated security settings |  -  |

<a id="patchAdminTenantUpdate"></a>
# **patchAdminTenantUpdate**
> PutAdminTenantUpdateResponse patchAdminTenantUpdate(orgId)

Update organization (tenant) name and settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      PutAdminTenantUpdateResponse result = apiInstance.patchAdminTenantUpdate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#patchAdminTenantUpdate");
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

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated organization profile |  -  |

<a id="putAdminOrganizationUpdate"></a>
# **putAdminOrganizationUpdate**
> PutAdminTenantUpdateResponse putAdminOrganizationUpdate(orgId)

Update organization (tenant) name and settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      PutAdminTenantUpdateResponse result = apiInstance.putAdminOrganizationUpdate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#putAdminOrganizationUpdate");
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

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated organization profile |  -  |

<a id="putAdminSettingsAuthUpdate"></a>
# **putAdminSettingsAuthUpdate**
> PutAdminSettingsAuthenticationUpdateResponse putAdminSettingsAuthUpdate(orgId)

Update authentication settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      PutAdminSettingsAuthenticationUpdateResponse result = apiInstance.putAdminSettingsAuthUpdate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#putAdminSettingsAuthUpdate");
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

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated authentication settings |  -  |

<a id="putAdminSettingsAuthenticationUpdate"></a>
# **putAdminSettingsAuthenticationUpdate**
> PutAdminSettingsAuthenticationUpdateResponse putAdminSettingsAuthenticationUpdate(orgId)

Update authentication settings (alias for settings/auth)

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      PutAdminSettingsAuthenticationUpdateResponse result = apiInstance.putAdminSettingsAuthenticationUpdate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#putAdminSettingsAuthenticationUpdate");
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

[**PutAdminSettingsAuthenticationUpdateResponse**](PutAdminSettingsAuthenticationUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated authentication settings |  -  |

<a id="putAdminSettingsBrandingUpdate"></a>
# **putAdminSettingsBrandingUpdate**
> PutAdminSettingsBrandingUpdateResponse putAdminSettingsBrandingUpdate(orgId)

Update branding/login page settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      PutAdminSettingsBrandingUpdateResponse result = apiInstance.putAdminSettingsBrandingUpdate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#putAdminSettingsBrandingUpdate");
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

[**PutAdminSettingsBrandingUpdateResponse**](PutAdminSettingsBrandingUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated branding settings |  -  |

<a id="putAdminSettingsEmailUpdate"></a>
# **putAdminSettingsEmailUpdate**
> PutAdminSettingsEmailUpdateResponse putAdminSettingsEmailUpdate(orgId)

Update email settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      PutAdminSettingsEmailUpdateResponse result = apiInstance.putAdminSettingsEmailUpdate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#putAdminSettingsEmailUpdate");
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

[**PutAdminSettingsEmailUpdateResponse**](PutAdminSettingsEmailUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated email settings |  -  |

<a id="putAdminSettingsGeneralUpdate"></a>
# **putAdminSettingsGeneralUpdate**
> PutAdminSettingsGeneralUpdateResponse putAdminSettingsGeneralUpdate(orgId)

Update general settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      PutAdminSettingsGeneralUpdateResponse result = apiInstance.putAdminSettingsGeneralUpdate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#putAdminSettingsGeneralUpdate");
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

[**PutAdminSettingsGeneralUpdateResponse**](PutAdminSettingsGeneralUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated general settings |  -  |

<a id="putAdminSettingsScimUpdate"></a>
# **putAdminSettingsScimUpdate**
> PutAdminSettingsScimUpdateResponse putAdminSettingsScimUpdate(orgId)

Update SCIM settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      PutAdminSettingsScimUpdateResponse result = apiInstance.putAdminSettingsScimUpdate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#putAdminSettingsScimUpdate");
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

[**PutAdminSettingsScimUpdateResponse**](PutAdminSettingsScimUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated SCIM settings |  -  |

<a id="putAdminSettingsSecurityUpdate"></a>
# **putAdminSettingsSecurityUpdate**
> PutAdminSettingsSecurityUpdateResponse putAdminSettingsSecurityUpdate(orgId)

Update security settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      PutAdminSettingsSecurityUpdateResponse result = apiInstance.putAdminSettingsSecurityUpdate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#putAdminSettingsSecurityUpdate");
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

[**PutAdminSettingsSecurityUpdateResponse**](PutAdminSettingsSecurityUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated security settings |  -  |

<a id="putAdminTenantUpdate"></a>
# **putAdminTenantUpdate**
> PutAdminTenantUpdateResponse putAdminTenantUpdate(orgId)

Update organization (tenant) name and settings

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminSettingsApi;

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

    AdminSettingsApi apiInstance = new AdminSettingsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      PutAdminTenantUpdateResponse result = apiInstance.putAdminTenantUpdate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminSettingsApi#putAdminTenantUpdate");
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

[**PutAdminTenantUpdateResponse**](PutAdminTenantUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated organization profile |  -  |

