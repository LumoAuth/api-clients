# TokenVaultAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getConnectionToken**](TokenVaultAPI.md#getconnectiontoken) | **POST** /orgs/{orgId}/api/v1/agents/me/connections/{connectionId}/token | Fetch a live third-party access token for a connection.
[**listConnections**](TokenVaultAPI.md#listconnections) | **GET** /orgs/{orgId}/api/v1/agents/me/connections | List the connections this agent may use, with grant status. No secrets.


# **getConnectionToken**
```swift
    open class func getConnectionToken(orgId: String, connectionId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Fetch a live third-party access token for a connection.

POST /orgs/{orgId}/api/v1/agents/me/connections/{connectionId}/token Body (optional): {\"user_id\": \"<uuid or email>\"} for user-delegated grants.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let connectionId = "connectionId_example" // String | 

// Fetch a live third-party access token for a connection.
TokenVaultAPI.getConnectionToken(orgId: orgId, connectionId: connectionId) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listConnections**
```swift
    open class func listConnections(orgId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List the connections this agent may use, with grant status. No secrets.

GET /orgs/{orgId}/api/v1/agents/me/connections

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List the connections this agent may use, with grant status. No secrets.
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

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

