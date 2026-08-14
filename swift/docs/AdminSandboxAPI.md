# AdminSandboxAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminSandboxDestroy**](AdminSandboxAPI.md#adminsandboxdestroy) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/{sandboxSlug}/destroy | POST /{sandboxSlug}/destroy Deletes the sandbox if owned by caller.
[**adminSandboxList**](AdminSandboxAPI.md#adminsandboxlist) | **GET** /orgs/{orgId}/api/v1/admin/sandbox | GET / Lists the caller&#39;s active sandbox tenants (their own only).
[**adminSandboxSpawn**](AdminSandboxAPI.md#adminsandboxspawn) | **POST** /orgs/{orgId}/api/v1/admin/sandbox/spawn | POST /spawn Body: {\&quot;name\&quot;?: \&quot;feature-foo\&quot;, \&quot;ttl_hours\&quot;?: 24}


# **adminSandboxDestroy**
```swift
    open class func adminSandboxDestroy(orgId: String, sandboxSlug: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

POST /{sandboxSlug}/destroy Deletes the sandbox if owned by caller.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let sandboxSlug = "sandboxSlug_example" // String | 

// POST /{sandboxSlug}/destroy Deletes the sandbox if owned by caller.
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSandboxList**
```swift
    open class func adminSandboxList(orgId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

GET / Lists the caller's active sandbox tenants (their own only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// GET / Lists the caller's active sandbox tenants (their own only).
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSandboxSpawn**
```swift
    open class func adminSandboxSpawn(orgId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

POST /spawn Body: {\"name\"?: \"feature-foo\", \"ttl_hours\"?: 24}

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// POST /spawn Body: {\"name\"?: \"feature-foo\", \"ttl_hours\"?: 24}
AdminSandboxAPI.adminSandboxSpawn(orgId: orgId) { (response, error) in
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

