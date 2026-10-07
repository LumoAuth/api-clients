# AdminSandboxAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminSandboxDestroy**](AdminSandboxAPI.md#adminsandboxdestroy) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/{sandboxSlug}/destroy | Destroy a sandbox tenant
[**adminSandboxList**](AdminSandboxAPI.md#adminsandboxlist) | **GET** /orgs/{orgId}/api/v1/admin/sandbox | List the caller&#39;s sandbox tenants
[**adminSandboxSpawn**](AdminSandboxAPI.md#adminsandboxspawn) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/spawn | Spawn a sandbox tenant


# **adminSandboxDestroy**
```swift
    open class func adminSandboxDestroy(orgId: String, sandboxSlug: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Destroy a sandbox tenant

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let sandboxSlug = "sandboxSlug_example" // String | 

// Destroy a sandbox tenant
AdminSandboxAPI.adminSandboxDestroy(orgId: orgId, sandboxSlug: sandboxSlug) { (response, error) in
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
 **sandboxSlug** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSandboxList**
```swift
    open class func adminSandboxList(orgId: String, completion: @escaping (_ data: AdminSandboxListResponse?, _ error: Error?) -> Void)
```

List the caller's sandbox tenants

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List the caller's sandbox tenants
AdminSandboxAPI.adminSandboxList(orgId: orgId) { (response, error) in
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

[**AdminSandboxListResponse**](AdminSandboxListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSandboxSpawn**
```swift
    open class func adminSandboxSpawn(orgId: String, adminSandboxSpawnRequest: AdminSandboxSpawnRequest? = nil, completion: @escaping (_ data: AdminSandboxSpawnResponse?, _ error: Error?) -> Void)
```

Spawn a sandbox tenant

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let adminSandboxSpawnRequest = AdminSandboxSpawnRequest(name: "name_example", ttlHours: 123) // AdminSandboxSpawnRequest |  (optional)

// Spawn a sandbox tenant
AdminSandboxAPI.adminSandboxSpawn(orgId: orgId, adminSandboxSpawnRequest: adminSandboxSpawnRequest) { (response, error) in
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
 **adminSandboxSpawnRequest** | [**AdminSandboxSpawnRequest**](AdminSandboxSpawnRequest.md) |  | [optional] 

### Return type

[**AdminSandboxSpawnResponse**](AdminSandboxSpawnResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

