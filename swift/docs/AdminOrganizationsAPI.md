# AdminOrganizationsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminOrgInvitationsCreate**](AdminOrganizationsAPI.md#adminorginvitationscreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | Invite a user to an organization
[**adminOrgInvitationsList**](AdminOrganizationsAPI.md#adminorginvitationslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations | List organization invitations
[**adminOrgInvitationsResend**](AdminOrganizationsAPI.md#adminorginvitationsresend) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId}/resend | Resend an invitation
[**adminOrgInvitationsRevoke**](AdminOrganizationsAPI.md#adminorginvitationsrevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/invitations/{invId} | Revoke an invitation
[**adminOrgMembersAdd**](AdminOrganizationsAPI.md#adminorgmembersadd) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | Add a member to an organization
[**adminOrgMembersList**](AdminOrganizationsAPI.md#adminorgmemberslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members | List organization members
[**adminOrgMembersRemove**](AdminOrganizationsAPI.md#adminorgmembersremove) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Remove a member from an organization
[**adminOrgRolesCreate**](AdminOrganizationsAPI.md#adminorgrolescreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | Create an organization role
[**adminOrgRolesDelete**](AdminOrganizationsAPI.md#adminorgrolesdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Delete an organization role
[**adminOrgRolesList**](AdminOrganizationsAPI.md#adminorgroleslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles | List organization roles
[**adminOrganizationsCreate**](AdminOrganizationsAPI.md#adminorganizationscreate) | **POST** /orgs/{orgId}/api/v1/admin/organizations | Create an organization
[**adminOrganizationsDelete**](AdminOrganizationsAPI.md#adminorganizationsdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Delete an organization
[**adminOrganizationsGet**](AdminOrganizationsAPI.md#adminorganizationsget) | **GET** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Get an organization
[**adminOrganizationsList**](AdminOrganizationsAPI.md#adminorganizationslist) | **GET** /orgs/{orgId}/api/v1/admin/organizations | List organizations
[**patchAdminOrgMembersUpdate**](AdminOrganizationsAPI.md#patchadminorgmembersupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Update a member&#39;s role or status
[**patchAdminOrgRolesUpdate**](AdminOrganizationsAPI.md#patchadminorgrolesupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Update an organization role
[**patchAdminOrganizationsUpdate**](AdminOrganizationsAPI.md#patchadminorganizationsupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Update an organization
[**putAdminOrgMembersUpdate**](AdminOrganizationsAPI.md#putadminorgmembersupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/members/{userId} | Update a member&#39;s role or status
[**putAdminOrgRolesUpdate**](AdminOrganizationsAPI.md#putadminorgrolesupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId}/roles/{roleId} | Update an organization role
[**putAdminOrganizationsUpdate**](AdminOrganizationsAPI.md#putadminorganizationsupdate) | **PUT** /orgs/{orgId}/api/v1/admin/organizations/{organizationId} | Update an organization


# **adminOrgInvitationsCreate**
```swift
    open class func adminOrgInvitationsCreate(orgId: String, organizationId: String, completion: @escaping (_ data: AdminOrgInvitationsCreateResponse?, _ error: Error?) -> Void)
```

Invite a user to an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let organizationId = "organizationId_example" // String | 

// Invite a user to an organization
AdminOrganizationsAPI.adminOrgInvitationsCreate(orgId: orgId, organizationId: organizationId) { (response, error) in
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
 **organizationId** | **String** |  | 

### Return type

[**AdminOrgInvitationsCreateResponse**](AdminOrgInvitationsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrgInvitationsList**
```swift
    open class func adminOrgInvitationsList(orgId: String, organizationId: String, completion: @escaping (_ data: AdminOrgInvitationsListResponse?, _ error: Error?) -> Void)
```

List organization invitations

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let organizationId = "organizationId_example" // String | 

// List organization invitations
AdminOrganizationsAPI.adminOrgInvitationsList(orgId: orgId, organizationId: organizationId) { (response, error) in
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
 **organizationId** | **String** |  | 

### Return type

[**AdminOrgInvitationsListResponse**](AdminOrgInvitationsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrgInvitationsResend**
```swift
    open class func adminOrgInvitationsResend(orgId: String, organizationId: String, invId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Resend an invitation

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let organizationId = "organizationId_example" // String | 
let invId = "invId_example" // String | 

// Resend an invitation
AdminOrganizationsAPI.adminOrgInvitationsResend(orgId: orgId, organizationId: organizationId, invId: invId) { (response, error) in
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
 **organizationId** | **String** |  | 
 **invId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrgInvitationsRevoke**
```swift
    open class func adminOrgInvitationsRevoke(orgId: String, organizationId: String, invId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Revoke an invitation

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let organizationId = "organizationId_example" // String | 
let invId = "invId_example" // String | 

// Revoke an invitation
AdminOrganizationsAPI.adminOrgInvitationsRevoke(orgId: orgId, organizationId: organizationId, invId: invId) { (response, error) in
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
 **organizationId** | **String** |  | 
 **invId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrgMembersAdd**
```swift
    open class func adminOrgMembersAdd(orgId: String, organizationId: String, completion: @escaping (_ data: AdminOrgMembersAddResponse?, _ error: Error?) -> Void)
```

Add a member to an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let organizationId = "organizationId_example" // String | 

// Add a member to an organization
AdminOrganizationsAPI.adminOrgMembersAdd(orgId: orgId, organizationId: organizationId) { (response, error) in
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
 **organizationId** | **String** |  | 

### Return type

[**AdminOrgMembersAddResponse**](AdminOrgMembersAddResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrgMembersList**
```swift
    open class func adminOrgMembersList(orgId: String, organizationId: String, completion: @escaping (_ data: AdminOrgMembersListResponse?, _ error: Error?) -> Void)
```

List organization members

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let organizationId = "organizationId_example" // String | 

// List organization members
AdminOrganizationsAPI.adminOrgMembersList(orgId: orgId, organizationId: organizationId) { (response, error) in
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
 **organizationId** | **String** |  | 

### Return type

[**AdminOrgMembersListResponse**](AdminOrgMembersListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrgMembersRemove**
```swift
    open class func adminOrgMembersRemove(orgId: String, organizationId: String, userId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Remove a member from an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let organizationId = "organizationId_example" // String | 
let userId = "userId_example" // String | 

// Remove a member from an organization
AdminOrganizationsAPI.adminOrgMembersRemove(orgId: orgId, organizationId: organizationId, userId: userId) { (response, error) in
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
 **organizationId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrgRolesCreate**
```swift
    open class func adminOrgRolesCreate(orgId: String, organizationId: String, completion: @escaping (_ data: AdminOrgRolesCreateResponse?, _ error: Error?) -> Void)
```

Create an organization role

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let organizationId = "organizationId_example" // String | 

// Create an organization role
AdminOrganizationsAPI.adminOrgRolesCreate(orgId: orgId, organizationId: organizationId) { (response, error) in
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
 **organizationId** | **String** |  | 

### Return type

[**AdminOrgRolesCreateResponse**](AdminOrgRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrgRolesDelete**
```swift
    open class func adminOrgRolesDelete(orgId: String, organizationId: String, roleId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete an organization role

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let organizationId = "organizationId_example" // String | 
let roleId = "roleId_example" // String | 

// Delete an organization role
AdminOrganizationsAPI.adminOrgRolesDelete(orgId: orgId, organizationId: organizationId, roleId: roleId) { (response, error) in
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
 **organizationId** | **String** |  | 
 **roleId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrgRolesList**
```swift
    open class func adminOrgRolesList(orgId: String, organizationId: String, completion: @escaping (_ data: AdminOrgRolesListResponse?, _ error: Error?) -> Void)
```

List organization roles

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let organizationId = "organizationId_example" // String | 

// List organization roles
AdminOrganizationsAPI.adminOrgRolesList(orgId: orgId, organizationId: organizationId) { (response, error) in
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
 **organizationId** | **String** |  | 

### Return type

[**AdminOrgRolesListResponse**](AdminOrgRolesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrganizationsCreate**
```swift
    open class func adminOrganizationsCreate(orgId: String, completion: @escaping (_ data: AdminOrganizationsCreateResponse?, _ error: Error?) -> Void)
```

Create an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Create an organization
AdminOrganizationsAPI.adminOrganizationsCreate(orgId: orgId) { (response, error) in
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

[**AdminOrganizationsCreateResponse**](AdminOrganizationsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrganizationsDelete**
```swift
    open class func adminOrganizationsDelete(orgId: String, organizationId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let organizationId = "organizationId_example" // String | 

// Delete an organization
AdminOrganizationsAPI.adminOrganizationsDelete(orgId: orgId, organizationId: organizationId) { (response, error) in
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
 **organizationId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrganizationsGet**
```swift
    open class func adminOrganizationsGet(orgId: String, organizationId: String, completion: @escaping (_ data: AdminOrganizationsGetResponse?, _ error: Error?) -> Void)
```

Get an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let organizationId = "organizationId_example" // String | 

// Get an organization
AdminOrganizationsAPI.adminOrganizationsGet(orgId: orgId, organizationId: organizationId) { (response, error) in
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
 **organizationId** | **String** |  | 

### Return type

[**AdminOrganizationsGetResponse**](AdminOrganizationsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminOrganizationsList**
```swift
    open class func adminOrganizationsList(orgId: String, completion: @escaping (_ data: AdminOrganizationsListResponse?, _ error: Error?) -> Void)
```

List organizations

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List organizations
AdminOrganizationsAPI.adminOrganizationsList(orgId: orgId) { (response, error) in
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

[**AdminOrganizationsListResponse**](AdminOrganizationsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminOrgMembersUpdate**
```swift
    open class func patchAdminOrgMembersUpdate(orgId: String, organizationId: String, userId: String, completion: @escaping (_ data: PutAdminOrgMembersUpdateResponse?, _ error: Error?) -> Void)
```

Update a member's role or status

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let organizationId = "organizationId_example" // String | 
let userId = "userId_example" // String | 

// Update a member's role or status
AdminOrganizationsAPI.patchAdminOrgMembersUpdate(orgId: orgId, organizationId: organizationId, userId: userId) { (response, error) in
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
 **organizationId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**PutAdminOrgMembersUpdateResponse**](PutAdminOrgMembersUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminOrgRolesUpdate**
```swift
    open class func patchAdminOrgRolesUpdate(orgId: String, organizationId: String, roleId: String, completion: @escaping (_ data: AdminOrgRolesCreateResponse?, _ error: Error?) -> Void)
```

Update an organization role

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let organizationId = "organizationId_example" // String | 
let roleId = "roleId_example" // String | 

// Update an organization role
AdminOrganizationsAPI.patchAdminOrgRolesUpdate(orgId: orgId, organizationId: organizationId, roleId: roleId) { (response, error) in
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
 **organizationId** | **String** |  | 
 **roleId** | **String** |  | 

### Return type

[**AdminOrgRolesCreateResponse**](AdminOrgRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminOrganizationsUpdate**
```swift
    open class func patchAdminOrganizationsUpdate(orgId: String, organizationId: String, completion: @escaping (_ data: AdminOrganizationsGetResponse?, _ error: Error?) -> Void)
```

Update an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let organizationId = "organizationId_example" // String | 

// Update an organization
AdminOrganizationsAPI.patchAdminOrganizationsUpdate(orgId: orgId, organizationId: organizationId) { (response, error) in
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
 **organizationId** | **String** |  | 

### Return type

[**AdminOrganizationsGetResponse**](AdminOrganizationsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminOrgMembersUpdate**
```swift
    open class func putAdminOrgMembersUpdate(orgId: String, organizationId: String, userId: String, completion: @escaping (_ data: PutAdminOrgMembersUpdateResponse?, _ error: Error?) -> Void)
```

Update a member's role or status

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let organizationId = "organizationId_example" // String | 
let userId = "userId_example" // String | 

// Update a member's role or status
AdminOrganizationsAPI.putAdminOrgMembersUpdate(orgId: orgId, organizationId: organizationId, userId: userId) { (response, error) in
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
 **organizationId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**PutAdminOrgMembersUpdateResponse**](PutAdminOrgMembersUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminOrgRolesUpdate**
```swift
    open class func putAdminOrgRolesUpdate(orgId: String, organizationId: String, roleId: String, completion: @escaping (_ data: AdminOrgRolesCreateResponse?, _ error: Error?) -> Void)
```

Update an organization role

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let organizationId = "organizationId_example" // String | 
let roleId = "roleId_example" // String | 

// Update an organization role
AdminOrganizationsAPI.putAdminOrgRolesUpdate(orgId: orgId, organizationId: organizationId, roleId: roleId) { (response, error) in
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
 **organizationId** | **String** |  | 
 **roleId** | **String** |  | 

### Return type

[**AdminOrgRolesCreateResponse**](AdminOrgRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminOrganizationsUpdate**
```swift
    open class func putAdminOrganizationsUpdate(orgId: String, organizationId: String, completion: @escaping (_ data: AdminOrganizationsGetResponse?, _ error: Error?) -> Void)
```

Update an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let organizationId = "organizationId_example" // String | 

// Update an organization
AdminOrganizationsAPI.putAdminOrganizationsUpdate(orgId: orgId, organizationId: organizationId) { (response, error) in
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
 **organizationId** | **String** |  | 

### Return type

[**AdminOrganizationsGetResponse**](AdminOrganizationsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

