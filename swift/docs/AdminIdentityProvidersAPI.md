# AdminIdentityProvidersAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminSocialProvidersAvailable**](AdminIdentityProvidersAPI.md#adminsocialprovidersavailable) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/available | List the available social login provider types
[**adminSocialProvidersCallbackUrls**](AdminIdentityProvidersAPI.md#adminsocialproviderscallbackurls) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/callback-urls | Get the OAuth callback URL of every configured provider
[**adminSocialProvidersCreate**](AdminIdentityProvidersAPI.md#adminsocialproviderscreate) | **POST** /orgs/{orgId}/api/v1/admin/social-providers | Create a social login provider
[**adminSocialProvidersDelete**](AdminIdentityProvidersAPI.md#adminsocialprovidersdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Delete a social login provider
[**adminSocialProvidersDisable**](AdminIdentityProvidersAPI.md#adminsocialprovidersdisable) | **POST** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/disable | Disable a social login provider
[**adminSocialProvidersEnable**](AdminIdentityProvidersAPI.md#adminsocialprovidersenable) | **POST** /orgs/{orgId}/api/v1/admin/social-providers/{providerId}/enable | Enable a social login provider
[**adminSocialProvidersGet**](AdminIdentityProvidersAPI.md#adminsocialprovidersget) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Get a social login provider
[**adminSocialProvidersList**](AdminIdentityProvidersAPI.md#adminsocialproviderslist) | **GET** /orgs/{orgId}/api/v1/admin/social-providers | List social login providers
[**adminSocialProvidersTypes**](AdminIdentityProvidersAPI.md#adminsocialproviderstypes) | **GET** /orgs/{orgId}/api/v1/admin/social-providers/types | List the available social login provider types
[**patchAdminSocialProvidersUpdate**](AdminIdentityProvidersAPI.md#patchadminsocialprovidersupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Update a social login provider
[**putAdminSocialProvidersUpdate**](AdminIdentityProvidersAPI.md#putadminsocialprovidersupdate) | **PUT** /orgs/{orgId}/api/v1/admin/social-providers/{providerId} | Create or replace a social login provider


# **adminSocialProvidersAvailable**
```swift
    open class func adminSocialProvidersAvailable(orgId: String, completion: @escaping (_ data: AdminSocialProvidersAvailableResponse?, _ error: Error?) -> Void)
```

List the available social login provider types

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List the available social login provider types
AdminIdentityProvidersAPI.adminSocialProvidersAvailable(orgId: orgId) { (response, error) in
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

[**AdminSocialProvidersAvailableResponse**](AdminSocialProvidersAvailableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSocialProvidersCallbackUrls**
```swift
    open class func adminSocialProvidersCallbackUrls(orgId: String, completion: @escaping (_ data: AdminSocialProvidersCallbackUrlsResponse?, _ error: Error?) -> Void)
```

Get the OAuth callback URL of every configured provider

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Get the OAuth callback URL of every configured provider
AdminIdentityProvidersAPI.adminSocialProvidersCallbackUrls(orgId: orgId) { (response, error) in
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

[**AdminSocialProvidersCallbackUrlsResponse**](AdminSocialProvidersCallbackUrlsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSocialProvidersCreate**
```swift
    open class func adminSocialProvidersCreate(orgId: String, completion: @escaping (_ data: AdminSocialProvidersCreateResponse?, _ error: Error?) -> Void)
```

Create a social login provider

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Create a social login provider
AdminIdentityProvidersAPI.adminSocialProvidersCreate(orgId: orgId) { (response, error) in
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

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSocialProvidersDelete**
```swift
    open class func adminSocialProvidersDelete(orgId: String, providerId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete a social login provider

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let providerId = "providerId_example" // String | 

// Delete a social login provider
AdminIdentityProvidersAPI.adminSocialProvidersDelete(orgId: orgId, providerId: providerId) { (response, error) in
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
 **providerId** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSocialProvidersDisable**
```swift
    open class func adminSocialProvidersDisable(orgId: String, providerId: String, completion: @escaping (_ data: AdminSocialProvidersCreateResponse?, _ error: Error?) -> Void)
```

Disable a social login provider

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let providerId = "providerId_example" // String | 

// Disable a social login provider
AdminIdentityProvidersAPI.adminSocialProvidersDisable(orgId: orgId, providerId: providerId) { (response, error) in
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
 **providerId** | **String** |  | 

### Return type

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSocialProvidersEnable**
```swift
    open class func adminSocialProvidersEnable(orgId: String, providerId: String, completion: @escaping (_ data: AdminSocialProvidersCreateResponse?, _ error: Error?) -> Void)
```

Enable a social login provider

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let providerId = "providerId_example" // String | 

// Enable a social login provider
AdminIdentityProvidersAPI.adminSocialProvidersEnable(orgId: orgId, providerId: providerId) { (response, error) in
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
 **providerId** | **String** |  | 

### Return type

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSocialProvidersGet**
```swift
    open class func adminSocialProvidersGet(orgId: String, providerId: String, completion: @escaping (_ data: AdminSocialProvidersGetResponse?, _ error: Error?) -> Void)
```

Get a social login provider

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let providerId = "providerId_example" // String | 

// Get a social login provider
AdminIdentityProvidersAPI.adminSocialProvidersGet(orgId: orgId, providerId: providerId) { (response, error) in
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
 **providerId** | **String** |  | 

### Return type

[**AdminSocialProvidersGetResponse**](AdminSocialProvidersGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSocialProvidersList**
```swift
    open class func adminSocialProvidersList(orgId: String, completion: @escaping (_ data: AdminSocialProvidersListResponse?, _ error: Error?) -> Void)
```

List social login providers

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List social login providers
AdminIdentityProvidersAPI.adminSocialProvidersList(orgId: orgId) { (response, error) in
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

[**AdminSocialProvidersListResponse**](AdminSocialProvidersListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSocialProvidersTypes**
```swift
    open class func adminSocialProvidersTypes(orgId: String, completion: @escaping (_ data: AdminSocialProvidersAvailableResponse?, _ error: Error?) -> Void)
```

List the available social login provider types

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List the available social login provider types
AdminIdentityProvidersAPI.adminSocialProvidersTypes(orgId: orgId) { (response, error) in
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

[**AdminSocialProvidersAvailableResponse**](AdminSocialProvidersAvailableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminSocialProvidersUpdate**
```swift
    open class func patchAdminSocialProvidersUpdate(orgId: String, providerId: String, completion: @escaping (_ data: AdminSocialProvidersCreateResponse?, _ error: Error?) -> Void)
```

Update a social login provider

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let providerId = "providerId_example" // String | 

// Update a social login provider
AdminIdentityProvidersAPI.patchAdminSocialProvidersUpdate(orgId: orgId, providerId: providerId) { (response, error) in
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
 **providerId** | **String** |  | 

### Return type

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminSocialProvidersUpdate**
```swift
    open class func putAdminSocialProvidersUpdate(orgId: String, providerId: String, completion: @escaping (_ data: AdminSocialProvidersCreateResponse?, _ error: Error?) -> Void)
```

Create or replace a social login provider

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let providerId = "providerId_example" // String | 

// Create or replace a social login provider
AdminIdentityProvidersAPI.putAdminSocialProvidersUpdate(orgId: orgId, providerId: providerId) { (response, error) in
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
 **providerId** | **String** |  | 

### Return type

[**AdminSocialProvidersCreateResponse**](AdminSocialProvidersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

