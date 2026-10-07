# AdminGroupsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminGroupsAddMembers**](AdminGroupsAPI.md#admingroupsaddmembers) | **POST** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members | Add member(s) to group
[**adminGroupsAddRole**](AdminGroupsAPI.md#admingroupsaddrole) | **POST** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Add a single role to a group
[**adminGroupsCreate**](AdminGroupsAPI.md#admingroupscreate) | **POST** /orgs/{orgId}/api/v1/admin/groups | Create a new group
[**adminGroupsDelete**](AdminGroupsAPI.md#admingroupsdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Delete a group
[**adminGroupsGet**](AdminGroupsAPI.md#admingroupsget) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Get a single group by ID or slug
[**adminGroupsGetMembers**](AdminGroupsAPI.md#admingroupsgetmembers) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members | Get group members
[**adminGroupsGroupsGetRoles**](AdminGroupsAPI.md#admingroupsgroupsgetroles) | **GET** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Get group roles
[**adminGroupsList**](AdminGroupsAPI.md#admingroupslist) | **GET** /orgs/{orgId}/api/v1/admin/groups | List all groups in the tenant
[**adminGroupsRemoveMember**](AdminGroupsAPI.md#admingroupsremovemember) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId}/members/{userId} | Remove member from group
[**adminGroupsRemoveRole**](AdminGroupsAPI.md#admingroupsremoverole) | **DELETE** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles/{roleId} | Remove a role from a group
[**adminGroupsUpdateRoles**](AdminGroupsAPI.md#admingroupsupdateroles) | **PUT** /orgs/{orgId}/api/v1/admin/groups/{groupId}/roles | Update group roles (replaces all existing roles)
[**patchAdminGroupsUpdate**](AdminGroupsAPI.md#patchadmingroupsupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Update an existing group
[**putAdminGroupsUpdate**](AdminGroupsAPI.md#putadmingroupsupdate) | **PUT** /orgs/{orgId}/api/v1/admin/groups/{groupId} | Update an existing group


# **adminGroupsAddMembers**
```swift
    open class func adminGroupsAddMembers(orgId: String, groupId: String, completion: @escaping (_ data: AdminGroupsCreateResponse?, _ error: Error?) -> Void)
```

Add member(s) to group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let groupId = "groupId_example" // String | 

// Add member(s) to group
AdminGroupsAPI.adminGroupsAddMembers(orgId: orgId, groupId: groupId) { (response, error) in
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
 **groupId** | **String** |  | 

### Return type

[**AdminGroupsCreateResponse**](AdminGroupsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsAddRole**
```swift
    open class func adminGroupsAddRole(orgId: String, groupId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Add a single role to a group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let groupId = "groupId_example" // String | 

// Add a single role to a group
AdminGroupsAPI.adminGroupsAddRole(orgId: orgId, groupId: groupId) { (response, error) in
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
 **groupId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsCreate**
```swift
    open class func adminGroupsCreate(orgId: String, completion: @escaping (_ data: AdminGroupsCreateResponse?, _ error: Error?) -> Void)
```

Create a new group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Create a new group
AdminGroupsAPI.adminGroupsCreate(orgId: orgId) { (response, error) in
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

[**AdminGroupsCreateResponse**](AdminGroupsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsDelete**
```swift
    open class func adminGroupsDelete(orgId: String, groupId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete a group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let groupId = "groupId_example" // String | 

// Delete a group
AdminGroupsAPI.adminGroupsDelete(orgId: orgId, groupId: groupId) { (response, error) in
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
 **groupId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsGet**
```swift
    open class func adminGroupsGet(orgId: String, groupId: String, completion: @escaping (_ data: AdminGroupsGetResponse?, _ error: Error?) -> Void)
```

Get a single group by ID or slug

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let groupId = "groupId_example" // String | 

// Get a single group by ID or slug
AdminGroupsAPI.adminGroupsGet(orgId: orgId, groupId: groupId) { (response, error) in
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
 **groupId** | **String** |  | 

### Return type

[**AdminGroupsGetResponse**](AdminGroupsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsGetMembers**
```swift
    open class func adminGroupsGetMembers(orgId: String, groupId: String, completion: @escaping (_ data: AdminGroupsGetMembersResponse?, _ error: Error?) -> Void)
```

Get group members

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let groupId = "groupId_example" // String | 

// Get group members
AdminGroupsAPI.adminGroupsGetMembers(orgId: orgId, groupId: groupId) { (response, error) in
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
 **groupId** | **String** |  | 

### Return type

[**AdminGroupsGetMembersResponse**](AdminGroupsGetMembersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsGroupsGetRoles**
```swift
    open class func adminGroupsGroupsGetRoles(orgId: String, groupId: String, completion: @escaping (_ data: AdminGroupsGroupsGetRolesResponse?, _ error: Error?) -> Void)
```

Get group roles

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let groupId = "groupId_example" // String | 

// Get group roles
AdminGroupsAPI.adminGroupsGroupsGetRoles(orgId: orgId, groupId: groupId) { (response, error) in
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
 **groupId** | **String** |  | 

### Return type

[**AdminGroupsGroupsGetRolesResponse**](AdminGroupsGroupsGetRolesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsList**
```swift
    open class func adminGroupsList(orgId: String, completion: @escaping (_ data: AdminGroupsListResponse?, _ error: Error?) -> Void)
```

List all groups in the tenant

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List all groups in the tenant
AdminGroupsAPI.adminGroupsList(orgId: orgId) { (response, error) in
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

[**AdminGroupsListResponse**](AdminGroupsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsRemoveMember**
```swift
    open class func adminGroupsRemoveMember(orgId: String, groupId: String, userId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Remove member from group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let groupId = "groupId_example" // String | 
let userId = "userId_example" // String | 

// Remove member from group
AdminGroupsAPI.adminGroupsRemoveMember(orgId: orgId, groupId: groupId, userId: userId) { (response, error) in
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
 **groupId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsRemoveRole**
```swift
    open class func adminGroupsRemoveRole(orgId: String, groupId: String, roleId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Remove a role from a group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let groupId = "groupId_example" // String | 
let roleId = "roleId_example" // String | 

// Remove a role from a group
AdminGroupsAPI.adminGroupsRemoveRole(orgId: orgId, groupId: groupId, roleId: roleId) { (response, error) in
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
 **groupId** | **String** |  | 
 **roleId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminGroupsUpdateRoles**
```swift
    open class func adminGroupsUpdateRoles(orgId: String, groupId: String, completion: @escaping (_ data: AdminGroupsCreateResponse?, _ error: Error?) -> Void)
```

Update group roles (replaces all existing roles)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let groupId = "groupId_example" // String | 

// Update group roles (replaces all existing roles)
AdminGroupsAPI.adminGroupsUpdateRoles(orgId: orgId, groupId: groupId) { (response, error) in
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
 **groupId** | **String** |  | 

### Return type

[**AdminGroupsCreateResponse**](AdminGroupsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminGroupsUpdate**
```swift
    open class func patchAdminGroupsUpdate(orgId: String, groupId: String, completion: @escaping (_ data: AdminGroupsCreateResponse?, _ error: Error?) -> Void)
```

Update an existing group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let groupId = "groupId_example" // String | 

// Update an existing group
AdminGroupsAPI.patchAdminGroupsUpdate(orgId: orgId, groupId: groupId) { (response, error) in
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
 **groupId** | **String** |  | 

### Return type

[**AdminGroupsCreateResponse**](AdminGroupsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminGroupsUpdate**
```swift
    open class func putAdminGroupsUpdate(orgId: String, groupId: String, completion: @escaping (_ data: AdminGroupsCreateResponse?, _ error: Error?) -> Void)
```

Update an existing group

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let groupId = "groupId_example" // String | 

// Update an existing group
AdminGroupsAPI.putAdminGroupsUpdate(orgId: orgId, groupId: groupId) { (response, error) in
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
 **groupId** | **String** |  | 

### Return type

[**AdminGroupsCreateResponse**](AdminGroupsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

