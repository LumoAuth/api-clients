# AdminRolesAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminRolesAddPermissions**](AdminRolesAPI.md#adminrolesaddpermissions) | **POST** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Add permission(s) to a role
[**adminRolesAddUser**](AdminRolesAPI.md#adminrolesadduser) | **POST** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users | Assign a user to a role
[**adminRolesCreate**](AdminRolesAPI.md#adminrolescreate) | **POST** /orgs/{orgId}/api/v1/admin/roles | Create a new role
[**adminRolesDelete**](AdminRolesAPI.md#adminrolesdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Delete a role
[**adminRolesGet**](AdminRolesAPI.md#adminrolesget) | **GET** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Get a single role by ID or slug
[**adminRolesGetPermissions**](AdminRolesAPI.md#adminrolesgetpermissions) | **GET** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Get role permissions
[**adminRolesGetUsers**](AdminRolesAPI.md#adminrolesgetusers) | **GET** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users | Get users assigned to a role
[**adminRolesList**](AdminRolesAPI.md#adminroleslist) | **GET** /orgs/{orgId}/api/v1/admin/roles | List all roles in the tenant
[**adminRolesRemovePermission**](AdminRolesAPI.md#adminrolesremovepermission) | **DELETE** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions/{permissionId} | Remove a permission from a role
[**adminRolesRemoveUser**](AdminRolesAPI.md#adminrolesremoveuser) | **DELETE** /orgs/{orgId}/api/v1/admin/roles/{roleId}/users/{userId} | Remove a user from a role
[**adminRolesUpdatePermissions**](AdminRolesAPI.md#adminrolesupdatepermissions) | **PUT** /orgs/{orgId}/api/v1/admin/roles/{roleId}/permissions | Update role permissions (replaces all)
[**patchAdminRolesUpdate**](AdminRolesAPI.md#patchadminrolesupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Update an existing role
[**putAdminRolesUpdate**](AdminRolesAPI.md#putadminrolesupdate) | **PUT** /orgs/{orgId}/api/v1/admin/roles/{roleId} | Update an existing role


# **adminRolesAddPermissions**
```swift
    open class func adminRolesAddPermissions(orgId: String, roleId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Add permission(s) to a role

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let roleId = "roleId_example" // String | 

// Add permission(s) to a role
AdminRolesAPI.adminRolesAddPermissions(orgId: orgId, roleId: roleId) { (response, error) in
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
 **roleId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminRolesAddUser**
```swift
    open class func adminRolesAddUser(orgId: String, roleId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Assign a user to a role

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let roleId = "roleId_example" // String | 

// Assign a user to a role
AdminRolesAPI.adminRolesAddUser(orgId: orgId, roleId: roleId) { (response, error) in
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
 **roleId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminRolesCreate**
```swift
    open class func adminRolesCreate(orgId: String, completion: @escaping (_ data: AdminRolesCreateResponse?, _ error: Error?) -> Void)
```

Create a new role

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Create a new role
AdminRolesAPI.adminRolesCreate(orgId: orgId) { (response, error) in
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

[**AdminRolesCreateResponse**](AdminRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminRolesDelete**
```swift
    open class func adminRolesDelete(orgId: String, roleId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete a role

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let roleId = "roleId_example" // String | 

// Delete a role
AdminRolesAPI.adminRolesDelete(orgId: orgId, roleId: roleId) { (response, error) in
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
 **roleId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminRolesGet**
```swift
    open class func adminRolesGet(orgId: String, roleId: String, completion: @escaping (_ data: AdminRolesGetResponse?, _ error: Error?) -> Void)
```

Get a single role by ID or slug

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let roleId = "roleId_example" // String | 

// Get a single role by ID or slug
AdminRolesAPI.adminRolesGet(orgId: orgId, roleId: roleId) { (response, error) in
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
 **roleId** | **String** |  | 

### Return type

[**AdminRolesGetResponse**](AdminRolesGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminRolesGetPermissions**
```swift
    open class func adminRolesGetPermissions(orgId: String, roleId: String, completion: @escaping (_ data: AdminRolesGetPermissionsResponse?, _ error: Error?) -> Void)
```

Get role permissions

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let roleId = "roleId_example" // String | 

// Get role permissions
AdminRolesAPI.adminRolesGetPermissions(orgId: orgId, roleId: roleId) { (response, error) in
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
 **roleId** | **String** |  | 

### Return type

[**AdminRolesGetPermissionsResponse**](AdminRolesGetPermissionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminRolesGetUsers**
```swift
    open class func adminRolesGetUsers(orgId: String, roleId: String, completion: @escaping (_ data: AdminRolesGetUsersResponse?, _ error: Error?) -> Void)
```

Get users assigned to a role

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let roleId = "roleId_example" // String | 

// Get users assigned to a role
AdminRolesAPI.adminRolesGetUsers(orgId: orgId, roleId: roleId) { (response, error) in
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
 **roleId** | **String** |  | 

### Return type

[**AdminRolesGetUsersResponse**](AdminRolesGetUsersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminRolesList**
```swift
    open class func adminRolesList(orgId: String, completion: @escaping (_ data: AdminRolesListResponse?, _ error: Error?) -> Void)
```

List all roles in the tenant

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List all roles in the tenant
AdminRolesAPI.adminRolesList(orgId: orgId) { (response, error) in
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

[**AdminRolesListResponse**](AdminRolesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminRolesRemovePermission**
```swift
    open class func adminRolesRemovePermission(orgId: String, roleId: String, permissionId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Remove a permission from a role

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let roleId = "roleId_example" // String | 
let permissionId = "permissionId_example" // String | 

// Remove a permission from a role
AdminRolesAPI.adminRolesRemovePermission(orgId: orgId, roleId: roleId, permissionId: permissionId) { (response, error) in
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
 **roleId** | **String** |  | 
 **permissionId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminRolesRemoveUser**
```swift
    open class func adminRolesRemoveUser(orgId: String, roleId: String, userId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Remove a user from a role

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let roleId = "roleId_example" // String | 
let userId = "userId_example" // String | 

// Remove a user from a role
AdminRolesAPI.adminRolesRemoveUser(orgId: orgId, roleId: roleId, userId: userId) { (response, error) in
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
 **roleId** | **String** |  | 
 **userId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminRolesUpdatePermissions**
```swift
    open class func adminRolesUpdatePermissions(orgId: String, roleId: String, completion: @escaping (_ data: AdminRolesCreateResponse?, _ error: Error?) -> Void)
```

Update role permissions (replaces all)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let roleId = "roleId_example" // String | 

// Update role permissions (replaces all)
AdminRolesAPI.adminRolesUpdatePermissions(orgId: orgId, roleId: roleId) { (response, error) in
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
 **roleId** | **String** |  | 

### Return type

[**AdminRolesCreateResponse**](AdminRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminRolesUpdate**
```swift
    open class func patchAdminRolesUpdate(orgId: String, roleId: String, completion: @escaping (_ data: AdminRolesCreateResponse?, _ error: Error?) -> Void)
```

Update an existing role

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let roleId = "roleId_example" // String | 

// Update an existing role
AdminRolesAPI.patchAdminRolesUpdate(orgId: orgId, roleId: roleId) { (response, error) in
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
 **roleId** | **String** |  | 

### Return type

[**AdminRolesCreateResponse**](AdminRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminRolesUpdate**
```swift
    open class func putAdminRolesUpdate(orgId: String, roleId: String, completion: @escaping (_ data: AdminRolesCreateResponse?, _ error: Error?) -> Void)
```

Update an existing role

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let roleId = "roleId_example" // String | 

// Update an existing role
AdminRolesAPI.putAdminRolesUpdate(orgId: orgId, roleId: roleId) { (response, error) in
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
 **roleId** | **String** |  | 

### Return type

[**AdminRolesCreateResponse**](AdminRolesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

