# AdminAgentsAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminAgentsActivate**](AdminAgentsAPI.md#adminagentsactivate) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/activate | Activate an agent
[**adminAgentsAgentsDisable**](AdminAgentsAPI.md#adminagentsagentsdisable) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/disable | Disable agent
[**adminAgentsAgentsEnable**](AdminAgentsAPI.md#adminagentsagentsenable) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/enable | Enable agent
[**adminAgentsAgentsRotateKey**](AdminAgentsAPI.md#adminagentsagentsrotatekey) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-key | Rotate agent API key
[**adminAgentsCreate**](AdminAgentsAPI.md#adminagentscreate) | **POST** /orgs/{orgId}/api/v1/admin/agents | Create a new agent
[**adminAgentsDeactivate**](AdminAgentsAPI.md#adminagentsdeactivate) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/deactivate | Deactivate an agent
[**adminAgentsDelete**](AdminAgentsAPI.md#adminagentsdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Delete an agent
[**adminAgentsGenerateToken**](AdminAgentsAPI.md#adminagentsgeneratetoken) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/token | Generate a token for the agent
[**adminAgentsGet**](AdminAgentsAPI.md#adminagentsget) | **GET** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Get a single agent by ID or agentId
[**adminAgentsGetScopes**](AdminAgentsAPI.md#adminagentsgetscopes) | **GET** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Get agent scopes/capabilities
[**adminAgentsList**](AdminAgentsAPI.md#adminagentslist) | **GET** /orgs/{orgId}/api/v1/admin/agents | List all agents in the tenant
[**adminAgentsRevokeKey**](AdminAgentsAPI.md#adminagentsrevokekey) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/revoke-key | Revoke agent API key (nullify it so it can no longer authenticate)
[**adminAgentsRotateCredentials**](AdminAgentsAPI.md#adminagentsrotatecredentials) | **POST** /orgs/{orgId}/api/v1/admin/agents/{agentId}/rotate-credentials | Rotate agent credentials
[**adminAgentsSetScopes**](AdminAgentsAPI.md#adminagentssetscopes) | **PUT** /orgs/{orgId}/api/v1/admin/agents/{agentId}/scopes | Update agent scopes/capabilities
[**patchAdminAgentsUpdate**](AdminAgentsAPI.md#patchadminagentsupdate) | **PATCH** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent
[**putAdminAgentsUpdate**](AdminAgentsAPI.md#putadminagentsupdate) | **PUT** /orgs/{orgId}/api/v1/admin/agents/{agentId} | Update an existing agent


# **adminAgentsActivate**
```swift
    open class func adminAgentsActivate(orgId: String, agentId: String, completion: @escaping (_ data: AdminAgentsActivateResponse?, _ error: Error?) -> Void)
```

Activate an agent

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let agentId = "agentId_example" // String | 

// Activate an agent
AdminAgentsAPI.adminAgentsActivate(orgId: orgId, agentId: agentId) { (response, error) in
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
 **agentId** | **String** |  | 

### Return type

[**AdminAgentsActivateResponse**](AdminAgentsActivateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsAgentsDisable**
```swift
    open class func adminAgentsAgentsDisable(orgId: String, agentId: String, completion: @escaping (_ data: AdminAgentsAgentsDisableResponse?, _ error: Error?) -> Void)
```

Disable agent

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let agentId = "agentId_example" // String | 

// Disable agent
AdminAgentsAPI.adminAgentsAgentsDisable(orgId: orgId, agentId: agentId) { (response, error) in
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
 **agentId** | **String** |  | 

### Return type

[**AdminAgentsAgentsDisableResponse**](AdminAgentsAgentsDisableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsAgentsEnable**
```swift
    open class func adminAgentsAgentsEnable(orgId: String, agentId: String, completion: @escaping (_ data: AdminAgentsAgentsEnableResponse?, _ error: Error?) -> Void)
```

Enable agent

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let agentId = "agentId_example" // String | 

// Enable agent
AdminAgentsAPI.adminAgentsAgentsEnable(orgId: orgId, agentId: agentId) { (response, error) in
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
 **agentId** | **String** |  | 

### Return type

[**AdminAgentsAgentsEnableResponse**](AdminAgentsAgentsEnableResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsAgentsRotateKey**
```swift
    open class func adminAgentsAgentsRotateKey(orgId: String, agentId: String, completion: @escaping (_ data: AdminAgentsAgentsRotateKeyResponse?, _ error: Error?) -> Void)
```

Rotate agent API key

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let agentId = "agentId_example" // String | 

// Rotate agent API key
AdminAgentsAPI.adminAgentsAgentsRotateKey(orgId: orgId, agentId: agentId) { (response, error) in
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
 **agentId** | **String** |  | 

### Return type

[**AdminAgentsAgentsRotateKeyResponse**](AdminAgentsAgentsRotateKeyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsCreate**
```swift
    open class func adminAgentsCreate(orgId: String, adminAgentsCreateRequest: AdminAgentsCreateRequest, completion: @escaping (_ data: AdminAgentsCreateResponse?, _ error: Error?) -> Void)
```

Create a new agent

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let adminAgentsCreateRequest = AdminAgentsCreateRequest(name: "name_example", description: "description_example", capabilities: ["capabilities_example"]) // AdminAgentsCreateRequest | 

// Create a new agent
AdminAgentsAPI.adminAgentsCreate(orgId: orgId, adminAgentsCreateRequest: adminAgentsCreateRequest) { (response, error) in
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
 **adminAgentsCreateRequest** | [**AdminAgentsCreateRequest**](AdminAgentsCreateRequest.md) |  | 

### Return type

[**AdminAgentsCreateResponse**](AdminAgentsCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsDeactivate**
```swift
    open class func adminAgentsDeactivate(orgId: String, agentId: String, completion: @escaping (_ data: AdminAgentsDeactivateResponse?, _ error: Error?) -> Void)
```

Deactivate an agent

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let agentId = "agentId_example" // String | 

// Deactivate an agent
AdminAgentsAPI.adminAgentsDeactivate(orgId: orgId, agentId: agentId) { (response, error) in
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
 **agentId** | **String** |  | 

### Return type

[**AdminAgentsDeactivateResponse**](AdminAgentsDeactivateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsDelete**
```swift
    open class func adminAgentsDelete(orgId: String, agentId: String, completion: @escaping (_ data: AdminAgentsDeleteResponse?, _ error: Error?) -> Void)
```

Delete an agent

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let agentId = "agentId_example" // String | 

// Delete an agent
AdminAgentsAPI.adminAgentsDelete(orgId: orgId, agentId: agentId) { (response, error) in
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
 **agentId** | **String** |  | 

### Return type

[**AdminAgentsDeleteResponse**](AdminAgentsDeleteResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsGenerateToken**
```swift
    open class func adminAgentsGenerateToken(orgId: String, agentId: String, adminAgentsGenerateTokenRequest: AdminAgentsGenerateTokenRequest? = nil, completion: @escaping (_ data: AdminAgentsGenerateTokenResponse?, _ error: Error?) -> Void)
```

Generate a token for the agent

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let agentId = "agentId_example" // String | 
let adminAgentsGenerateTokenRequest = AdminAgentsGenerateTokenRequest(expiresIn: 123, scopes: ["scopes_example"]) // AdminAgentsGenerateTokenRequest |  (optional)

// Generate a token for the agent
AdminAgentsAPI.adminAgentsGenerateToken(orgId: orgId, agentId: agentId, adminAgentsGenerateTokenRequest: adminAgentsGenerateTokenRequest) { (response, error) in
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
 **agentId** | **String** |  | 
 **adminAgentsGenerateTokenRequest** | [**AdminAgentsGenerateTokenRequest**](AdminAgentsGenerateTokenRequest.md) |  | [optional] 

### Return type

[**AdminAgentsGenerateTokenResponse**](AdminAgentsGenerateTokenResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsGet**
```swift
    open class func adminAgentsGet(orgId: String, agentId: String, completion: @escaping (_ data: AdminAgentsGetResponse?, _ error: Error?) -> Void)
```

Get a single agent by ID or agentId

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let agentId = "agentId_example" // String | 

// Get a single agent by ID or agentId
AdminAgentsAPI.adminAgentsGet(orgId: orgId, agentId: agentId) { (response, error) in
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
 **agentId** | **String** |  | 

### Return type

[**AdminAgentsGetResponse**](AdminAgentsGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsGetScopes**
```swift
    open class func adminAgentsGetScopes(orgId: String, agentId: String, completion: @escaping (_ data: AdminAgentsGetScopesResponse?, _ error: Error?) -> Void)
```

Get agent scopes/capabilities

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let agentId = "agentId_example" // String | 

// Get agent scopes/capabilities
AdminAgentsAPI.adminAgentsGetScopes(orgId: orgId, agentId: agentId) { (response, error) in
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
 **agentId** | **String** |  | 

### Return type

[**AdminAgentsGetScopesResponse**](AdminAgentsGetScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsList**
```swift
    open class func adminAgentsList(orgId: String, completion: @escaping (_ data: AdminAgentsListResponse?, _ error: Error?) -> Void)
```

List all agents in the tenant

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List all agents in the tenant
AdminAgentsAPI.adminAgentsList(orgId: orgId) { (response, error) in
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

[**AdminAgentsListResponse**](AdminAgentsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsRevokeKey**
```swift
    open class func adminAgentsRevokeKey(orgId: String, agentId: String, completion: @escaping (_ data: AdminAgentsRevokeKeyResponse?, _ error: Error?) -> Void)
```

Revoke agent API key (nullify it so it can no longer authenticate)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let agentId = "agentId_example" // String | 

// Revoke agent API key (nullify it so it can no longer authenticate)
AdminAgentsAPI.adminAgentsRevokeKey(orgId: orgId, agentId: agentId) { (response, error) in
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
 **agentId** | **String** |  | 

### Return type

[**AdminAgentsRevokeKeyResponse**](AdminAgentsRevokeKeyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsRotateCredentials**
```swift
    open class func adminAgentsRotateCredentials(orgId: String, agentId: String, completion: @escaping (_ data: AdminAgentsRotateCredentialsResponse?, _ error: Error?) -> Void)
```

Rotate agent credentials

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let agentId = "agentId_example" // String | 

// Rotate agent credentials
AdminAgentsAPI.adminAgentsRotateCredentials(orgId: orgId, agentId: agentId) { (response, error) in
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
 **agentId** | **String** |  | 

### Return type

[**AdminAgentsRotateCredentialsResponse**](AdminAgentsRotateCredentialsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminAgentsSetScopes**
```swift
    open class func adminAgentsSetScopes(orgId: String, agentId: String, adminAgentsSetScopesRequest: AdminAgentsSetScopesRequest, completion: @escaping (_ data: AdminAgentsSetScopesResponse?, _ error: Error?) -> Void)
```

Update agent scopes/capabilities

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let agentId = "agentId_example" // String | 
let adminAgentsSetScopesRequest = AdminAgentsSetScopesRequest(scopes: ["scopes_example"]) // AdminAgentsSetScopesRequest | 

// Update agent scopes/capabilities
AdminAgentsAPI.adminAgentsSetScopes(orgId: orgId, agentId: agentId, adminAgentsSetScopesRequest: adminAgentsSetScopesRequest) { (response, error) in
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
 **agentId** | **String** |  | 
 **adminAgentsSetScopesRequest** | [**AdminAgentsSetScopesRequest**](AdminAgentsSetScopesRequest.md) |  | 

### Return type

[**AdminAgentsSetScopesResponse**](AdminAgentsSetScopesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAdminAgentsUpdate**
```swift
    open class func patchAdminAgentsUpdate(orgId: String, agentId: String, putAdminAgentsUpdateRequest: PutAdminAgentsUpdateRequest, completion: @escaping (_ data: PutAdminAgentsUpdateResponse?, _ error: Error?) -> Void)
```

Update an existing agent

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let agentId = "agentId_example" // String | 
let putAdminAgentsUpdateRequest = PutAdminAgentsUpdateRequest(name: "name_example", description: "description_example", capabilities: ["capabilities_example"]) // PutAdminAgentsUpdateRequest | 

// Update an existing agent
AdminAgentsAPI.patchAdminAgentsUpdate(orgId: orgId, agentId: agentId, putAdminAgentsUpdateRequest: putAdminAgentsUpdateRequest) { (response, error) in
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
 **agentId** | **String** |  | 
 **putAdminAgentsUpdateRequest** | [**PutAdminAgentsUpdateRequest**](PutAdminAgentsUpdateRequest.md) |  | 

### Return type

[**PutAdminAgentsUpdateResponse**](PutAdminAgentsUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAdminAgentsUpdate**
```swift
    open class func putAdminAgentsUpdate(orgId: String, agentId: String, putAdminAgentsUpdateRequest: PutAdminAgentsUpdateRequest, completion: @escaping (_ data: PutAdminAgentsUpdateResponse?, _ error: Error?) -> Void)
```

Update an existing agent

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let agentId = "agentId_example" // String | 
let putAdminAgentsUpdateRequest = PutAdminAgentsUpdateRequest(name: "name_example", description: "description_example", capabilities: ["capabilities_example"]) // PutAdminAgentsUpdateRequest | 

// Update an existing agent
AdminAgentsAPI.putAdminAgentsUpdate(orgId: orgId, agentId: agentId, putAdminAgentsUpdateRequest: putAdminAgentsUpdateRequest) { (response, error) in
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
 **agentId** | **String** |  | 
 **putAdminAgentsUpdateRequest** | [**PutAdminAgentsUpdateRequest**](PutAdminAgentsUpdateRequest.md) |  | 

### Return type

[**PutAdminAgentsUpdateResponse**](PutAdminAgentsUpdateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

