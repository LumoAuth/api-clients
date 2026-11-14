# AdminUsersApi

All URIs are relative to *https://app.lumoauth.dev*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**addUserGroup**](#addusergroup) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | Add a user to a group|
|[**addUserPermission**](#adduserpermission) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions | Assign a permission to a user|
|[**addUserRole**](#adduserrole) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | Assign a role to a user|
|[**adminIdentitiesLegacySamlRelink**](#adminidentitieslegacysamlrelink) | **POST** /orgs/{orgId}/api/v1/admin/identities/legacy-saml | Relink legacy SAML users to an IdP|
|[**adminIdentitiesLegacySamlReport**](#adminidentitieslegacysamlreport) | **GET** /orgs/{orgId}/api/v1/admin/identities/legacy-saml | Legacy SAML bindings report|
|[**adminIdentitiesLink**](#adminidentitieslink) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/identities | Link a SAML, OpenID Connect or LDAP identity to a user|
|[**adminIdentitiesList**](#adminidentitieslist) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/identities | List a user\&#39;s federated identity links|
|[**adminIdentitiesUnlink**](#adminidentitiesunlink) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/identities/{type} | Unlink a user\&#39;s SAML, OpenID Connect, LDAP or social identity|
|[**adminUsersRestore**](#adminusersrestore) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/restore | Restore a deleted user|
|[**blockUser**](#blockuser) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/block | Block a user|
|[**createUser**](#createuser) | **POST** /orgs/{orgId}/api/v1/admin/users | Create a user|
|[**deleteUser**](#deleteuser) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId} | Delete a user|
|[**getUser**](#getuser) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId} | Get a user|
|[**listUserGroups**](#listusergroups) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | List a user\&#39;s groups|
|[**listUserPermissions**](#listuserpermissions) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions | List a user\&#39;s direct permissions|
|[**listUserRoles**](#listuserroles) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | List a user\&#39;s roles|
|[**listUsers**](#listusers) | **GET** /orgs/{orgId}/api/v1/admin/users | List users|
|[**markUserVerified**](#markuserverified) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/mark-verified | Mark a user\&#39;s email as verified|
|[**patchUser**](#patchuser) | **PATCH** /orgs/{orgId}/api/v1/admin/users/{userId} | Update a user|
|[**removeUserGroup**](#removeusergroup) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/groups/{groupId} | Remove a user from a group|
|[**removeUserPermission**](#removeuserpermission) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions/{permissionId} | Remove a permission from a user|
|[**removeUserRole**](#removeuserrole) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/roles/{roleId} | Remove a role from a user|
|[**resetUserMfa**](#resetusermfa) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/mfa/reset | Reset MFA (removed)|
|[**sendUserVerificationEmail**](#senduserverificationemail) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/verify-email | Send a verification email|
|[**setUserPassword**](#setuserpassword) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/password | Set a user\&#39;s password|
|[**setUserPasswordPost**](#setuserpasswordpost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/password | Set a user\&#39;s password|
|[**triggerUserPasswordReset**](#triggeruserpasswordreset) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/password-reset | Send a password reset email|
|[**unblockUser**](#unblockuser) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/unblock | Unblock a user|
|[**updateUser**](#updateuser) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId} | Update a user|
|[**updateUserGroups**](#updateusergroups) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | Replace a user\&#39;s groups|
|[**updateUserRoles**](#updateuserroles) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | Replace a user\&#39;s roles|

# **addUserGroup**
> AddUserGroupResponse addUserGroup()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.addUserGroup(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**AddUserGroupResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | User with the group assigned |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addUserPermission**
> AddUserPermissionResponse addUserPermission()

Grants one permission to the user directly. The caller must hold the permission (403 otherwise). A permission that opens the admin portal makes an active user an administrator, who takes an admin seat: 403 `plan_limit_reached` (`limit`: `admin_seats`) when the plan has none free. A user or permission outside this organization is 404.

### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.addUserPermission(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**AddUserPermissionResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Permission assigned |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addUserRole**
> AddUserRoleResponse addUserRole()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.addUserRole(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**AddUserRoleResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | User with the role assigned |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminIdentitiesLegacySamlRelink**
> AdminIdentitiesLegacySamlRelinkResponse adminIdentitiesLegacySamlRelink(adminIdentitiesLegacySamlRelinkRequest)

Rebinds legacy bare-NameID users to `idp_id`, keeping their NameID: either `user_ids`, or every legacy user whose email domain the IdP\'s allowed email domains claim (`all_matching_domains: true`). Users the caller does not outrank, or whose NameID is already linked at that IdP, are skipped. `dry_run` (default true) only reports what would change. A real run revokes each relinked user\'s sessions, notifies them and is audited (identity.link.created per user, identity.link.bulk_relinked once); signed-in admins need fresh MFA. An access token must come from a sign-in within the last 10 minutes (401 insufficient_user_authentication otherwise), except for a request that sends `\"dry_run\": true`.

### Example

```typescript
import {
    AdminUsersApi,
    Configuration,
    AdminIdentitiesLegacySamlRelinkRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let adminIdentitiesLegacySamlRelinkRequest: AdminIdentitiesLegacySamlRelinkRequest; //

const { status, data } = await apiInstance.adminIdentitiesLegacySamlRelink(
    orgId,
    adminIdentitiesLegacySamlRelinkRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **adminIdentitiesLegacySamlRelinkRequest** | **AdminIdentitiesLegacySamlRelinkRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**AdminIdentitiesLegacySamlRelinkResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Plan (dry run) or result |  -  |
|**403** | step_up_required |  -  |
|**404** | IdP not found |  -  |
|**422** | Neither user_ids nor all_matching_domains given, or the IdP has no allowed email domains |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminIdentitiesLegacySamlReport**
> AdminIdentitiesLegacySamlReportResponse adminIdentitiesLegacySamlReport()

Users still bound by a bare NameID (from before SAML links were scoped to their IdP). While the organization has more than one SAML IdP (`ambiguous: true`) these users are refused at SAML sign-in until relinked. Each user lists the IdPs whose allowed email domains claim their address; `suggested_idp_id` is set when exactly one does. Filter with `idp_id`.

### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let idpId: number; // (optional) (default to undefined)

const { status, data } = await apiInstance.adminIdentitiesLegacySamlReport(
    orgId,
    idpId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **idpId** | [**number**] |  | (optional) defaults to undefined|


### Return type

**AdminIdentitiesLegacySamlReportResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Report |  -  |
|**404** | IdP not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminIdentitiesLink**
> AdminAgentsGetResponse adminIdentitiesLink(adminIdentitiesLinkRequest)

Sets (or replaces) the user\'s SAML binding (`idp_id` + `name_id`), enterprise OpenID Connect binding (`idp_id` + `subject`: the value of the connection\'s user identifier claim; a person can sign in through such a connection only after this link exists) or LDAP binding (`ldap_config_id` + `dn`; omit `dn` to look the entry up in the directory by the user\'s email / username). Refused with 409 when another user already holds that identity, or when the user is linked to a different federated source (unlink it first). Revokes the user\'s sessions and tokens, notifies the user and is audited as identity.link.created. Signed-in admins must have passed MFA in the last 10 minutes (send X-MFA-Challenge with an approved step-up challenge when calling with a user token).

### Example

```typescript
import {
    AdminUsersApi,
    Configuration,
    AdminIdentitiesLinkRequest
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)
let adminIdentitiesLinkRequest: AdminIdentitiesLinkRequest; //

const { status, data } = await apiInstance.adminIdentitiesLink(
    orgId,
    userId,
    adminIdentitiesLinkRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **adminIdentitiesLinkRequest** | **AdminIdentitiesLinkRequest**|  | |
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**AdminAgentsGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Linked |  -  |
|**403** | Actor does not outrank the user, or step_up_required |  -  |
|**404** | User, identity provider or directory not found |  -  |
|**409** | identity_conflict |  -  |
|**422** | invalid_identity / directory_lookup_failed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminIdentitiesList**
> AdminIdentitiesListResponse adminIdentitiesList()

SAML (IdP + NameID), enterprise OpenID Connect (connection + subject), LDAP (directory + DN) and social provider links. A SAML link with `legacy: true` stores a bare NameID and is refused at sign-in while the organization has more than one SAML IdP. An OpenID Connect link with `hashed: true` stores a long subject as a hash, so `subject` is null.

### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.adminIdentitiesList(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**AdminIdentitiesListResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Links |  -  |
|**404** | User not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminIdentitiesUnlink**
> AdminAgentsGetResponse adminIdentitiesUnlink()

Removes the binding of the given type (`saml`, `oidc`, `ldap` or `social`). Revokes the user\'s sessions and tokens, notifies the user and is audited as identity.link.removed. Unlinking LDAP also clears LDAP-only. Same step-up rule as linking.

### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let type: 'saml' | 'oidc' | 'ldap' | 'social'; // (default to undefined)
let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.adminIdentitiesUnlink(
    type,
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **type** | [**&#39;saml&#39; | &#39;oidc&#39; | &#39;ldap&#39; | &#39;social&#39;**]**Array<&#39;saml&#39; &#124; &#39;oidc&#39; &#124; &#39;ldap&#39; &#124; &#39;social&#39;>** |  | defaults to undefined|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**AdminAgentsGetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Unlinked; returns the removed binding |  -  |
|**403** | Actor does not outrank the user, or step_up_required |  -  |
|**404** | User not found, or no link of that type |  -  |
|**422** | Unknown type |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminUsersRestore**
> AdminUsersRestoreResponse adminUsersRestore()

Restores a user that inbound SCIM soft-deleted (list them with GET /users?deleted=true). The account keeps the roles, groups and permissions that it still holds, and its active and blocked state. Its sessions and tokens stay revoked: the user signs in again. An erased user cannot be restored.

### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.adminUsersRestore(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**AdminUsersRestoreResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | User restored |  -  |
|**403** | The user holds privileges that the caller lacks, or the plan has no free administrator seat |  -  |
|**404** | No such user in this organization |  -  |
|**409** | The user is not deleted (&#x60;user_not_deleted&#x60;), was erased (&#x60;user_erased&#x60;), or its address is used by another account (&#x60;address_in_use&#x60;) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blockUser**
> BlockUserResponse blockUser()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.blockUser(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**BlockUserResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | User blocked |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUser**
> CreateUserResponse createUser()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)

const { status, data } = await apiInstance.createUser(
    orgId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|


### Return type

**CreateUserResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | User created |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
> DeleteUserResponse deleteUser()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.deleteUser(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**DeleteUserResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | User deleted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
> GetUserResponse getUser()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.getUser(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**GetUserResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | User |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserGroups**
> AdminGroupsGroupsGetRolesResponse listUserGroups()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.listUserGroups(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**AdminGroupsGroupsGetRolesResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Groups the user belongs to |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserPermissions**
> AdminRolesGetPermissionsResponse listUserPermissions()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.listUserPermissions(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**AdminRolesGetPermissionsResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Permissions assigned directly to the user |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserRoles**
> AdminGroupsGroupsGetRolesResponse listUserRoles()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.listUserRoles(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**AdminGroupsGroupsGetRolesResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Roles assigned to the user |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUsers**
> ListUsersResponse listUsers()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let page: number; //Page number. (optional) (default to 1)
let limit: number; //Users per page (1 to 100). (optional) (default to 25)
let search: string; //Users whose email address, name or username contains this text (case-sensitive; the first 100 characters are used). (optional) (default to undefined)
let active: boolean; //Only active (`true`) or inactive (`false`) users. (optional) (default to undefined)
let blocked: boolean; //Only blocked (`true`) or not blocked (`false`) users. (optional) (default to undefined)
let deleted: boolean; //`true` lists only the users that SCIM deleted (soft-deleted). Without it, or with `false`, the list leaves them out. (optional) (default to false)
let emailVerified: boolean; //Only users whose email address is verified (`true`) or not (`false`). (optional) (default to undefined)
let mfaEnabled: boolean; //Only users with (`true`) or without (`false`) multi-factor authentication. (optional) (default to undefined)
let role: string; //Only users who hold the role with this slug. (optional) (default to undefined)
let group: string; //Only members of the group with this slug. (optional) (default to undefined)
let sortBy: 'email' | 'name' | 'username' | 'createdAt' | 'lastLoginAt'; //Sort field. Without it the list is sorted by createdAt, newest first. Another value sorts by createdAt. (optional) (default to undefined)
let sortDir: 'ASC' | 'DESC'; //Sort direction. Used only together with sortBy. (optional) (default to 'DESC')

const { status, data } = await apiInstance.listUsers(
    orgId,
    page,
    limit,
    search,
    active,
    blocked,
    deleted,
    emailVerified,
    mfaEnabled,
    role,
    group,
    sortBy,
    sortDir
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **page** | [**number**] | Page number. | (optional) defaults to 1|
| **limit** | [**number**] | Users per page (1 to 100). | (optional) defaults to 25|
| **search** | [**string**] | Users whose email address, name or username contains this text (case-sensitive; the first 100 characters are used). | (optional) defaults to undefined|
| **active** | [**boolean**] | Only active (&#x60;true&#x60;) or inactive (&#x60;false&#x60;) users. | (optional) defaults to undefined|
| **blocked** | [**boolean**] | Only blocked (&#x60;true&#x60;) or not blocked (&#x60;false&#x60;) users. | (optional) defaults to undefined|
| **deleted** | [**boolean**] | &#x60;true&#x60; lists only the users that SCIM deleted (soft-deleted). Without it, or with &#x60;false&#x60;, the list leaves them out. | (optional) defaults to false|
| **emailVerified** | [**boolean**] | Only users whose email address is verified (&#x60;true&#x60;) or not (&#x60;false&#x60;). | (optional) defaults to undefined|
| **mfaEnabled** | [**boolean**] | Only users with (&#x60;true&#x60;) or without (&#x60;false&#x60;) multi-factor authentication. | (optional) defaults to undefined|
| **role** | [**string**] | Only users who hold the role with this slug. | (optional) defaults to undefined|
| **group** | [**string**] | Only members of the group with this slug. | (optional) defaults to undefined|
| **sortBy** | [**&#39;email&#39; | &#39;name&#39; | &#39;username&#39; | &#39;createdAt&#39; | &#39;lastLoginAt&#39;**]**Array<&#39;email&#39; &#124; &#39;name&#39; &#124; &#39;username&#39; &#124; &#39;createdAt&#39; &#124; &#39;lastLoginAt&#39;>** | Sort field. Without it the list is sorted by createdAt, newest first. Another value sorts by createdAt. | (optional) defaults to undefined|
| **sortDir** | [**&#39;ASC&#39; | &#39;DESC&#39;**]**Array<&#39;ASC&#39; &#124; &#39;DESC&#39;>** | Sort direction. Used only together with sortBy. | (optional) defaults to 'DESC'|


### Return type

**ListUsersResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Users |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markUserVerified**
> MarkUserVerifiedResponse markUserVerified()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.markUserVerified(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**MarkUserVerifiedResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | User marked verified |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUser**
> UpdateUserResponse patchUser()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.patchUser(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**UpdateUserResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | User updated |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserGroup**
> RemoveUserGroupResponse removeUserGroup()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)
let groupId: string; // (default to undefined)

const { status, data } = await apiInstance.removeUserGroup(
    orgId,
    userId,
    groupId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|
| **groupId** | [**string**] |  | defaults to undefined|


### Return type

**RemoveUserGroupResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | User with the group removed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserPermission**
> RemoveUserPermissionResponse removeUserPermission()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)
let permissionId: string; // (default to undefined)

const { status, data } = await apiInstance.removeUserPermission(
    orgId,
    userId,
    permissionId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|
| **permissionId** | [**string**] |  | defaults to undefined|


### Return type

**RemoveUserPermissionResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Permission removed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserRole**
> RemoveUserRoleResponse removeUserRole()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)
let roleId: string; // (default to undefined)

const { status, data } = await apiInstance.removeUserRole(
    orgId,
    userId,
    roleId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|
| **roleId** | [**string**] |  | defaults to undefined|


### Return type

**RemoveUserRoleResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | User with the role removed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetUserMfa**
> resetUserMfa()

Removed: admins cannot disable a user\'s MFA. Issue a temporary access code with POST /users/{userId}/temporary-access-code instead, or remove a single lost authenticator with DELETE /users/{userId}/authenticators/{authenticatorId}.

### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.resetUserMfa(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**410** | Gone — use temporary-access-code |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendUserVerificationEmail**
> SendUserVerificationEmailResponse sendUserVerificationEmail()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.sendUserVerificationEmail(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**SendUserVerificationEmailResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Verification email sent |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setUserPassword**
> SetUserPasswordPostResponse setUserPassword()

Needs `users.edit`, and the caller must hold every permission of the user. A signed-in administrator must have signed in or passed MFA within the last 10 minutes: a Bearer token needs a fresh `auth_time` (otherwise 401 `insufficient_user_authentication`), and an administrator who holds a second factor sends `X-MFA-Challenge` with an approved step_up challenge (otherwise 403 `step_up_required`). Organization API keys are not subject to this check.

### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.setUserPassword(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**SetUserPasswordPostResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Password updated |  -  |
|**401** | insufficient_user_authentication: the access token comes from a sign-in older than 10 minutes |  -  |
|**403** | Actor does not outrank the user, or step_up_required |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setUserPasswordPost**
> SetUserPasswordPostResponse setUserPasswordPost()

Needs `users.edit`, and the caller must hold every permission of the user. A signed-in administrator must have signed in or passed MFA within the last 10 minutes: a Bearer token needs a fresh `auth_time` (otherwise 401 `insufficient_user_authentication`), and an administrator who holds a second factor sends `X-MFA-Challenge` with an approved step_up challenge (otherwise 403 `step_up_required`). Organization API keys are not subject to this check.

### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.setUserPasswordPost(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**SetUserPasswordPostResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Password updated |  -  |
|**401** | insufficient_user_authentication: the access token comes from a sign-in older than 10 minutes |  -  |
|**403** | Actor does not outrank the user, or step_up_required |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **triggerUserPasswordReset**
> TriggerUserPasswordResetResponse triggerUserPasswordReset()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.triggerUserPasswordReset(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**TriggerUserPasswordResetResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Password reset email sent |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unblockUser**
> UnblockUserResponse unblockUser()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.unblockUser(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**UnblockUserResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | User unblocked |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
> UpdateUserResponse updateUser()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.updateUser(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**UpdateUserResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | User updated |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserGroups**
> UpdateUserGroupsResponse updateUserGroups()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.updateUserGroups(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**UpdateUserGroupsResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | User with updated groups |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserRoles**
> UpdateUserRolesResponse updateUserRoles()


### Example

```typescript
import {
    AdminUsersApi,
    Configuration
} from '@lumoauth/api-client';

const configuration = new Configuration();
const apiInstance = new AdminUsersApi(configuration);

let orgId: string; // (default to undefined)
let userId: string; // (default to undefined)

const { status, data } = await apiInstance.updateUserRoles(
    orgId,
    userId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orgId** | [**string**] |  | defaults to undefined|
| **userId** | [**string**] |  | defaults to undefined|


### Return type

**UpdateUserRolesResponse**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | User with updated roles |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

