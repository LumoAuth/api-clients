# AdminOrganizationsApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**adminOrgInvitationsCreate**](AdminOrganizationsApi.md#adminOrgInvitationsCreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | Invite a user to an organization |
| [**adminOrgInvitationsList**](AdminOrganizationsApi.md#adminOrgInvitationsList) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | List organization invitations |
| [**adminOrgInvitationsResend**](AdminOrganizationsApi.md#adminOrgInvitationsResend) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId}/resend | Resend an invitation |
| [**adminOrgInvitationsRevoke**](AdminOrganizationsApi.md#adminOrgInvitationsRevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId} | Revoke an invitation |
| [**adminOrgMembersAdd**](AdminOrganizationsApi.md#adminOrgMembersAdd) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | Add a member to an organization |
| [**adminOrgMembersList**](AdminOrganizationsApi.md#adminOrgMembersList) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | List organization members |
| [**adminOrgMembersRemove**](AdminOrganizationsApi.md#adminOrgMembersRemove) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Remove a member from an organization |
| [**adminOrgRolesCreate**](AdminOrganizationsApi.md#adminOrgRolesCreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | Create an organization role |
| [**adminOrgRolesDelete**](AdminOrganizationsApi.md#adminOrgRolesDelete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Delete an organization role |
| [**adminOrgRolesList**](AdminOrganizationsApi.md#adminOrgRolesList) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | List organization roles |
| [**adminOrganizationsCreate**](AdminOrganizationsApi.md#adminOrganizationsCreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations | Create an organization |
| [**adminOrganizationsDelete**](AdminOrganizationsApi.md#adminOrganizationsDelete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Delete an organization |
| [**adminOrganizationsGet**](AdminOrganizationsApi.md#adminOrganizationsGet) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Get an organization |
| [**adminOrganizationsList**](AdminOrganizationsApi.md#adminOrganizationsList) | **GET** /orgs/{orgId}/api/v1/admin/organizations | List organizations |
| [**patchAdminOrgMembersUpdate**](AdminOrganizationsApi.md#patchAdminOrgMembersUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Update a member&#39;s role or status |
| [**patchAdminOrgRolesUpdate**](AdminOrganizationsApi.md#patchAdminOrgRolesUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Update an organization role |
| [**patchAdminOrganizationsUpdate**](AdminOrganizationsApi.md#patchAdminOrganizationsUpdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Update an organization |
| [**putAdminOrgMembersUpdate**](AdminOrganizationsApi.md#putAdminOrgMembersUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Update a member&#39;s role or status |
| [**putAdminOrgRolesUpdate**](AdminOrganizationsApi.md#putAdminOrgRolesUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Update an organization role |
| [**putAdminOrganizationsUpdate**](AdminOrganizationsApi.md#putAdminOrganizationsUpdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Update an organization |


<a id="adminOrgInvitationsCreate"></a>
# **adminOrgInvitationsCreate**
> AdminOrgInvitationsCreateResponse adminOrgInvitationsCreate(orgId, organizationId)

Invite a user to an organization

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String organizationId = "organizationId_example"; // String | 
    try {
      AdminOrgInvitationsCreateResponse result = apiInstance.adminOrgInvitationsCreate(orgId, organizationId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#adminOrgInvitationsCreate");
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
| **organizationId** | **String**|  | |

### Return type

[**AdminOrgInvitationsCreateResponse**](AdminOrgInvitationsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Invitation sent |  -  |
| **400** | Invalid role for this organization |  -  |
| **404** | Organization not found |  -  |

<a id="adminOrgInvitationsList"></a>
# **adminOrgInvitationsList**
> AdminOrgInvitationsListResponse adminOrgInvitationsList(orgId, organizationId)

List organization invitations

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String organizationId = "organizationId_example"; // String | 
    try {
      AdminOrgInvitationsListResponse result = apiInstance.adminOrgInvitationsList(orgId, organizationId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#adminOrgInvitationsList");
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
| **organizationId** | **String**|  | |

### Return type

[**AdminOrgInvitationsListResponse**](AdminOrgInvitationsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Invitations |  -  |
| **404** | Organization not found |  -  |

<a id="adminOrgInvitationsResend"></a>
# **adminOrgInvitationsResend**
> MessageResponse adminOrgInvitationsResend(orgId, organizationId, invId)

Resend an invitation

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String organizationId = "organizationId_example"; // String | 
    String invId = "invId_example"; // String | 
    try {
      MessageResponse result = apiInstance.adminOrgInvitationsResend(orgId, organizationId, invId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#adminOrgInvitationsResend");
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
| **organizationId** | **String**|  | |
| **invId** | **String**|  | |

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
| **200** | Invitation resent |  -  |
| **404** | Organization or invitation not found |  -  |
| **422** | Unable to resend invitation |  -  |

<a id="adminOrgInvitationsRevoke"></a>
# **adminOrgInvitationsRevoke**
> MessageResponse adminOrgInvitationsRevoke(orgId, organizationId, invId)

Revoke an invitation

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String organizationId = "organizationId_example"; // String | 
    String invId = "invId_example"; // String | 
    try {
      MessageResponse result = apiInstance.adminOrgInvitationsRevoke(orgId, organizationId, invId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#adminOrgInvitationsRevoke");
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
| **organizationId** | **String**|  | |
| **invId** | **String**|  | |

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
| **200** | Invitation revoked |  -  |
| **404** | Organization or invitation not found |  -  |

<a id="adminOrgMembersAdd"></a>
# **adminOrgMembersAdd**
> AdminOrgMembersAddResponse adminOrgMembersAdd(orgId, organizationId)

Add a member to an organization

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String organizationId = "organizationId_example"; // String | 
    try {
      AdminOrgMembersAddResponse result = apiInstance.adminOrgMembersAdd(orgId, organizationId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#adminOrgMembersAdd");
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
| **organizationId** | **String**|  | |

### Return type

[**AdminOrgMembersAddResponse**](AdminOrgMembersAddResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Member added |  -  |
| **404** | Organization, user or role not found |  -  |
| **409** | User is already a member |  -  |

<a id="adminOrgMembersList"></a>
# **adminOrgMembersList**
> AdminOrgMembersListResponse adminOrgMembersList(orgId, organizationId)

List organization members

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String organizationId = "organizationId_example"; // String | 
    try {
      AdminOrgMembersListResponse result = apiInstance.adminOrgMembersList(orgId, organizationId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#adminOrgMembersList");
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
| **organizationId** | **String**|  | |

### Return type

[**AdminOrgMembersListResponse**](AdminOrgMembersListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Members |  -  |
| **404** | Organization not found |  -  |

<a id="adminOrgMembersRemove"></a>
# **adminOrgMembersRemove**
> MessageResponse adminOrgMembersRemove(orgId, organizationId, userId)

Remove a member from an organization

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String organizationId = "organizationId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      MessageResponse result = apiInstance.adminOrgMembersRemove(orgId, organizationId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#adminOrgMembersRemove");
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
| **organizationId** | **String**|  | |
| **userId** | **String**|  | |

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
| **200** | Member removed |  -  |
| **404** | Organization or user not found |  -  |
| **422** | Unable to remove member |  -  |

<a id="adminOrgRolesCreate"></a>
# **adminOrgRolesCreate**
> AdminOrgRolesCreateResponse adminOrgRolesCreate(orgId, organizationId)

Create an organization role

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String organizationId = "organizationId_example"; // String | 
    try {
      AdminOrgRolesCreateResponse result = apiInstance.adminOrgRolesCreate(orgId, organizationId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#adminOrgRolesCreate");
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
| **organizationId** | **String**|  | |

### Return type

[**AdminOrgRolesCreateResponse**](AdminOrgRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Role created |  -  |
| **404** | Organization not found |  -  |
| **409** | A role with this name or slug already exists |  -  |

<a id="adminOrgRolesDelete"></a>
# **adminOrgRolesDelete**
> MessageResponse adminOrgRolesDelete(orgId, organizationId, roleId)

Delete an organization role

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String organizationId = "organizationId_example"; // String | 
    String roleId = "roleId_example"; // String | 
    try {
      MessageResponse result = apiInstance.adminOrgRolesDelete(orgId, organizationId, roleId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#adminOrgRolesDelete");
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
| **organizationId** | **String**|  | |
| **roleId** | **String**|  | |

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
| **200** | Role deleted |  -  |
| **404** | Organization or role not found |  -  |
| **422** | Role still in use |  -  |

<a id="adminOrgRolesList"></a>
# **adminOrgRolesList**
> AdminOrgRolesListResponse adminOrgRolesList(orgId, organizationId)

List organization roles

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String organizationId = "organizationId_example"; // String | 
    try {
      AdminOrgRolesListResponse result = apiInstance.adminOrgRolesList(orgId, organizationId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#adminOrgRolesList");
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
| **organizationId** | **String**|  | |

### Return type

[**AdminOrgRolesListResponse**](AdminOrgRolesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Roles |  -  |
| **404** | Organization not found |  -  |

<a id="adminOrganizationsCreate"></a>
# **adminOrganizationsCreate**
> AdminOrganizationsCreateResponse adminOrganizationsCreate(orgId)

Create an organization

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminOrganizationsCreateResponse result = apiInstance.adminOrganizationsCreate(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#adminOrganizationsCreate");
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

[**AdminOrganizationsCreateResponse**](AdminOrganizationsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Organization created |  -  |
| **409** | Organization already exists or data invalid |  -  |

<a id="adminOrganizationsDelete"></a>
# **adminOrganizationsDelete**
> MessageResponse adminOrganizationsDelete(orgId, organizationId)

Delete an organization

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String organizationId = "organizationId_example"; // String | 
    try {
      MessageResponse result = apiInstance.adminOrganizationsDelete(orgId, organizationId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#adminOrganizationsDelete");
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
| **organizationId** | **String**|  | |

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
| **200** | Organization deleted |  -  |
| **404** | Organization not found |  -  |

<a id="adminOrganizationsGet"></a>
# **adminOrganizationsGet**
> AdminOrganizationsGetResponse adminOrganizationsGet(orgId, organizationId)

Get an organization

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String organizationId = "organizationId_example"; // String | 
    try {
      AdminOrganizationsGetResponse result = apiInstance.adminOrganizationsGet(orgId, organizationId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#adminOrganizationsGet");
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
| **organizationId** | **String**|  | |

### Return type

[**AdminOrganizationsGetResponse**](AdminOrganizationsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Organization |  -  |
| **404** | Organization not found |  -  |

<a id="adminOrganizationsList"></a>
# **adminOrganizationsList**
> AdminOrganizationsListResponse adminOrganizationsList(orgId)

List organizations

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      AdminOrganizationsListResponse result = apiInstance.adminOrganizationsList(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#adminOrganizationsList");
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

[**AdminOrganizationsListResponse**](AdminOrganizationsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Organizations |  -  |

<a id="patchAdminOrgMembersUpdate"></a>
# **patchAdminOrgMembersUpdate**
> PutAdminOrgMembersUpdateResponse patchAdminOrgMembersUpdate(orgId, organizationId, userId)

Update a member&#39;s role or status

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String organizationId = "organizationId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      PutAdminOrgMembersUpdateResponse result = apiInstance.patchAdminOrgMembersUpdate(orgId, organizationId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#patchAdminOrgMembersUpdate");
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
| **organizationId** | **String**|  | |
| **userId** | **String**|  | |

### Return type

[**PutAdminOrgMembersUpdateResponse**](PutAdminOrgMembersUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated member |  -  |
| **404** | Organization, member or role not found |  -  |
| **422** | Unable to update member role |  -  |

<a id="patchAdminOrgRolesUpdate"></a>
# **patchAdminOrgRolesUpdate**
> AdminOrgRolesCreateResponse patchAdminOrgRolesUpdate(orgId, organizationId, roleId)

Update an organization role

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String organizationId = "organizationId_example"; // String | 
    String roleId = "roleId_example"; // String | 
    try {
      AdminOrgRolesCreateResponse result = apiInstance.patchAdminOrgRolesUpdate(orgId, organizationId, roleId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#patchAdminOrgRolesUpdate");
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
| **organizationId** | **String**|  | |
| **roleId** | **String**|  | |

### Return type

[**AdminOrgRolesCreateResponse**](AdminOrgRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated role |  -  |
| **404** | Organization or role not found |  -  |
| **422** | Unable to update role |  -  |

<a id="patchAdminOrganizationsUpdate"></a>
# **patchAdminOrganizationsUpdate**
> AdminOrganizationsGetResponse patchAdminOrganizationsUpdate(orgId, organizationId)

Update an organization

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String organizationId = "organizationId_example"; // String | 
    try {
      AdminOrganizationsGetResponse result = apiInstance.patchAdminOrganizationsUpdate(orgId, organizationId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#patchAdminOrganizationsUpdate");
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
| **organizationId** | **String**|  | |

### Return type

[**AdminOrganizationsGetResponse**](AdminOrganizationsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated organization |  -  |
| **404** | Organization not found |  -  |
| **409** | Data invalid or conflicts with an existing record |  -  |

<a id="putAdminOrgMembersUpdate"></a>
# **putAdminOrgMembersUpdate**
> PutAdminOrgMembersUpdateResponse putAdminOrgMembersUpdate(orgId, organizationId, userId)

Update a member&#39;s role or status

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String organizationId = "organizationId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      PutAdminOrgMembersUpdateResponse result = apiInstance.putAdminOrgMembersUpdate(orgId, organizationId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#putAdminOrgMembersUpdate");
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
| **organizationId** | **String**|  | |
| **userId** | **String**|  | |

### Return type

[**PutAdminOrgMembersUpdateResponse**](PutAdminOrgMembersUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated member |  -  |
| **404** | Organization, member or role not found |  -  |
| **422** | Unable to update member role |  -  |

<a id="putAdminOrgRolesUpdate"></a>
# **putAdminOrgRolesUpdate**
> AdminOrgRolesCreateResponse putAdminOrgRolesUpdate(orgId, organizationId, roleId)

Update an organization role

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String organizationId = "organizationId_example"; // String | 
    String roleId = "roleId_example"; // String | 
    try {
      AdminOrgRolesCreateResponse result = apiInstance.putAdminOrgRolesUpdate(orgId, organizationId, roleId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#putAdminOrgRolesUpdate");
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
| **organizationId** | **String**|  | |
| **roleId** | **String**|  | |

### Return type

[**AdminOrgRolesCreateResponse**](AdminOrgRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated role |  -  |
| **404** | Organization or role not found |  -  |
| **422** | Unable to update role |  -  |

<a id="putAdminOrganizationsUpdate"></a>
# **putAdminOrganizationsUpdate**
> AdminOrganizationsGetResponse putAdminOrganizationsUpdate(orgId, organizationId)

Update an organization

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminOrganizationsApi;

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

    AdminOrganizationsApi apiInstance = new AdminOrganizationsApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String organizationId = "organizationId_example"; // String | 
    try {
      AdminOrganizationsGetResponse result = apiInstance.putAdminOrganizationsUpdate(orgId, organizationId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminOrganizationsApi#putAdminOrganizationsUpdate");
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
| **organizationId** | **String**|  | |

### Return type

[**AdminOrganizationsGetResponse**](AdminOrganizationsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated organization |  -  |
| **404** | Organization not found |  -  |
| **409** | Data invalid or conflicts with an existing record |  -  |

