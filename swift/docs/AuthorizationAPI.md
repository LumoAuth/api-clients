# AuthorizationAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkAbac**](AuthorizationAPI.md#checkabac) | **POST** /orgs/{orgId}/api/v1/abac/check | Evaluate an ABAC policy decision for the caller
[**checkAbacBulk**](AuthorizationAPI.md#checkabacbulk) | **POST** /orgs/{orgId}/api/v1/abac/check-bulk | Evaluate up to 100 ABAC checks for the caller in one call
[**checkAllPermissions**](AuthorizationAPI.md#checkallpermissions) | **POST** /api/v1/authz/check-all | Check whether the subject holds all of the permissions
[**checkAnyPermission**](AuthorizationAPI.md#checkanypermission) | **POST** /api/v1/authz/check-any | Check whether the subject holds any of the permissions
[**checkPermission**](AuthorizationAPI.md#checkpermission) | **POST** /api/v1/authz/check | Check one permission
[**checkPermissionsBulk**](AuthorizationAPI.md#checkpermissionsbulk) | **POST** /api/v1/authz/check-bulk | Check up to 100 permissions in one call
[**checkRelation**](AuthorizationAPI.md#checkrelation) | **POST** /api/v1/authz/zanzibar/check | Zanzibar relationship check
[**checkRelationScoped**](AuthorizationAPI.md#checkrelationscoped) | **POST** /orgs/{orgId}/api/v1/zanzibar/check | Zanzibar relationship check
[**evaluate**](AuthorizationAPI.md#evaluate) | **POST** /api/v1/authz/v1/evaluation | AuthZEN 1.0 access evaluation
[**evaluateBatch**](AuthorizationAPI.md#evaluatebatch) | **POST** /api/v1/authz/v1/evaluations | AuthZEN 1.0 boxcarred access evaluations
[**expandRelation**](AuthorizationAPI.md#expandrelation) | **POST** /api/v1/authz/zanzibar/expand | Zanzibar-style userset expansion: every subject that satisfies &#x60;object#relation&#x60;, as a tree that mirrors the namespace rewrites.
[**expandRelationScoped**](AuthorizationAPI.md#expandrelationscoped) | **POST** /orgs/{orgId}/api/v1/zanzibar/expand | Zanzibar Expand: the userset tree of every subject satisfying &#x60;object#relation&#x60;. Always reveals other subjects, so it requires the oracle privilege (&#x60;authz.check&#x60; permission or &#x60;authz:check&#x60; scope).
[**getMyAttributes**](AuthorizationAPI.md#getmyattributes) | **GET** /orgs/{orgId}/api/v1/abac/my-attributes | The caller&#39;s ABAC subject attributes
[**getResourceAttributes**](AuthorizationAPI.md#getresourceattributes) | **GET** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes | Attributes stored for a resource
[**listAttributeDefinitions**](AuthorizationAPI.md#listattributedefinitions) | **GET** /orgs/{orgId}/api/v1/abac/attribute-definitions | Attribute definitions available to the organization
[**listPermissions**](AuthorizationAPI.md#listpermissions) | **GET** /api/v1/authz/permissions | List the caller&#39;s effective permissions
[**setResourceAttribute**](AuthorizationAPI.md#setresourceattribute) | **PUT** /orgs/{orgId}/api/v1/abac/resources/{resourceType}/{resourceId}/attributes/{attributeSlug} | Set a resource attribute
[**setUserAttribute**](AuthorizationAPI.md#setuserattribute) | **PUT** /orgs/{orgId}/api/v1/abac/users/{userId}/attributes/{attributeSlug} | Set a user attribute


# **checkAbac**
```swift
    open class func checkAbac(orgId: String, completion: @escaping (_ data: CheckAbacResponse?, _ error: Error?) -> Void)
```

Evaluate an ABAC policy decision for the caller

POST /api/v1/abac/check Body: {   resourceType: string,   action: string,   resourceId?: string,   environment?: { ip?: string, userAgent?: string, ... } }  Returns: { allowed: boolean, reason: string, matchedPolicies: [...] }

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Evaluate an ABAC policy decision for the caller
AuthorizationAPI.checkAbac(orgId: orgId) { (response, error) in
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

[**CheckAbacResponse**](CheckAbacResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkAbacBulk**
```swift
    open class func checkAbacBulk(orgId: String, completion: @escaping (_ data: CheckAbacBulkResponse?, _ error: Error?) -> Void)
```

Evaluate up to 100 ABAC checks for the caller in one call

POST /api/v1/abac/check-bulk Body: {   checks: [     { resourceType: string, action: string, resourceId?: string },     ...   ],   environment?: { ... } }

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Evaluate up to 100 ABAC checks for the caller in one call
AuthorizationAPI.checkAbacBulk(orgId: orgId) { (response, error) in
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

[**CheckAbacBulkResponse**](CheckAbacBulkResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkAllPermissions**
```swift
    open class func checkAllPermissions(completion: @escaping (_ data: CheckAnyPermissionResponse?, _ error: Error?) -> Void)
```

Check whether the subject holds all of the permissions

POST /api/v1/authz/check-all Body: {   \"permissions\": [\"document.edit\", \"document.publish\"],   \"context\": {\"document_id\": 123},   \"subject\": {\"type\": \"user\", \"id\": \"<uuid>\"}   // optional — see /check }

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient


// Check whether the subject holds all of the permissions
AuthorizationAPI.checkAllPermissions() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**CheckAnyPermissionResponse**](CheckAnyPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkAnyPermission**
```swift
    open class func checkAnyPermission(completion: @escaping (_ data: CheckAnyPermissionResponse?, _ error: Error?) -> Void)
```

Check whether the subject holds any of the permissions

POST /api/v1/authz/check-any Body: {   \"permissions\": [\"document.edit\", \"document.view\"],   \"context\": {\"document_id\": 123},   \"subject\": {\"type\": \"user\", \"id\": \"<uuid>\"}   // optional — see /check }

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient


// Check whether the subject holds any of the permissions
AuthorizationAPI.checkAnyPermission() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**CheckAnyPermissionResponse**](CheckAnyPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkPermission**
```swift
    open class func checkPermission(completion: @escaping (_ data: CheckPermissionResponse?, _ error: Error?) -> Void)
```

Check one permission

POST /api/v1/authz/check Body: {   \"permission\": \"document.edit\",   \"context\": {\"document_id\": 123, \"owner_id\": 456},   \"subject\": {\"type\": \"user\", \"id\": \"<uuid>\"}   // optional — defaults to the caller }  All four check endpoints accept the optional `subject`. Naming a subject other than the caller requires the `authz.check` permission or the `authz:check` scope (403 `insufficient_permissions` otherwise) — see ThirdPartySubjectGuard.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient


// Check one permission
AuthorizationAPI.checkPermission() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**CheckPermissionResponse**](CheckPermissionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkPermissionsBulk**
```swift
    open class func checkPermissionsBulk(completion: @escaping (_ data: CheckPermissionsBulkResponse?, _ error: Error?) -> Void)
```

Check up to 100 permissions in one call

POST /api/v1/authz/check-bulk Body: {   \"permissions\": [\"document.edit\", \"document.delete\"],   \"context\": {\"document_id\": 123},   \"subject\": {\"type\": \"user\", \"id\": \"<uuid>\"}   // optional — see /check }

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient


// Check up to 100 permissions in one call
AuthorizationAPI.checkPermissionsBulk() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**CheckPermissionsBulkResponse**](CheckPermissionsBulkResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkRelation**
```swift
    open class func checkRelation(completion: @escaping (_ data: CheckRelationResponse?, _ error: Error?) -> Void)
```

Zanzibar relationship check

POST /api/v1/authz/zanzibar/check Body: {   \"object\": \"document:123\",   \"relation\": \"viewer\",   \"subject\": \"user:456\" }

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient


// Zanzibar relationship check
AuthorizationAPI.checkRelation() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**CheckRelationResponse**](CheckRelationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkRelationScoped**
```swift
    open class func checkRelationScoped(orgId: String, completion: @escaping (_ data: CheckRelationScopedResponse?, _ error: Error?) -> Void)
```

Zanzibar relationship check

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Zanzibar relationship check
AuthorizationAPI.checkRelationScoped(orgId: orgId) { (response, error) in
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

[**CheckRelationScopedResponse**](CheckRelationScopedResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **evaluate**
```swift
    open class func evaluate(completion: @escaping (_ data: AuthZenDecision?, _ error: Error?) -> Void)
```

AuthZEN 1.0 access evaluation

POST /api/v1/authz/v1/evaluation Body: {   \"subject\":  {\"type\": \"user\"|\"agent\", \"id\": \"...\"},   \"action\":   {\"name\": \"...\"},   \"resource\": {\"type\": \"...\", \"id\": \"...\"},   \"context\":  {...} } Response: {\"decision\": true|false, \"context\": {...}?}

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient


// AuthZEN 1.0 access evaluation
AuthorizationAPI.evaluate() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**AuthZenDecision**](AuthZenDecision.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **evaluateBatch**
```swift
    open class func evaluateBatch(completion: @escaping (_ data: EvaluateBatchResponse?, _ error: Error?) -> Void)
```

AuthZEN 1.0 boxcarred access evaluations

POST /api/v1/authz/v1/evaluations Body: {   \"subject\":  {...}?,   // optional defaults, overridden per item   \"action\":   {...}?,   \"resource\": {...}?,   \"context\":  {...}?,   \"evaluations\": [{...}, ...] } Response: {\"evaluations\": [{\"decision\": ...}, ...]} preserving order.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient


// AuthZEN 1.0 boxcarred access evaluations
AuthorizationAPI.evaluateBatch() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**EvaluateBatchResponse**](EvaluateBatchResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expandRelation**
```swift
    open class func expandRelation(expandRelationRequest: ExpandRelationRequest, completion: @escaping (_ data: ExpandRelationResponse?, _ error: Error?) -> Void)
```

Zanzibar-style userset expansion: every subject that satisfies `object#relation`, as a tree that mirrors the namespace rewrites.

POST /api/v1/authz/zanzibar/expand Body: {   \"object\": \"document:123\",   \"relation\": \"viewer\" } Response: {   \"tree\": {     \"type\": \"union\" | \"intersection\" | \"leaf\",     \"object\": \"document:123\",     \"relation\": \"viewer\",     \"children\": [ ...nested nodes... ],     \"subjects\": [ \"user:1\", \"group:2#member\" ]   } }  Expansion always reveals other subjects, so it requires the oracle privilege (`authz.check` permission or `authz:check` scope) — there is no \"self\" variant.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let expandRelationRequest = ExpandRelationRequest(object: "object_example", relation: "relation_example") // ExpandRelationRequest | 

// Zanzibar-style userset expansion: every subject that satisfies `object#relation`, as a tree that mirrors the namespace rewrites.
AuthorizationAPI.expandRelation(expandRelationRequest: expandRelationRequest) { (response, error) in
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
 **expandRelationRequest** | [**ExpandRelationRequest**](ExpandRelationRequest.md) |  | 

### Return type

[**ExpandRelationResponse**](ExpandRelationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expandRelationScoped**
```swift
    open class func expandRelationScoped(orgId: String, expandRelationRequest: ExpandRelationRequest, completion: @escaping (_ data: ExpandRelationResponse?, _ error: Error?) -> Void)
```

Zanzibar Expand: the userset tree of every subject satisfying `object#relation`. Always reveals other subjects, so it requires the oracle privilege (`authz.check` permission or `authz:check` scope).

Body: {\"object\": \"document:123\", \"relation\": \"viewer\"} Response: {\"tree\": {\"type\", \"object\", \"relation\", \"children\", \"subjects\"}}

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let expandRelationRequest = ExpandRelationRequest(object: "object_example", relation: "relation_example") // ExpandRelationRequest | 

// Zanzibar Expand: the userset tree of every subject satisfying `object#relation`. Always reveals other subjects, so it requires the oracle privilege (`authz.check` permission or `authz:check` scope).
AuthorizationAPI.expandRelationScoped(orgId: orgId, expandRelationRequest: expandRelationRequest) { (response, error) in
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
 **expandRelationRequest** | [**ExpandRelationRequest**](ExpandRelationRequest.md) |  | 

### Return type

[**ExpandRelationResponse**](ExpandRelationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyAttributes**
```swift
    open class func getMyAttributes(orgId: String, completion: @escaping (_ data: GetMyAttributesResponse?, _ error: Error?) -> Void)
```

The caller's ABAC subject attributes

GET /api/v1/abac/my-attributes

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// The caller's ABAC subject attributes
AuthorizationAPI.getMyAttributes(orgId: orgId) { (response, error) in
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

[**GetMyAttributesResponse**](GetMyAttributesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getResourceAttributes**
```swift
    open class func getResourceAttributes(orgId: String, resourceType: String, resourceId: String, completion: @escaping (_ data: GetResourceAttributesResponse?, _ error: Error?) -> Void)
```

Attributes stored for a resource

GET /api/v1/abac/resources/{resourceType}/{resourceId}/attributes

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let resourceType = "resourceType_example" // String | 
let resourceId = "resourceId_example" // String | 

// Attributes stored for a resource
AuthorizationAPI.getResourceAttributes(orgId: orgId, resourceType: resourceType, resourceId: resourceId) { (response, error) in
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
 **resourceType** | **String** |  | 
 **resourceId** | **String** |  | 

### Return type

[**GetResourceAttributesResponse**](GetResourceAttributesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAttributeDefinitions**
```swift
    open class func listAttributeDefinitions(orgId: String, type: ModelType_listAttributeDefinitions? = nil, completion: @escaping (_ data: ListAttributeDefinitionsResponse?, _ error: Error?) -> Void)
```

Attribute definitions available to the organization

GET /api/v1/abac/attribute-definitions Query params: type (user|resource|environment)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let type = "type_example" // String |  (optional)

// Attribute definitions available to the organization
AuthorizationAPI.listAttributeDefinitions(orgId: orgId, type: type) { (response, error) in
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
 **type** | **String** |  | [optional] 

### Return type

[**ListAttributeDefinitionsResponse**](ListAttributeDefinitionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPermissions**
```swift
    open class func listPermissions(completion: @escaping (_ data: ListPermissionsResponse?, _ error: Error?) -> Void)
```

List the caller's effective permissions

GET /api/v1/authz/permissions

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient


// List the caller's effective permissions
AuthorizationAPI.listPermissions() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**ListPermissionsResponse**](ListPermissionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setResourceAttribute**
```swift
    open class func setResourceAttribute(orgId: String, resourceType: String, resourceId: String, attributeSlug: String, completion: @escaping (_ data: SetResourceAttributeResponse?, _ error: Error?) -> Void)
```

Set a resource attribute

PUT /api/v1/abac/resources/{resourceType}/{resourceId}/attributes/{attributeSlug} Body: { value: any }

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let resourceType = "resourceType_example" // String | 
let resourceId = "resourceId_example" // String | 
let attributeSlug = "attributeSlug_example" // String | 

// Set a resource attribute
AuthorizationAPI.setResourceAttribute(orgId: orgId, resourceType: resourceType, resourceId: resourceId, attributeSlug: attributeSlug) { (response, error) in
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
 **resourceType** | **String** |  | 
 **resourceId** | **String** |  | 
 **attributeSlug** | **String** |  | 

### Return type

[**SetResourceAttributeResponse**](SetResourceAttributeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setUserAttribute**
```swift
    open class func setUserAttribute(orgId: String, userId: String, attributeSlug: String, completion: @escaping (_ data: SetUserAttributeResponse?, _ error: Error?) -> Void)
```

Set a user attribute

PUT /api/v1/abac/users/{userId}/attributes/{attributeSlug} Body: { value: any }

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 
let attributeSlug = "attributeSlug_example" // String | 

// Set a user attribute
AuthorizationAPI.setUserAttribute(orgId: orgId, userId: userId, attributeSlug: attributeSlug) { (response, error) in
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
 **attributeSlug** | **String** |  | 

### Return type

[**SetUserAttributeResponse**](SetUserAttributeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

