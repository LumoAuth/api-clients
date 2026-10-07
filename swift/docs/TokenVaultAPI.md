# TokenVaultAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getConnectionToken**](TokenVaultAPI.md#getconnectiontoken) | **POST** /orgs/{orgId}/api/v1/agents/me/connections/{connectionId}/token | Fetch a live third-party access token for a connection
[**listConnections**](TokenVaultAPI.md#listconnections) | **GET** /orgs/{orgId}/api/v1/agents/me/connections | List the outbound connections this agent may use


# **getConnectionToken**
```swift
    open class func getConnectionToken(orgId: String, connectionId: String, getConnectionTokenRequest: GetConnectionTokenRequest? = nil, completion: @escaping (_ data: GetConnectionTokenResponse?, _ error: Error?) -> Void)
```

Fetch a live third-party access token for a connection

Agent bearer token required. Returns the vaulted provider access token (refreshing it when needed). Pass {\"user_id\": \"<uuid or email>\"} for a user-delegated grant — issued only when that user allowed this agent on their grant. Refresh tokens never cross this boundary. Rate limited per agent.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let connectionId = "connectionId_example" // String | 
let getConnectionTokenRequest = GetConnectionTokenRequest(userId: "userId_example") // GetConnectionTokenRequest |  (optional)

// Fetch a live third-party access token for a connection
TokenVaultAPI.getConnectionToken(orgId: orgId, connectionId: connectionId, getConnectionTokenRequest: getConnectionTokenRequest) { (response, error) in
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
 **connectionId** | **String** |  | 
 **getConnectionTokenRequest** | [**GetConnectionTokenRequest**](GetConnectionTokenRequest.md) |  | [optional] 

### Return type

[**GetConnectionTokenResponse**](GetConnectionTokenResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listConnections**
```swift
    open class func listConnections(orgId: String, completion: @escaping (_ data: ListConnectionsResponse?, _ error: Error?) -> Void)
```

List the outbound connections this agent may use

Agent bearer token required. Returns every active Token Vault connection that allows the calling agent, with grant status. No secrets are returned.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List the outbound connections this agent may use
TokenVaultAPI.listConnections(orgId: orgId) { (response, error) in
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

[**ListConnectionsResponse**](ListConnectionsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

