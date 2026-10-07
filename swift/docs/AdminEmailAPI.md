# AdminEmailAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminEmailTemplatesDelete**](AdminEmailAPI.md#adminemailtemplatesdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Remove the custom email template so the built-in default is used
[**adminEmailTemplatesGet**](AdminEmailAPI.md#adminemailtemplatesget) | **GET** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Get an email template (custom or built-in default)
[**adminEmailTemplatesList**](AdminEmailAPI.md#adminemailtemplateslist) | **GET** /orgs/{orgId}/api/v1/admin/email-templates | List every email template type with its current (custom or built-in) template
[**adminEmailTemplatesPreview**](AdminEmailAPI.md#adminemailtemplatespreview) | **POST** /orgs/{orgId}/api/v1/admin/email-templates/{type}/preview | Render an email template with sample data
[**adminEmailTemplatesUpsert**](AdminEmailAPI.md#adminemailtemplatesupsert) | **PUT** /orgs/{orgId}/api/v1/admin/email-templates/{type} | Create or replace the custom email template for a type
[**adminEmailTemplatesVariables**](AdminEmailAPI.md#adminemailtemplatesvariables) | **GET** /orgs/{orgId}/api/v1/admin/email-templates/{type}/variables | List the placeholders available to an email template type


# **adminEmailTemplatesDelete**
```swift
    open class func adminEmailTemplatesDelete(orgId: String, type: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Remove the custom email template so the built-in default is used

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let type = "type_example" // String | 

// Remove the custom email template so the built-in default is used
AdminEmailAPI.adminEmailTemplatesDelete(orgId: orgId, type: type) { (response, error) in
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
 **type** | **String** |  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminEmailTemplatesGet**
```swift
    open class func adminEmailTemplatesGet(orgId: String, type: String, completion: @escaping (_ data: EmailTemplate?, _ error: Error?) -> Void)
```

Get an email template (custom or built-in default)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let type = "type_example" // String | 

// Get an email template (custom or built-in default)
AdminEmailAPI.adminEmailTemplatesGet(orgId: orgId, type: type) { (response, error) in
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
 **type** | **String** |  | 

### Return type

[**EmailTemplate**](EmailTemplate.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminEmailTemplatesList**
```swift
    open class func adminEmailTemplatesList(orgId: String, completion: @escaping (_ data: AdminEmailTemplatesListResponse?, _ error: Error?) -> Void)
```

List every email template type with its current (custom or built-in) template

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List every email template type with its current (custom or built-in) template
AdminEmailAPI.adminEmailTemplatesList(orgId: orgId) { (response, error) in
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

[**AdminEmailTemplatesListResponse**](AdminEmailTemplatesListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminEmailTemplatesPreview**
```swift
    open class func adminEmailTemplatesPreview(orgId: String, type: String, completion: @escaping (_ data: AdminEmailTemplatesPreviewResponse?, _ error: Error?) -> Void)
```

Render an email template with sample data

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let type = "type_example" // String | 

// Render an email template with sample data
AdminEmailAPI.adminEmailTemplatesPreview(orgId: orgId, type: type) { (response, error) in
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
 **type** | **String** |  | 

### Return type

[**AdminEmailTemplatesPreviewResponse**](AdminEmailTemplatesPreviewResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminEmailTemplatesUpsert**
```swift
    open class func adminEmailTemplatesUpsert(orgId: String, type: String, completion: @escaping (_ data: EmailTemplate?, _ error: Error?) -> Void)
```

Create or replace the custom email template for a type

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let type = "type_example" // String | 

// Create or replace the custom email template for a type
AdminEmailAPI.adminEmailTemplatesUpsert(orgId: orgId, type: type) { (response, error) in
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
 **type** | **String** |  | 

### Return type

[**EmailTemplate**](EmailTemplate.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminEmailTemplatesVariables**
```swift
    open class func adminEmailTemplatesVariables(orgId: String, type: String, completion: @escaping (_ data: AdminEmailTemplatesVariablesResponse?, _ error: Error?) -> Void)
```

List the placeholders available to an email template type

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let type = "type_example" // String | 

// List the placeholders available to an email template type
AdminEmailAPI.adminEmailTemplatesVariables(orgId: orgId, type: type) { (response, error) in
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
 **type** | **String** |  | 

### Return type

[**AdminEmailTemplatesVariablesResponse**](AdminEmailTemplatesVariablesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

