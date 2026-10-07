# AdminPermissionsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminPermissionsCreate**](AdminPermissionsAPI.md#adminpermissionscreate) | **POST** /orgs/{orgId}/api/v1/admin/permissions | Create a custom permission for the tenant
[**adminPermissionsDelete**](AdminPermissionsAPI.md#adminpermissionsdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/permissions/{permissionId} | Delete a custom permission
[**adminPermissionsGet**](AdminPermissionsAPI.md#adminpermissionsget) | **GET** /orgs/{orgId}/api/v1/admin/permissions/{permissionId} | Get a single permission
[**adminPermissionsList**](AdminPermissionsAPI.md#adminpermissionslist) | **GET** /orgs/{orgId}/api/v1/admin/permissions | List all available permissions for the tenant
[**adminPermissionsUpdate**](AdminPermissionsAPI.md#adminpermissionsupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/permissions/{permissionId} | Update a permission
[**adminPermissionsUsage**](AdminPermissionsAPI.md#adminpermissionsusage) | **GET** /orgs/{orgId}/api/v1/admin/permissions/{permissionId}/usage | Get permission usage (roles assigned to this permission)
[**adminScopesCreate**](AdminPermissionsAPI.md#adminscopescreate) | **POST** /orgs/{orgId}/api/v1/admin/scopes | Create a custom OAuth scope
[**adminScopesDelete**](AdminPermissionsAPI.md#adminscopesdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/scopes/{scopeId} | Delete a custom OAuth scope
[**adminScopesList**](AdminPermissionsAPI.md#adminscopeslist) | **GET** /orgs/{orgId}/api/v1/admin/scopes | List OAuth scopes


# **adminPermissionsCreate**
```swift
    open class func adminPermissionsCreate(orgId: String, completion: @escaping (_ data: AdminPermissionsCreateResponse?, _ error: Error?) -> Void)
```

Create a custom permission for the tenant

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Create a custom permission for the tenant
AdminPermissionsAPI.adminPermissionsCreate(orgId: orgId) { (response, error) in
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

[**AdminPermissionsCreateResponse**](AdminPermissionsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminPermissionsDelete**
```swift
    open class func adminPermissionsDelete(orgId: String, permissionId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete a custom permission

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let permissionId = "permissionId_example" // String | 

// Delete a custom permission
AdminPermissionsAPI.adminPermissionsDelete(orgId: orgId, permissionId: permissionId) { (response, error) in
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
 **permissionId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminPermissionsGet**
```swift
    open class func adminPermissionsGet(orgId: String, permissionId: String, completion: @escaping (_ data: AdminPermissionsGetResponse?, _ error: Error?) -> Void)
```

Get a single permission

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let permissionId = "permissionId_example" // String | 

// Get a single permission
AdminPermissionsAPI.adminPermissionsGet(orgId: orgId, permissionId: permissionId) { (response, error) in
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
 **permissionId** | **String** |  | 

### Return type

[**AdminPermissionsGetResponse**](AdminPermissionsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminPermissionsList**
```swift
    open class func adminPermissionsList(orgId: String, completion: @escaping (_ data: AdminPermissionsListResponse?, _ error: Error?) -> Void)
```

List all available permissions for the tenant

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List all available permissions for the tenant
AdminPermissionsAPI.adminPermissionsList(orgId: orgId) { (response, error) in
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

[**AdminPermissionsListResponse**](AdminPermissionsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminPermissionsUpdate**
```swift
    open class func adminPermissionsUpdate(orgId: String, permissionId: String, completion: @escaping (_ data: AdminPermissionsCreateResponse?, _ error: Error?) -> Void)
```

Update a permission

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let permissionId = "permissionId_example" // String | 

// Update a permission
AdminPermissionsAPI.adminPermissionsUpdate(orgId: orgId, permissionId: permissionId) { (response, error) in
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
 **permissionId** | **String** |  | 

### Return type

[**AdminPermissionsCreateResponse**](AdminPermissionsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminPermissionsUsage**
```swift
    open class func adminPermissionsUsage(orgId: String, permissionId: String, completion: @escaping (_ data: AdminPermissionsUsageResponse?, _ error: Error?) -> Void)
```

Get permission usage (roles assigned to this permission)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let permissionId = "permissionId_example" // String | 

// Get permission usage (roles assigned to this permission)
AdminPermissionsAPI.adminPermissionsUsage(orgId: orgId, permissionId: permissionId) { (response, error) in
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
 **permissionId** | **String** |  | 

### Return type

[**AdminPermissionsUsageResponse**](AdminPermissionsUsageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminScopesCreate**
```swift
    open class func adminScopesCreate(orgId: String, completion: @escaping (_ data: AdminScopesCreateResponse?, _ error: Error?) -> Void)
```

Create a custom OAuth scope

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Create a custom OAuth scope
AdminPermissionsAPI.adminScopesCreate(orgId: orgId) { (response, error) in
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

[**AdminScopesCreateResponse**](AdminScopesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminScopesDelete**
```swift
    open class func adminScopesDelete(orgId: String, scopeId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete a custom OAuth scope

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let scopeId = "scopeId_example" // String | 

// Delete a custom OAuth scope
AdminPermissionsAPI.adminScopesDelete(orgId: orgId, scopeId: scopeId) { (response, error) in
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
 **scopeId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminScopesList**
```swift
    open class func adminScopesList(orgId: String, completion: @escaping (_ data: AdminScopesListResponse?, _ error: Error?) -> Void)
```

List OAuth scopes

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List OAuth scopes
AdminPermissionsAPI.adminScopesList(orgId: orgId) { (response, error) in
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

[**AdminScopesListResponse**](AdminScopesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

