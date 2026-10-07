# AdminSessionsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminClientTokensRevokeAll**](AdminSessionsAPI.md#adminclienttokensrevokeall) | **DELETE** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens | Revoke all tokens of a client
[**adminClientTokensRevokePost**](AdminSessionsAPI.md#adminclienttokensrevokepost) | **POST** /orgs/{orgId}/api/v1/admin/clients/{clientId}/tokens/revoke | Revoke all tokens of a client (POST alias)
[**adminSessionsCount**](AdminSessionsAPI.md#adminsessionscount) | **GET** /orgs/{orgId}/api/v1/admin/sessions/count | Active session count
[**adminSessionsList**](AdminSessionsAPI.md#adminsessionslist) | **GET** /orgs/{orgId}/api/v1/admin/sessions | List active sessions
[**adminSessionsRevoke**](AdminSessionsAPI.md#adminsessionsrevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/sessions/{sessionId} | Revoke a session
[**adminSessionsRevokeAll**](AdminSessionsAPI.md#adminsessionsrevokeall) | **POST** /orgs/{orgId}/api/v1/admin/sessions/revoke-all | Revoke every session in the tenant
[**adminSessionsStats**](AdminSessionsAPI.md#adminsessionsstats) | **GET** /orgs/{orgId}/api/v1/admin/sessions/stats | Session statistics
[**adminTokensList**](AdminSessionsAPI.md#admintokenslist) | **GET** /orgs/{orgId}/api/v1/admin/tokens | List access tokens
[**adminTokensRevoke**](AdminSessionsAPI.md#admintokensrevoke) | **DELETE** /orgs/{orgId}/api/v1/admin/tokens/{tokenId} | Revoke a token
[**adminUserSessionsList**](AdminSessionsAPI.md#adminusersessionslist) | **GET** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | List a user&#39;s active sessions
[**adminUserSessionsRevokeAll**](AdminSessionsAPI.md#adminusersessionsrevokeall) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions | Revoke all sessions of a user
[**adminUserSessionsRevokePost**](AdminSessionsAPI.md#adminusersessionsrevokepost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/sessions/revoke | Revoke all sessions of a user (POST alias)
[**adminUserTokensRevokeAll**](AdminSessionsAPI.md#adminusertokensrevokeall) | **DELETE** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens | Revoke all tokens of a user
[**adminUserTokensRevokePost**](AdminSessionsAPI.md#adminusertokensrevokepost) | **POST** /orgs/{orgId}/api/v1/admin/users/{userId}/tokens/revoke | Revoke all tokens of a user (POST alias)


# **adminClientTokensRevokeAll**
```swift
    open class func adminClientTokensRevokeAll(orgId: String, clientId: String, completion: @escaping (_ data: AdminClientTokensRevokeAllResponse?, _ error: Error?) -> Void)
```

Revoke all tokens of a client

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let clientId = "clientId_example" // String | 

// Revoke all tokens of a client
AdminSessionsAPI.adminClientTokensRevokeAll(orgId: orgId, clientId: clientId) { (response, error) in
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
 **clientId** | **String** |  | 

### Return type

[**AdminClientTokensRevokeAllResponse**](AdminClientTokensRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminClientTokensRevokePost**
```swift
    open class func adminClientTokensRevokePost(orgId: String, clientId: String, completion: @escaping (_ data: AdminUserTokensRevokePostResponse?, _ error: Error?) -> Void)
```

Revoke all tokens of a client (POST alias)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let clientId = "clientId_example" // String | 

// Revoke all tokens of a client (POST alias)
AdminSessionsAPI.adminClientTokensRevokePost(orgId: orgId, clientId: clientId) { (response, error) in
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
 **clientId** | **String** |  | 

### Return type

[**AdminUserTokensRevokePostResponse**](AdminUserTokensRevokePostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSessionsCount**
```swift
    open class func adminSessionsCount(orgId: String, completion: @escaping (_ data: AdminSessionsCountResponse?, _ error: Error?) -> Void)
```

Active session count

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Active session count
AdminSessionsAPI.adminSessionsCount(orgId: orgId) { (response, error) in
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

[**AdminSessionsCountResponse**](AdminSessionsCountResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSessionsList**
```swift
    open class func adminSessionsList(orgId: String, completion: @escaping (_ data: AdminSessionsListResponse?, _ error: Error?) -> Void)
```

List active sessions

Paginated active sessions for the tenant (expired and idle-timed-out sessions are invalidated first). Optional `userId` filter accepts a user UUID or email.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List active sessions
AdminSessionsAPI.adminSessionsList(orgId: orgId) { (response, error) in
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

[**AdminSessionsListResponse**](AdminSessionsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSessionsRevoke**
```swift
    open class func adminSessionsRevoke(orgId: String, sessionId: String, completion: @escaping (_ data: AdminSessionsRevokeResponse?, _ error: Error?) -> Void)
```

Revoke a session

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let sessionId = "sessionId_example" // String | 

// Revoke a session
AdminSessionsAPI.adminSessionsRevoke(orgId: orgId, sessionId: sessionId) { (response, error) in
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
 **sessionId** | **String** |  | 

### Return type

[**AdminSessionsRevokeResponse**](AdminSessionsRevokeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSessionsRevokeAll**
```swift
    open class func adminSessionsRevokeAll(orgId: String, adminSessionsRevokeAllRequest: AdminSessionsRevokeAllRequest, completion: @escaping (_ data: AdminSessionsRevokeAllResponse?, _ error: Error?) -> Void)
```

Revoke every session in the tenant

Signs out all users. Requires `confirm: true` in the body.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let adminSessionsRevokeAllRequest = AdminSessionsRevokeAllRequest(confirm: true) // AdminSessionsRevokeAllRequest | 

// Revoke every session in the tenant
AdminSessionsAPI.adminSessionsRevokeAll(orgId: orgId, adminSessionsRevokeAllRequest: adminSessionsRevokeAllRequest) { (response, error) in
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
 **adminSessionsRevokeAllRequest** | [**AdminSessionsRevokeAllRequest**](AdminSessionsRevokeAllRequest.md) |  | 

### Return type

[**AdminSessionsRevokeAllResponse**](AdminSessionsRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminSessionsStats**
```swift
    open class func adminSessionsStats(orgId: String, completion: @escaping (_ data: AdminSessionsStatsResponse?, _ error: Error?) -> Void)
```

Session statistics

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Session statistics
AdminSessionsAPI.adminSessionsStats(orgId: orgId) { (response, error) in
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

[**AdminSessionsStatsResponse**](AdminSessionsStatsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminTokensList**
```swift
    open class func adminTokensList(orgId: String, completion: @escaping (_ data: AdminTokensListResponse?, _ error: Error?) -> Void)
```

List access tokens

Paginated OAuth access tokens issued by the tenant's clients. Filters: `revoked` (bool), `clientId`, `userId`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List access tokens
AdminSessionsAPI.adminTokensList(orgId: orgId) { (response, error) in
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

[**AdminTokensListResponse**](AdminTokensListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminTokensRevoke**
```swift
    open class func adminTokensRevoke(orgId: String, tokenId: String, completion: @escaping (_ data: AdminTokensRevokeResponse?, _ error: Error?) -> Void)
```

Revoke a token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let tokenId = "tokenId_example" // String | 

// Revoke a token
AdminSessionsAPI.adminTokensRevoke(orgId: orgId, tokenId: tokenId) { (response, error) in
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
 **tokenId** | **String** |  | 

### Return type

[**AdminTokensRevokeResponse**](AdminTokensRevokeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminUserSessionsList**
```swift
    open class func adminUserSessionsList(orgId: String, userId: String, completion: @escaping (_ data: AdminUserSessionsListResponse?, _ error: Error?) -> Void)
```

List a user's active sessions

All active sessions of one user (UUID or email), returned as a single page.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// List a user's active sessions
AdminSessionsAPI.adminUserSessionsList(orgId: orgId, userId: userId) { (response, error) in
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

### Return type

[**AdminUserSessionsListResponse**](AdminUserSessionsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminUserSessionsRevokeAll**
```swift
    open class func adminUserSessionsRevokeAll(orgId: String, userId: String, completion: @escaping (_ data: AdminUserSessionsRevokeAllResponse?, _ error: Error?) -> Void)
```

Revoke all sessions of a user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Revoke all sessions of a user
AdminSessionsAPI.adminUserSessionsRevokeAll(orgId: orgId, userId: userId) { (response, error) in
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

### Return type

[**AdminUserSessionsRevokeAllResponse**](AdminUserSessionsRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminUserSessionsRevokePost**
```swift
    open class func adminUserSessionsRevokePost(orgId: String, userId: String, completion: @escaping (_ data: AdminUserSessionsRevokePostResponse?, _ error: Error?) -> Void)
```

Revoke all sessions of a user (POST alias)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Revoke all sessions of a user (POST alias)
AdminSessionsAPI.adminUserSessionsRevokePost(orgId: orgId, userId: userId) { (response, error) in
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

### Return type

[**AdminUserSessionsRevokePostResponse**](AdminUserSessionsRevokePostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminUserTokensRevokeAll**
```swift
    open class func adminUserTokensRevokeAll(orgId: String, userId: String, completion: @escaping (_ data: AdminUserTokensRevokeAllResponse?, _ error: Error?) -> Void)
```

Revoke all tokens of a user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Revoke all tokens of a user
AdminSessionsAPI.adminUserTokensRevokeAll(orgId: orgId, userId: userId) { (response, error) in
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

### Return type

[**AdminUserTokensRevokeAllResponse**](AdminUserTokensRevokeAllResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminUserTokensRevokePost**
```swift
    open class func adminUserTokensRevokePost(orgId: String, userId: String, completion: @escaping (_ data: AdminUserTokensRevokePostResponse?, _ error: Error?) -> Void)
```

Revoke all tokens of a user (POST alias)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let userId = "userId_example" // String | 

// Revoke all tokens of a user (POST alias)
AdminSessionsAPI.adminUserTokensRevokePost(orgId: orgId, userId: userId) { (response, error) in
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

### Return type

[**AdminUserTokensRevokePostResponse**](AdminUserTokensRevokePostResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

