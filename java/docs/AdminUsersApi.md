# AdminUsersApi

All URIs are relative to *https://app.lumoauth.dev*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addUserGroup**](AdminUsersApi.md#addUserGroup) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | Add a user to a group |
| [**addUserPermission**](AdminUsersApi.md#addUserPermission) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions | Assign a permission to a user |
| [**addUserRole**](AdminUsersApi.md#addUserRole) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | Assign a role to a user |
| [**adminIdentitiesLegacySamlRelink**](AdminUsersApi.md#adminIdentitiesLegacySamlRelink) | **POST** /orgs/{orgId}/api/v1/admin/identities/legacy-saml | Relink legacy SAML users to an IdP |
| [**adminIdentitiesLegacySamlReport**](AdminUsersApi.md#adminIdentitiesLegacySamlReport) | **GET** /orgs/{orgId}/api/v1/admin/identities/legacy-saml | Legacy SAML bindings report |
| [**adminIdentitiesLink**](AdminUsersApi.md#adminIdentitiesLink) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/identities | Link a SAML or LDAP identity to a user |
| [**adminIdentitiesList**](AdminUsersApi.md#adminIdentitiesList) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/identities | List a user&#39;s federated identity links |
| [**adminIdentitiesUnlink**](AdminUsersApi.md#adminIdentitiesUnlink) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/identities/{type} | Unlink a user&#39;s SAML, LDAP or social identity |
| [**blockUser**](AdminUsersApi.md#blockUser) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/block | Block a user |
| [**createUser**](AdminUsersApi.md#createUser) | **POST** /orgs/{orgId}/api/v1/admin/users | Create a user |
| [**deleteUser**](AdminUsersApi.md#deleteUser) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId} | Delete a user |
| [**getUser**](AdminUsersApi.md#getUser) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId} | Get a user |
| [**listUserGroups**](AdminUsersApi.md#listUserGroups) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | List a user&#39;s groups |
| [**listUserPermissions**](AdminUsersApi.md#listUserPermissions) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions | List a user&#39;s direct permissions |
| [**listUserRoles**](AdminUsersApi.md#listUserRoles) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | List a user&#39;s roles |
| [**listUsers**](AdminUsersApi.md#listUsers) | **GET** /orgs/{orgId}/api/v1/admin/users | List users |
| [**markUserVerified**](AdminUsersApi.md#markUserVerified) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/mark-verified | Mark a user&#39;s email as verified |
| [**patchUser**](AdminUsersApi.md#patchUser) | **PATCH** /orgs/{orgId}/api/v1/admin/users/{userId} | Update a user |
| [**removeUserGroup**](AdminUsersApi.md#removeUserGroup) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/groups/{groupId} | Remove a user from a group |
| [**removeUserPermission**](AdminUsersApi.md#removeUserPermission) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions/{permissionId} | Remove a permission from a user |
| [**removeUserRole**](AdminUsersApi.md#removeUserRole) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/roles/{roleId} | Remove a role from a user |
| [**resetUserMfa**](AdminUsersApi.md#resetUserMfa) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/mfa/reset | Reset MFA (removed) |
| [**sendUserVerificationEmail**](AdminUsersApi.md#sendUserVerificationEmail) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/verify-email | Send a verification email |
| [**setUserPassword**](AdminUsersApi.md#setUserPassword) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/password | Set a user&#39;s password |
| [**setUserPasswordPost**](AdminUsersApi.md#setUserPasswordPost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/password | Set a user&#39;s password |
| [**triggerUserPasswordReset**](AdminUsersApi.md#triggerUserPasswordReset) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/password-reset | Send a password reset email |
| [**unblockUser**](AdminUsersApi.md#unblockUser) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/unblock | Unblock a user |
| [**updateUser**](AdminUsersApi.md#updateUser) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId} | Update a user |
| [**updateUserGroups**](AdminUsersApi.md#updateUserGroups) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | Replace a user&#39;s groups |
| [**updateUserRoles**](AdminUsersApi.md#updateUserRoles) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | Replace a user&#39;s roles |


<a id="addUserGroup"></a>
# **addUserGroup**
> AddUserGroupResponse addUserGroup(orgId, userId)

Add a user to a group

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      AddUserGroupResponse result = apiInstance.addUserGroup(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#addUserGroup");
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

### Return type

[**AddUserGroupResponse**](AddUserGroupResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | User with the group assigned |  -  |

<a id="addUserPermission"></a>
# **addUserPermission**
> AddUserPermissionResponse addUserPermission(orgId, userId)

Assign a permission to a user

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      AddUserPermissionResponse result = apiInstance.addUserPermission(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#addUserPermission");
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

### Return type

[**AddUserPermissionResponse**](AddUserPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Permission assigned |  -  |

<a id="addUserRole"></a>
# **addUserRole**
> AddUserRoleResponse addUserRole(orgId, userId)

Assign a role to a user

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      AddUserRoleResponse result = apiInstance.addUserRole(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#addUserRole");
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

### Return type

[**AddUserRoleResponse**](AddUserRoleResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | User with the role assigned |  -  |

<a id="adminIdentitiesLegacySamlRelink"></a>
# **adminIdentitiesLegacySamlRelink**
> AdminIdentitiesLegacySamlRelinkResponse adminIdentitiesLegacySamlRelink(orgId, adminIdentitiesLegacySamlRelinkRequest)

Relink legacy SAML users to an IdP

Rebinds legacy bare-NameID users to &#x60;idp_id&#x60;, keeping their NameID: either &#x60;user_ids&#x60;, or every legacy user whose email domain the IdP&#39;s allowed email domains claim (&#x60;all_matching_domains: true&#x60;). Users the caller does not outrank, or whose NameID is already linked at that IdP, are skipped. &#x60;dry_run&#x60; (default true) only reports what would change. A real run revokes each relinked user&#39;s sessions, notifies them and is audited (identity.link.created per user, identity.link.bulk_relinked once); signed-in admins need fresh MFA.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    AdminIdentitiesLegacySamlRelinkRequest adminIdentitiesLegacySamlRelinkRequest = new AdminIdentitiesLegacySamlRelinkRequest(); // AdminIdentitiesLegacySamlRelinkRequest | 
    try {
      AdminIdentitiesLegacySamlRelinkResponse result = apiInstance.adminIdentitiesLegacySamlRelink(orgId, adminIdentitiesLegacySamlRelinkRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#adminIdentitiesLegacySamlRelink");
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
| **adminIdentitiesLegacySamlRelinkRequest** | [**AdminIdentitiesLegacySamlRelinkRequest**](AdminIdentitiesLegacySamlRelinkRequest.md)|  | |

### Return type

[**AdminIdentitiesLegacySamlRelinkResponse**](AdminIdentitiesLegacySamlRelinkResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Plan (dry run) or result |  -  |
| **403** | step_up_required |  -  |
| **404** | IdP not found |  -  |
| **422** | Neither user_ids nor all_matching_domains given, or the IdP has no allowed email domains |  -  |

<a id="adminIdentitiesLegacySamlReport"></a>
# **adminIdentitiesLegacySamlReport**
> AdminIdentitiesLegacySamlReportResponse adminIdentitiesLegacySamlReport(orgId, idpId)

Legacy SAML bindings report

Users still bound by a bare NameID (from before SAML links were scoped to their IdP). While the organization has more than one SAML IdP (&#x60;ambiguous: true&#x60;) these users are refused at SAML sign-in until relinked. Each user lists the IdPs whose allowed email domains claim their address; &#x60;suggested_idp_id&#x60; is set when exactly one does. Filter with &#x60;idp_id&#x60;.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    Integer idpId = 56; // Integer | 
    try {
      AdminIdentitiesLegacySamlReportResponse result = apiInstance.adminIdentitiesLegacySamlReport(orgId, idpId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#adminIdentitiesLegacySamlReport");
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
| **idpId** | **Integer**|  | [optional] |

### Return type

[**AdminIdentitiesLegacySamlReportResponse**](AdminIdentitiesLegacySamlReportResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Report |  -  |
| **404** | IdP not found |  -  |

<a id="adminIdentitiesLink"></a>
# **adminIdentitiesLink**
> AdminAgentsGetResponse adminIdentitiesLink(orgId, userId, adminIdentitiesLinkRequest)

Link a SAML or LDAP identity to a user

Sets (or replaces) the user&#39;s SAML binding (&#x60;idp_id&#x60; + &#x60;name_id&#x60;) or LDAP binding (&#x60;ldap_config_id&#x60; + &#x60;dn&#x60;; omit &#x60;dn&#x60; to look the entry up in the directory by the user&#39;s email / username). Refused with 409 when another user already holds that identity, or when the user is linked to a different federated source (unlink it first). Revokes the user&#39;s sessions and tokens, notifies the user and is audited as identity.link.created. Signed-in admins must have passed MFA in the last 10 minutes (send X-MFA-Challenge with an approved step-up challenge when calling with a user token).

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    AdminIdentitiesLinkRequest adminIdentitiesLinkRequest = new AdminIdentitiesLinkRequest(); // AdminIdentitiesLinkRequest | 
    try {
      AdminAgentsGetResponse result = apiInstance.adminIdentitiesLink(orgId, userId, adminIdentitiesLinkRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#adminIdentitiesLink");
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
| **adminIdentitiesLinkRequest** | [**AdminIdentitiesLinkRequest**](AdminIdentitiesLinkRequest.md)|  | |

### Return type

[**AdminAgentsGetResponse**](AdminAgentsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Linked |  -  |
| **403** | Actor does not outrank the user, or step_up_required |  -  |
| **404** | User, IdP or directory not found |  -  |
| **409** | identity_conflict |  -  |
| **422** | invalid_identity / directory_lookup_failed |  -  |

<a id="adminIdentitiesList"></a>
# **adminIdentitiesList**
> AdminIdentitiesListResponse adminIdentitiesList(orgId, userId)

List a user&#39;s federated identity links

SAML (IdP + NameID), LDAP (directory + DN), and social / OIDC provider links. A SAML link with &#x60;legacy: true&#x60; stores a bare NameID and is refused at sign-in while the organization has more than one SAML IdP.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      AdminIdentitiesListResponse result = apiInstance.adminIdentitiesList(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#adminIdentitiesList");
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

### Return type

[**AdminIdentitiesListResponse**](AdminIdentitiesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Links |  -  |
| **404** | User not found |  -  |

<a id="adminIdentitiesUnlink"></a>
# **adminIdentitiesUnlink**
> AdminAgentsGetResponse adminIdentitiesUnlink(type, orgId, userId)

Unlink a user&#39;s SAML, LDAP or social identity

Removes the binding of the given type (&#x60;saml&#x60;, &#x60;ldap&#x60; or &#x60;social&#x60;). Revokes the user&#39;s sessions and tokens, notifies the user and is audited as identity.link.removed. Unlinking LDAP also clears LDAP-only. Same step-up rule as linking.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String type = "saml"; // String | 
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      AdminAgentsGetResponse result = apiInstance.adminIdentitiesUnlink(type, orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#adminIdentitiesUnlink");
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
| **type** | **String**|  | [enum: saml, ldap, social] |
| **orgId** | **String**|  | |
| **userId** | **String**|  | |

### Return type

[**AdminAgentsGetResponse**](AdminAgentsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Unlinked; returns the removed binding |  -  |
| **403** | Actor does not outrank the user, or step_up_required |  -  |
| **404** | User not found, or no link of that type |  -  |
| **422** | Unknown type |  -  |

<a id="blockUser"></a>
# **blockUser**
> BlockUserResponse blockUser(orgId, userId)

Block a user

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      BlockUserResponse result = apiInstance.blockUser(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#blockUser");
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

### Return type

[**BlockUserResponse**](BlockUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | User blocked |  -  |

<a id="createUser"></a>
# **createUser**
> CreateUserResponse createUser(orgId)

Create a user

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      CreateUserResponse result = apiInstance.createUser(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#createUser");
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

[**CreateUserResponse**](CreateUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | User created |  -  |

<a id="deleteUser"></a>
# **deleteUser**
> DeleteUserResponse deleteUser(orgId, userId)

Delete a user

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      DeleteUserResponse result = apiInstance.deleteUser(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#deleteUser");
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

### Return type

[**DeleteUserResponse**](DeleteUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | User deleted |  -  |

<a id="getUser"></a>
# **getUser**
> GetUserResponse getUser(orgId, userId)

Get a user

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      GetUserResponse result = apiInstance.getUser(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#getUser");
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

### Return type

[**GetUserResponse**](GetUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | User |  -  |

<a id="listUserGroups"></a>
# **listUserGroups**
> AdminGroupsGroupsGetRolesResponse listUserGroups(orgId, userId)

List a user&#39;s groups

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      AdminGroupsGroupsGetRolesResponse result = apiInstance.listUserGroups(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#listUserGroups");
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

### Return type

[**AdminGroupsGroupsGetRolesResponse**](AdminGroupsGroupsGetRolesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Groups the user belongs to |  -  |

<a id="listUserPermissions"></a>
# **listUserPermissions**
> AdminRolesGetPermissionsResponse listUserPermissions(orgId, userId)

List a user&#39;s direct permissions

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      AdminRolesGetPermissionsResponse result = apiInstance.listUserPermissions(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#listUserPermissions");
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

### Return type

[**AdminRolesGetPermissionsResponse**](AdminRolesGetPermissionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Permissions assigned directly to the user |  -  |

<a id="listUserRoles"></a>
# **listUserRoles**
> AdminGroupsGroupsGetRolesResponse listUserRoles(orgId, userId)

List a user&#39;s roles

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      AdminGroupsGroupsGetRolesResponse result = apiInstance.listUserRoles(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#listUserRoles");
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

### Return type

[**AdminGroupsGroupsGetRolesResponse**](AdminGroupsGroupsGetRolesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Roles assigned to the user |  -  |

<a id="listUsers"></a>
# **listUsers**
> ListUsersResponse listUsers(orgId)

List users

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    try {
      ListUsersResponse result = apiInstance.listUsers(orgId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#listUsers");
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

[**ListUsersResponse**](ListUsersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Users |  -  |

<a id="markUserVerified"></a>
# **markUserVerified**
> MarkUserVerifiedResponse markUserVerified(orgId, userId)

Mark a user&#39;s email as verified

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      MarkUserVerifiedResponse result = apiInstance.markUserVerified(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#markUserVerified");
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

### Return type

[**MarkUserVerifiedResponse**](MarkUserVerifiedResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | User marked verified |  -  |

<a id="patchUser"></a>
# **patchUser**
> UpdateUserResponse patchUser(orgId, userId)

Update a user

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      UpdateUserResponse result = apiInstance.patchUser(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#patchUser");
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

### Return type

[**UpdateUserResponse**](UpdateUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | User updated |  -  |

<a id="removeUserGroup"></a>
# **removeUserGroup**
> RemoveUserGroupResponse removeUserGroup(orgId, userId, groupId)

Remove a user from a group

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    String groupId = "groupId_example"; // String | 
    try {
      RemoveUserGroupResponse result = apiInstance.removeUserGroup(orgId, userId, groupId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#removeUserGroup");
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
| **groupId** | **String**|  | |

### Return type

[**RemoveUserGroupResponse**](RemoveUserGroupResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | User with the group removed |  -  |

<a id="removeUserPermission"></a>
# **removeUserPermission**
> RemoveUserPermissionResponse removeUserPermission(orgId, userId, permissionId)

Remove a permission from a user

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    String permissionId = "permissionId_example"; // String | 
    try {
      RemoveUserPermissionResponse result = apiInstance.removeUserPermission(orgId, userId, permissionId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#removeUserPermission");
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
| **permissionId** | **String**|  | |

### Return type

[**RemoveUserPermissionResponse**](RemoveUserPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Permission removed |  -  |

<a id="removeUserRole"></a>
# **removeUserRole**
> RemoveUserRoleResponse removeUserRole(orgId, userId, roleId)

Remove a role from a user

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    String roleId = "roleId_example"; // String | 
    try {
      RemoveUserRoleResponse result = apiInstance.removeUserRole(orgId, userId, roleId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#removeUserRole");
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
| **roleId** | **String**|  | |

### Return type

[**RemoveUserRoleResponse**](RemoveUserRoleResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | User with the role removed |  -  |

<a id="resetUserMfa"></a>
# **resetUserMfa**
> resetUserMfa(orgId, userId)

Reset MFA (removed)

Removed: admins cannot disable a user&#39;s MFA. Issue a temporary access code with POST /users/{userId}/temporary-access-code instead, or remove a single lost authenticator with DELETE /users/{userId}/authenticators/{authenticatorId}.

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      apiInstance.resetUserMfa(orgId, userId);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#resetUserMfa");
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

### Return type

null (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **410** | Gone — use temporary-access-code |  -  |

<a id="sendUserVerificationEmail"></a>
# **sendUserVerificationEmail**
> SendUserVerificationEmailResponse sendUserVerificationEmail(orgId, userId)

Send a verification email

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      SendUserVerificationEmailResponse result = apiInstance.sendUserVerificationEmail(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#sendUserVerificationEmail");
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

### Return type

[**SendUserVerificationEmailResponse**](SendUserVerificationEmailResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Verification email sent |  -  |

<a id="setUserPassword"></a>
# **setUserPassword**
> SetUserPasswordPostResponse setUserPassword(orgId, userId)

Set a user&#39;s password

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      SetUserPasswordPostResponse result = apiInstance.setUserPassword(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#setUserPassword");
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

### Return type

[**SetUserPasswordPostResponse**](SetUserPasswordPostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Password updated |  -  |

<a id="setUserPasswordPost"></a>
# **setUserPasswordPost**
> SetUserPasswordPostResponse setUserPasswordPost(orgId, userId)

Set a user&#39;s password

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      SetUserPasswordPostResponse result = apiInstance.setUserPasswordPost(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#setUserPasswordPost");
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

### Return type

[**SetUserPasswordPostResponse**](SetUserPasswordPostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Password updated |  -  |

<a id="triggerUserPasswordReset"></a>
# **triggerUserPasswordReset**
> TriggerUserPasswordResetResponse triggerUserPasswordReset(orgId, userId)

Send a password reset email

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      TriggerUserPasswordResetResponse result = apiInstance.triggerUserPasswordReset(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#triggerUserPasswordReset");
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

### Return type

[**TriggerUserPasswordResetResponse**](TriggerUserPasswordResetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Password reset email sent |  -  |

<a id="unblockUser"></a>
# **unblockUser**
> UnblockUserResponse unblockUser(orgId, userId)

Unblock a user

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      UnblockUserResponse result = apiInstance.unblockUser(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#unblockUser");
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

### Return type

[**UnblockUserResponse**](UnblockUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | User unblocked |  -  |

<a id="updateUser"></a>
# **updateUser**
> UpdateUserResponse updateUser(orgId, userId)

Update a user

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      UpdateUserResponse result = apiInstance.updateUser(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#updateUser");
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

### Return type

[**UpdateUserResponse**](UpdateUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | User updated |  -  |

<a id="updateUserGroups"></a>
# **updateUserGroups**
> UpdateUserGroupsResponse updateUserGroups(orgId, userId)

Replace a user&#39;s groups

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      UpdateUserGroupsResponse result = apiInstance.updateUserGroups(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#updateUserGroups");
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

### Return type

[**UpdateUserGroupsResponse**](UpdateUserGroupsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | User with updated groups |  -  |

<a id="updateUserRoles"></a>
# **updateUserRoles**
> UpdateUserRolesResponse updateUserRoles(orgId, userId)

Replace a user&#39;s roles

### Example
```java
// Import classes:
import io.lumoauth.client.ApiClient;
import io.lumoauth.client.ApiException;
import io.lumoauth.client.Configuration;
import io.lumoauth.client.auth.*;
import io.lumoauth.client.models.*;
import io.lumoauth.client.api.AdminUsersApi;

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

    AdminUsersApi apiInstance = new AdminUsersApi(defaultClient);
    String orgId = "orgId_example"; // String | 
    String userId = "userId_example"; // String | 
    try {
      UpdateUserRolesResponse result = apiInstance.updateUserRoles(orgId, userId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AdminUsersApi#updateUserRoles");
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

### Return type

[**UpdateUserRolesResponse**](UpdateUserRolesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | User with updated roles |  -  |

