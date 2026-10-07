# AdminAbacAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**abacAttributesCreate**](AdminAbacAPI.md#abacattributescreate) | **POST** /orgs/{orgId}/api/v1/abac/attributes | Create an attribute definition
[**abacAttributesDelete**](AdminAbacAPI.md#abacattributesdelete) | **DELETE** /orgs/{orgId}/api/v1/abac/attributes/{id} | Delete an attribute definition
[**abacAttributesGet**](AdminAbacAPI.md#abacattributesget) | **GET** /orgs/{orgId}/api/v1/abac/attributes/{id} | Get an attribute definition
[**abacAttributesList**](AdminAbacAPI.md#abacattributeslist) | **GET** /orgs/{orgId}/api/v1/abac/attributes | List attribute definitions
[**abacPoliciesCreate**](AdminAbacAPI.md#abacpoliciescreate) | **POST** /orgs/{orgId}/api/v1/abac/policies | Create an ABAC policy
[**abacPoliciesDelete**](AdminAbacAPI.md#abacpoliciesdelete) | **DELETE** /orgs/{orgId}/api/v1/abac/policies/{id} | Delete an ABAC policy
[**abacPoliciesGet**](AdminAbacAPI.md#abacpoliciesget) | **GET** /orgs/{orgId}/api/v1/abac/policies/{id} | Get an ABAC policy
[**abacPoliciesList**](AdminAbacAPI.md#abacpolicieslist) | **GET** /orgs/{orgId}/api/v1/abac/policies | List ABAC policies
[**abacPoliciesToggle**](AdminAbacAPI.md#abacpoliciestoggle) | **POST** /orgs/{orgId}/api/v1/abac/policies/{id}/toggle | Toggle a policy between active and inactive
[**patchAbacAttributesUpdate**](AdminAbacAPI.md#patchabacattributesupdate) | **PATCH** /orgs/{orgId}/api/v1/abac/attributes/{id} | Partially update an attribute definition
[**patchAbacPoliciesUpdate**](AdminAbacAPI.md#patchabacpoliciesupdate) | **PATCH** /orgs/{orgId}/api/v1/abac/policies/{id} | Partially update an ABAC policy
[**putAbacAttributesUpdate**](AdminAbacAPI.md#putabacattributesupdate) | **PUT** /orgs/{orgId}/api/v1/abac/attributes/{id} | Update an attribute definition
[**putAbacPoliciesUpdate**](AdminAbacAPI.md#putabacpoliciesupdate) | **PUT** /orgs/{orgId}/api/v1/abac/policies/{id} | Update an ABAC policy


# **abacAttributesCreate**
```swift
    open class func abacAttributesCreate(orgId: String, completion: @escaping (_ data: AbacAttributesCreateResponse?, _ error: Error?) -> Void)
```

Create an attribute definition

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Create an attribute definition
AdminAbacAPI.abacAttributesCreate(orgId: orgId) { (response, error) in
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

[**AbacAttributesCreateResponse**](AbacAttributesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abacAttributesDelete**
```swift
    open class func abacAttributesDelete(orgId: String, id: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete an attribute definition

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let id = "id_example" // String | 

// Delete an attribute definition
AdminAbacAPI.abacAttributesDelete(orgId: orgId, id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abacAttributesGet**
```swift
    open class func abacAttributesGet(orgId: String, id: String, completion: @escaping (_ data: AbacAttributesGetResponse?, _ error: Error?) -> Void)
```

Get an attribute definition

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let id = "id_example" // String | 

// Get an attribute definition
AdminAbacAPI.abacAttributesGet(orgId: orgId, id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**AbacAttributesGetResponse**](AbacAttributesGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abacAttributesList**
```swift
    open class func abacAttributesList(orgId: String, completion: @escaping (_ data: AbacAttributesListResponse?, _ error: Error?) -> Void)
```

List attribute definitions

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List attribute definitions
AdminAbacAPI.abacAttributesList(orgId: orgId) { (response, error) in
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

[**AbacAttributesListResponse**](AbacAttributesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abacPoliciesCreate**
```swift
    open class func abacPoliciesCreate(orgId: String, completion: @escaping (_ data: AbacPoliciesCreateResponse?, _ error: Error?) -> Void)
```

Create an ABAC policy

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Create an ABAC policy
AdminAbacAPI.abacPoliciesCreate(orgId: orgId) { (response, error) in
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

[**AbacPoliciesCreateResponse**](AbacPoliciesCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abacPoliciesDelete**
```swift
    open class func abacPoliciesDelete(orgId: String, id: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete an ABAC policy

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let id = "id_example" // String | 

// Delete an ABAC policy
AdminAbacAPI.abacPoliciesDelete(orgId: orgId, id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abacPoliciesGet**
```swift
    open class func abacPoliciesGet(orgId: String, id: String, completion: @escaping (_ data: AbacPoliciesGetResponse?, _ error: Error?) -> Void)
```

Get an ABAC policy

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let id = "id_example" // String | 

// Get an ABAC policy
AdminAbacAPI.abacPoliciesGet(orgId: orgId, id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**AbacPoliciesGetResponse**](AbacPoliciesGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abacPoliciesList**
```swift
    open class func abacPoliciesList(orgId: String, completion: @escaping (_ data: AbacPoliciesListResponse?, _ error: Error?) -> Void)
```

List ABAC policies

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List ABAC policies
AdminAbacAPI.abacPoliciesList(orgId: orgId) { (response, error) in
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

[**AbacPoliciesListResponse**](AbacPoliciesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **abacPoliciesToggle**
```swift
    open class func abacPoliciesToggle(orgId: String, id: String, completion: @escaping (_ data: AbacPoliciesToggleResponse?, _ error: Error?) -> Void)
```

Toggle a policy between active and inactive

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let id = "id_example" // String | 

// Toggle a policy between active and inactive
AdminAbacAPI.abacPoliciesToggle(orgId: orgId, id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**AbacPoliciesToggleResponse**](AbacPoliciesToggleResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAbacAttributesUpdate**
```swift
    open class func patchAbacAttributesUpdate(orgId: String, id: String, completion: @escaping (_ data: PutAbacAttributesUpdateResponse?, _ error: Error?) -> Void)
```

Partially update an attribute definition

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let id = "id_example" // String | 

// Partially update an attribute definition
AdminAbacAPI.patchAbacAttributesUpdate(orgId: orgId, id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**PutAbacAttributesUpdateResponse**](PutAbacAttributesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAbacPoliciesUpdate**
```swift
    open class func patchAbacPoliciesUpdate(orgId: String, id: String, completion: @escaping (_ data: PutAbacPoliciesUpdateResponse?, _ error: Error?) -> Void)
```

Partially update an ABAC policy

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let id = "id_example" // String | 

// Partially update an ABAC policy
AdminAbacAPI.patchAbacPoliciesUpdate(orgId: orgId, id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**PutAbacPoliciesUpdateResponse**](PutAbacPoliciesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAbacAttributesUpdate**
```swift
    open class func putAbacAttributesUpdate(orgId: String, id: String, completion: @escaping (_ data: PutAbacAttributesUpdateResponse?, _ error: Error?) -> Void)
```

Update an attribute definition

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let id = "id_example" // String | 

// Update an attribute definition
AdminAbacAPI.putAbacAttributesUpdate(orgId: orgId, id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**PutAbacAttributesUpdateResponse**](PutAbacAttributesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAbacPoliciesUpdate**
```swift
    open class func putAbacPoliciesUpdate(orgId: String, id: String, completion: @escaping (_ data: PutAbacPoliciesUpdateResponse?, _ error: Error?) -> Void)
```

Update an ABAC policy

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let id = "id_example" // String | 

// Update an ABAC policy
AdminAbacAPI.putAbacPoliciesUpdate(orgId: orgId, id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**PutAbacPoliciesUpdateResponse**](PutAbacPoliciesUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

