# AdminUsersAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUserGroup**](AdminUsersAPI.md#addusergroup) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | Add a user to a group
[**addUserPermission**](AdminUsersAPI.md#adduserpermission) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions | Assign a permission to a user
[**addUserRole**](AdminUsersAPI.md#adduserrole) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | Assign a role to a user
[**adminIdentitiesLegacySamlRelink**](AdminUsersAPI.md#adminidentitieslegacysamlrelink) | **POST** /orgs/{orgId}/api/v1/admin/identities/legacy-saml | Relink legacy SAML users to an IdP
[**adminIdentitiesLegacySamlReport**](AdminUsersAPI.md#adminidentitieslegacysamlreport) | **GET** /orgs/{orgId}/api/v1/admin/identities/legacy-saml | Legacy SAML bindings report
[**adminIdentitiesLink**](AdminUsersAPI.md#adminidentitieslink) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/identities | Link a SAML, OpenID Connect or LDAP identity to a user
[**adminIdentitiesList**](AdminUsersAPI.md#adminidentitieslist) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/identities | List a user&#39;s federated identity links
[**adminIdentitiesUnlink**](AdminUsersAPI.md#adminidentitiesunlink) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/identities/{type} | Unlink a user&#39;s SAML, OpenID Connect, LDAP or social identity
[**adminUsersRestore**](AdminUsersAPI.md#adminusersrestore) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/restore | Restore a deleted user
[**blockUser**](AdminUsersAPI.md#blockuser) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/block | Block a user
[**createUser**](AdminUsersAPI.md#createuser) | **POST** /orgs/{orgId}/api/v1/admin/users | Create a user
[**deleteUser**](AdminUsersAPI.md#deleteuser) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId} | Delete a user
[**getUser**](AdminUsersAPI.md#getuser) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId} | Get a user
[**listUserGroups**](AdminUsersAPI.md#listusergroups) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | List a user&#39;s groups
[**listUserPermissions**](AdminUsersAPI.md#listuserpermissions) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions | List a user&#39;s direct permissions
[**listUserRoles**](AdminUsersAPI.md#listuserroles) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | List a user&#39;s roles
[**listUsers**](AdminUsersAPI.md#listusers) | **GET** /orgs/{orgId}/api/v1/admin/users | List users
[**markUserVerified**](AdminUsersAPI.md#markuserverified) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/mark-verified | Mark a user&#39;s email as verified
[**patchUser**](AdminUsersAPI.md#patchuser) | **PATCH** /orgs/{orgId}/api/v1/admin/users/{userId} | Update a user
[**removeUserGroup**](AdminUsersAPI.md#removeusergroup) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/groups/{groupId} | Remove a user from a group
[**removeUserPermission**](AdminUsersAPI.md#removeuserpermission) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/permissions/{permissionId} | Remove a permission from a user
[**removeUserRole**](AdminUsersAPI.md#removeuserrole) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/roles/{roleId} | Remove a role from a user
[**resetUserMfa**](AdminUsersAPI.md#resetusermfa) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/mfa/reset | Reset MFA (removed)
[**sendUserVerificationEmail**](AdminUsersAPI.md#senduserverificationemail) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/verify-email | Send a verification email
[**setUserPassword**](AdminUsersAPI.md#setuserpassword) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/password | Set a user&#39;s password
[**setUserPasswordPost**](AdminUsersAPI.md#setuserpasswordpost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/password | Set a user&#39;s password
[**triggerUserPasswordReset**](AdminUsersAPI.md#triggeruserpasswordreset) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/password-reset | Send a password reset email
[**unblockUser**](AdminUsersAPI.md#unblockuser) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/unblock | Unblock a user
[**updateUser**](AdminUsersAPI.md#updateuser) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId} | Update a user
[**updateUserGroups**](AdminUsersAPI.md#updateusergroups) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/groups | Replace a user&#39;s groups
[**updateUserRoles**](AdminUsersAPI.md#updateuserroles) | **PUT** /orgs/{orgId}/api/v1/admin/users/{userId}/roles | Replace a user&#39;s roles


# **addUserGroup**
```swift
    open class func addUserGroup(orgId: String, userId: String, completion: @escaping (_ data: AddUserGroupResponse?, _ error: Error?) -> Void)
```

Add a user to a group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Add a user to a group
AdminUsersAPI.addUserGroup(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**AddUserGroupResponse**](AddUserGroupResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addUserPermission**
```swift
    open class func addUserPermission(orgId: String, userId: String, completion: @escaping (_ data: AddUserPermissionResponse?, _ error: Error?) -> Void)
```

Assign a permission to a user

Grants one permission to the user directly. The caller must hold the permission (403 otherwise). A permission that opens the admin portal makes an active user an administrator, who takes an admin seat: 403 `plan_limit_reached` (`limit`: `admin_seats`) when the plan has none free. A user or permission outside this organization is 404.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Assign a permission to a user
AdminUsersAPI.addUserPermission(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**AddUserPermissionResponse**](AddUserPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addUserRole**
```swift
    open class func addUserRole(orgId: String, userId: String, completion: @escaping (_ data: AddUserRoleResponse?, _ error: Error?) -> Void)
```

Assign a role to a user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Assign a role to a user
AdminUsersAPI.addUserRole(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**AddUserRoleResponse**](AddUserRoleResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminIdentitiesLegacySamlRelink**
```swift
    open class func adminIdentitiesLegacySamlRelink(orgId: String, adminIdentitiesLegacySamlRelinkRequest: AdminIdentitiesLegacySamlRelinkRequest, completion: @escaping (_ data: AdminIdentitiesLegacySamlRelinkResponse?, _ error: Error?) -> Void)
```

Relink legacy SAML users to an IdP

Rebinds legacy bare-NameID users to `idp_id`, keeping their NameID: either `user_ids`, or every legacy user whose email domain the IdP's allowed email domains claim (`all_matching_domains: true`). Users the caller does not outrank, or whose NameID is already linked at that IdP, are skipped. `dry_run` (default true) only reports what would change. A real run revokes each relinked user's sessions, notifies them and is audited (identity.link.created per user, identity.link.bulk_relinked once); signed-in admins need fresh MFA. An access token must come from a sign-in within the last 10 minutes (401 insufficient_user_authentication otherwise), except for a request that sends `\"dry_run\": true`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let adminIdentitiesLegacySamlRelinkRequest = AdminIdentitiesLegacySamlRelinkRequest(idpId: 123, userIds: ["userIds_example"], allMatchingDomains: false, dryRun: false) // AdminIdentitiesLegacySamlRelinkRequest | 

// Relink legacy SAML users to an IdP
AdminUsersAPI.adminIdentitiesLegacySamlRelink(orgId: orgId, adminIdentitiesLegacySamlRelinkRequest: adminIdentitiesLegacySamlRelinkRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **adminIdentitiesLegacySamlRelinkRequest** | [**AdminIdentitiesLegacySamlRelinkRequest**](AdminIdentitiesLegacySamlRelinkRequest.md) |  | 

### Return type

[**AdminIdentitiesLegacySamlRelinkResponse**](AdminIdentitiesLegacySamlRelinkResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminIdentitiesLegacySamlReport**
```swift
    open class func adminIdentitiesLegacySamlReport(orgId: String, idpId: Int? = nil, completion: @escaping (_ data: AdminIdentitiesLegacySamlReportResponse?, _ error: Error?) -> Void)
```

Legacy SAML bindings report

Users still bound by a bare NameID (from before SAML links were scoped to their IdP). While the organization has more than one SAML IdP (`ambiguous: true`) these users are refused at SAML sign-in until relinked. Each user lists the IdPs whose allowed email domains claim their address; `suggested_idp_id` is set when exactly one does. Filter with `idp_id`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let idpId = 987 // Int |  (optional)

// Legacy SAML bindings report
AdminUsersAPI.adminIdentitiesLegacySamlReport(orgId: orgId, idpId: idpId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **idpId** | **Int** |  | [optional] 

### Return type

[**AdminIdentitiesLegacySamlReportResponse**](AdminIdentitiesLegacySamlReportResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminIdentitiesLink**
```swift
    open class func adminIdentitiesLink(orgId: String, userId: String, adminIdentitiesLinkRequest: AdminIdentitiesLinkRequest, completion: @escaping (_ data: AdminAgentsGetResponse?, _ error: Error?) -> Void)
```

Link a SAML, OpenID Connect or LDAP identity to a user

Sets (or replaces) the user's SAML binding (`idp_id` + `name_id`), enterprise OpenID Connect binding (`idp_id` + `subject`: the value of the connection's user identifier claim; a person can sign in through such a connection only after this link exists) or LDAP binding (`ldap_config_id` + `dn`; omit `dn` to look the entry up in the directory by the user's email / username). Refused with 409 when another user already holds that identity, or when the user is linked to a different federated source (unlink it first). Revokes the user's sessions and tokens, notifies the user and is audited as identity.link.created. Signed-in admins must have passed MFA in the last 10 minutes (send X-MFA-Challenge with an approved step-up challenge when calling with a user token).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 
let adminIdentitiesLinkRequest = AdminIdentitiesLinkRequest(type: "type_example", idpId: 123, subject: "subject_example", nameId: "nameId_example", ldapConfigId: 123, dn: "dn_example", ldapOnly: false) // AdminIdentitiesLinkRequest | 

// Link a SAML, OpenID Connect or LDAP identity to a user
AdminUsersAPI.adminIdentitiesLink(orgId: orgId, userId: userId, adminIdentitiesLinkRequest: adminIdentitiesLinkRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 
 **adminIdentitiesLinkRequest** | [**AdminIdentitiesLinkRequest**](AdminIdentitiesLinkRequest.md) |  | 

### Return type

[**AdminAgentsGetResponse**](AdminAgentsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminIdentitiesList**
```swift
    open class func adminIdentitiesList(orgId: String, userId: String, completion: @escaping (_ data: AdminIdentitiesListResponse?, _ error: Error?) -> Void)
```

List a user's federated identity links

SAML (IdP + NameID), enterprise OpenID Connect (connection + subject), LDAP (directory + DN) and social provider links. A SAML link with `legacy: true` stores a bare NameID and is refused at sign-in while the organization has more than one SAML IdP. An OpenID Connect link with `hashed: true` stores a long subject as a hash, so `subject` is null.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// List a user's federated identity links
AdminUsersAPI.adminIdentitiesList(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**AdminIdentitiesListResponse**](AdminIdentitiesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminIdentitiesUnlink**
```swift
    open class func adminIdentitiesUnlink(type: ModelType_adminIdentitiesUnlink, orgId: String, userId: String, completion: @escaping (_ data: AdminAgentsGetResponse?, _ error: Error?) -> Void)
```

Unlink a user's SAML, OpenID Connect, LDAP or social identity

Removes the binding of the given type (`saml`, `oidc`, `ldap` or `social`). Revokes the user's sessions and tokens, notifies the user and is audited as identity.link.removed. Unlinking LDAP also clears LDAP-only. Same step-up rule as linking.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let type = "type_example" // String | 
let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Unlink a user's SAML, OpenID Connect, LDAP or social identity
AdminUsersAPI.adminIdentitiesUnlink(type: type, orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String** |  | 
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**AdminAgentsGetResponse**](AdminAgentsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminUsersRestore**
```swift
    open class func adminUsersRestore(orgId: String, userId: String, completion: @escaping (_ data: AdminUsersRestoreResponse?, _ error: Error?) -> Void)
```

Restore a deleted user

Restores a user that inbound SCIM soft-deleted (list them with GET /users?deleted=true). The account keeps the roles, groups and permissions that it still holds, and its active and blocked state. Its sessions and tokens stay revoked: the user signs in again. An erased user cannot be restored.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Restore a deleted user
AdminUsersAPI.adminUsersRestore(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**AdminUsersRestoreResponse**](AdminUsersRestoreResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blockUser**
```swift
    open class func blockUser(orgId: String, userId: String, completion: @escaping (_ data: BlockUserResponse?, _ error: Error?) -> Void)
```

Block a user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Block a user
AdminUsersAPI.blockUser(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**BlockUserResponse**](BlockUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUser**
```swift
    open class func createUser(orgId: String, completion: @escaping (_ data: CreateUserResponse?, _ error: Error?) -> Void)
```

Create a user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Create a user
AdminUsersAPI.createUser(orgId: orgId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 

### Return type

[**CreateUserResponse**](CreateUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
```swift
    open class func deleteUser(orgId: String, userId: String, completion: @escaping (_ data: DeleteUserResponse?, _ error: Error?) -> Void)
```

Delete a user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Delete a user
AdminUsersAPI.deleteUser(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**DeleteUserResponse**](DeleteUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
```swift
    open class func getUser(orgId: String, userId: String, completion: @escaping (_ data: GetUserResponse?, _ error: Error?) -> Void)
```

Get a user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Get a user
AdminUsersAPI.getUser(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**GetUserResponse**](GetUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserGroups**
```swift
    open class func listUserGroups(orgId: String, userId: String, completion: @escaping (_ data: AdminGroupsGroupsGetRolesResponse?, _ error: Error?) -> Void)
```

List a user's groups

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// List a user's groups
AdminUsersAPI.listUserGroups(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**AdminGroupsGroupsGetRolesResponse**](AdminGroupsGroupsGetRolesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserPermissions**
```swift
    open class func listUserPermissions(orgId: String, userId: String, completion: @escaping (_ data: AdminRolesGetPermissionsResponse?, _ error: Error?) -> Void)
```

List a user's direct permissions

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// List a user's direct permissions
AdminUsersAPI.listUserPermissions(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**AdminRolesGetPermissionsResponse**](AdminRolesGetPermissionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserRoles**
```swift
    open class func listUserRoles(orgId: String, userId: String, completion: @escaping (_ data: AdminGroupsGroupsGetRolesResponse?, _ error: Error?) -> Void)
```

List a user's roles

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// List a user's roles
AdminUsersAPI.listUserRoles(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**AdminGroupsGroupsGetRolesResponse**](AdminGroupsGroupsGetRolesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUsers**
```swift
    open class func listUsers(orgId: String, page: Int? = nil, limit: Int? = nil, search: String? = nil, active: Bool? = nil, blocked: Bool? = nil, deleted: Bool? = nil, emailVerified: Bool? = nil, mfaEnabled: Bool? = nil, role: String? = nil, group: String? = nil, sortBy: SortBy_listUsers? = nil, sortDir: SortDir_listUsers? = nil, completion: @escaping (_ data: ListUsersResponse?, _ error: Error?) -> Void)
```

List users

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let page = 987 // Int | Page number. (optional) (default to 1)
let limit = 987 // Int | Users per page (1 to 100). (optional) (default to 25)
let search = "search_example" // String | Users whose email address, name or username contains this text (case-sensitive; the first 100 characters are used). (optional)
let active = true // Bool | Only active (`true`) or inactive (`false`) users. (optional)
let blocked = true // Bool | Only blocked (`true`) or not blocked (`false`) users. (optional)
let deleted = true // Bool | `true` lists only the users that SCIM deleted (soft-deleted). Without it, or with `false`, the list leaves them out. (optional) (default to false)
let emailVerified = true // Bool | Only users whose email address is verified (`true`) or not (`false`). (optional)
let mfaEnabled = true // Bool | Only users with (`true`) or without (`false`) multi-factor authentication. (optional)
let role = "role_example" // String | Only users who hold the role with this slug. (optional)
let group = "group_example" // String | Only members of the group with this slug. (optional)
let sortBy = "sortBy_example" // String | Sort field. Without it the list is sorted by createdAt, newest first. Another value sorts by createdAt. (optional)
let sortDir = "sortDir_example" // String | Sort direction. Used only together with sortBy. (optional) (default to .desc)

// List users
AdminUsersAPI.listUsers(orgId: orgId, page: page, limit: limit, search: search, active: active, blocked: blocked, deleted: deleted, emailVerified: emailVerified, mfaEnabled: mfaEnabled, role: role, group: group, sortBy: sortBy, sortDir: sortDir) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **page** | **Int** | Page number. | [optional] [default to 1]
 **limit** | **Int** | Users per page (1 to 100). | [optional] [default to 25]
 **search** | **String** | Users whose email address, name or username contains this text (case-sensitive; the first 100 characters are used). | [optional] 
 **active** | **Bool** | Only active (&#x60;true&#x60;) or inactive (&#x60;false&#x60;) users. | [optional] 
 **blocked** | **Bool** | Only blocked (&#x60;true&#x60;) or not blocked (&#x60;false&#x60;) users. | [optional] 
 **deleted** | **Bool** | &#x60;true&#x60; lists only the users that SCIM deleted (soft-deleted). Without it, or with &#x60;false&#x60;, the list leaves them out. | [optional] [default to false]
 **emailVerified** | **Bool** | Only users whose email address is verified (&#x60;true&#x60;) or not (&#x60;false&#x60;). | [optional] 
 **mfaEnabled** | **Bool** | Only users with (&#x60;true&#x60;) or without (&#x60;false&#x60;) multi-factor authentication. | [optional] 
 **role** | **String** | Only users who hold the role with this slug. | [optional] 
 **group** | **String** | Only members of the group with this slug. | [optional] 
 **sortBy** | **String** | Sort field. Without it the list is sorted by createdAt, newest first. Another value sorts by createdAt. | [optional] 
 **sortDir** | **String** | Sort direction. Used only together with sortBy. | [optional] [default to .desc]

### Return type

[**ListUsersResponse**](ListUsersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markUserVerified**
```swift
    open class func markUserVerified(orgId: String, userId: String, completion: @escaping (_ data: MarkUserVerifiedResponse?, _ error: Error?) -> Void)
```

Mark a user's email as verified

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Mark a user's email as verified
AdminUsersAPI.markUserVerified(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**MarkUserVerifiedResponse**](MarkUserVerifiedResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUser**
```swift
    open class func patchUser(orgId: String, userId: String, completion: @escaping (_ data: UpdateUserResponse?, _ error: Error?) -> Void)
```

Update a user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Update a user
AdminUsersAPI.patchUser(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**UpdateUserResponse**](UpdateUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserGroup**
```swift
    open class func removeUserGroup(orgId: String, userId: String, groupId: String, completion: @escaping (_ data: RemoveUserGroupResponse?, _ error: Error?) -> Void)
```

Remove a user from a group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 
let groupId = "groupId_example" // String | 

// Remove a user from a group
AdminUsersAPI.removeUserGroup(orgId: orgId, userId: userId, groupId: groupId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 
 **groupId** | **String** |  | 

### Return type

[**RemoveUserGroupResponse**](RemoveUserGroupResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserPermission**
```swift
    open class func removeUserPermission(orgId: String, userId: String, permissionId: String, completion: @escaping (_ data: RemoveUserPermissionResponse?, _ error: Error?) -> Void)
```

Remove a permission from a user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 
let permissionId = "permissionId_example" // String | 

// Remove a permission from a user
AdminUsersAPI.removeUserPermission(orgId: orgId, userId: userId, permissionId: permissionId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 
 **permissionId** | **String** |  | 

### Return type

[**RemoveUserPermissionResponse**](RemoveUserPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserRole**
```swift
    open class func removeUserRole(orgId: String, userId: String, roleId: String, completion: @escaping (_ data: RemoveUserRoleResponse?, _ error: Error?) -> Void)
```

Remove a role from a user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 
let roleId = "roleId_example" // String | 

// Remove a role from a user
AdminUsersAPI.removeUserRole(orgId: orgId, userId: userId, roleId: roleId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 
 **roleId** | **String** |  | 

### Return type

[**RemoveUserRoleResponse**](RemoveUserRoleResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetUserMfa**
```swift
    open class func resetUserMfa(orgId: String, userId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Reset MFA (removed)

Removed: admins cannot disable a user's MFA. Issue a temporary access code with POST /users/{userId}/temporary-access-code instead, or remove a single lost authenticator with DELETE /users/{userId}/authenticators/{authenticatorId}.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Reset MFA (removed)
AdminUsersAPI.resetUserMfa(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendUserVerificationEmail**
```swift
    open class func sendUserVerificationEmail(orgId: String, userId: String, completion: @escaping (_ data: SendUserVerificationEmailResponse?, _ error: Error?) -> Void)
```

Send a verification email

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Send a verification email
AdminUsersAPI.sendUserVerificationEmail(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**SendUserVerificationEmailResponse**](SendUserVerificationEmailResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setUserPassword**
```swift
    open class func setUserPassword(orgId: String, userId: String, completion: @escaping (_ data: SetUserPasswordPostResponse?, _ error: Error?) -> Void)
```

Set a user's password

Needs `users.edit`, and the caller must hold every permission of the user. A signed-in administrator must have signed in or passed MFA within the last 10 minutes: a Bearer token needs a fresh `auth_time` (otherwise 401 `insufficient_user_authentication`), and an administrator who holds a second factor sends `X-MFA-Challenge` with an approved step_up challenge (otherwise 403 `step_up_required`). Organization API keys are not subject to this check.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Set a user's password
AdminUsersAPI.setUserPassword(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**SetUserPasswordPostResponse**](SetUserPasswordPostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setUserPasswordPost**
```swift
    open class func setUserPasswordPost(orgId: String, userId: String, completion: @escaping (_ data: SetUserPasswordPostResponse?, _ error: Error?) -> Void)
```

Set a user's password

Needs `users.edit`, and the caller must hold every permission of the user. A signed-in administrator must have signed in or passed MFA within the last 10 minutes: a Bearer token needs a fresh `auth_time` (otherwise 401 `insufficient_user_authentication`), and an administrator who holds a second factor sends `X-MFA-Challenge` with an approved step_up challenge (otherwise 403 `step_up_required`). Organization API keys are not subject to this check.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Set a user's password
AdminUsersAPI.setUserPasswordPost(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**SetUserPasswordPostResponse**](SetUserPasswordPostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **triggerUserPasswordReset**
```swift
    open class func triggerUserPasswordReset(orgId: String, userId: String, completion: @escaping (_ data: TriggerUserPasswordResetResponse?, _ error: Error?) -> Void)
```

Send a password reset email

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Send a password reset email
AdminUsersAPI.triggerUserPasswordReset(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**TriggerUserPasswordResetResponse**](TriggerUserPasswordResetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unblockUser**
```swift
    open class func unblockUser(orgId: String, userId: String, completion: @escaping (_ data: UnblockUserResponse?, _ error: Error?) -> Void)
```

Unblock a user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Unblock a user
AdminUsersAPI.unblockUser(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**UnblockUserResponse**](UnblockUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
```swift
    open class func updateUser(orgId: String, userId: String, completion: @escaping (_ data: UpdateUserResponse?, _ error: Error?) -> Void)
```

Update a user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Update a user
AdminUsersAPI.updateUser(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**UpdateUserResponse**](UpdateUserResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserGroups**
```swift
    open class func updateUserGroups(orgId: String, userId: String, completion: @escaping (_ data: UpdateUserGroupsResponse?, _ error: Error?) -> Void)
```

Replace a user's groups

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Replace a user's groups
AdminUsersAPI.updateUserGroups(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**UpdateUserGroupsResponse**](UpdateUserGroupsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserRoles**
```swift
    open class func updateUserRoles(orgId: String, userId: String, completion: @escaping (_ data: UpdateUserRolesResponse?, _ error: Error?) -> Void)
```

Replace a user's roles

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Replace a user's roles
AdminUsersAPI.updateUserRoles(orgId: orgId, userId: userId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orgId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**UpdateUserRolesResponse**](UpdateUserRolesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

