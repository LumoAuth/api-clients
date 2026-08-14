# McpAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProtectedResourceMetadata**](McpAPI.md#getprotectedresourcemetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource/mcp/{serverId} | OAuth 2.0 Protected Resource Metadata (RFC 9728)
[**getProtectedResourceMetadataRoot**](McpAPI.md#getprotectedresourcemetadataroot) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource | Root-level Protected Resource Metadata
[**getServer**](McpAPI.md#getserver) | **GET** /orgs/{orgId}/api/v1/mcp/servers/{serverId} | REST API: Get a specific MCP server.
[**getServerChallenge**](McpAPI.md#getserverchallenge) | **GET** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP Server 401 challenge endpoint.
[**listServers**](McpAPI.md#listservers) | **GET** /orgs/{orgId}/api/v1/mcp/servers | REST API: List MCP servers for a tenant.
[**postServerChallenge**](McpAPI.md#postserverchallenge) | **POST** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP Server 401 challenge endpoint.


# **getProtectedResourceMetadata**
```swift
    open class func getProtectedResourceMetadata(orgId: String, serverId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

OAuth 2.0 Protected Resource Metadata (RFC 9728)

Well-known endpoint for MCP servers with path-specific metadata. Example: /.well-known/oauth-protected-resource/mcp/{serverId}  MCP clients MUST support this discovery mechanism per the MCP Authorization spec.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let serverId = "serverId_example" // String | 

// OAuth 2.0 Protected Resource Metadata (RFC 9728)
McpAPI.getProtectedResourceMetadata(orgId: orgId, serverId: serverId) { (response, error) in
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
 **serverId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProtectedResourceMetadataRoot**
```swift
    open class func getProtectedResourceMetadataRoot(orgId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Root-level Protected Resource Metadata

Fallback well-known endpoint per RFC 9728 when no path-specific metadata exists. Returns metadata for the first active MCP server, or a list of available servers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Root-level Protected Resource Metadata
McpAPI.getProtectedResourceMetadataRoot(orgId: orgId) { (response, error) in
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServer**
```swift
    open class func getServer(orgId: String, serverId: String, completion: @escaping (_ data: GetServerResponse?, _ error: Error?) -> Void)
```

REST API: Get a specific MCP server.

Management endpoint — requires tenant admin authentication.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let serverId = "serverId_example" // String | 

// REST API: Get a specific MCP server.
McpAPI.getServer(orgId: orgId, serverId: serverId) { (response, error) in
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
 **serverId** | **String** |  | 

### Return type

[**GetServerResponse**](GetServerResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServerChallenge**
```swift
    open class func getServerChallenge(orgId: String, serverId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Simulated MCP Server 401 challenge endpoint.

When an MCP client sends an unauthenticated request, the MCP server MUST respond with 401 including WWW-Authenticate header per the spec.  This endpoint allows testing the challenge flow.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let serverId = "serverId_example" // String | 

// Simulated MCP Server 401 challenge endpoint.
McpAPI.getServerChallenge(orgId: orgId, serverId: serverId) { (response, error) in
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
 **serverId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listServers**
```swift
    open class func listServers(orgId: String, completion: @escaping (_ data: ListServersResponse?, _ error: Error?) -> Void)
```

REST API: List MCP servers for a tenant.

Management endpoint — requires tenant admin authentication.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// REST API: List MCP servers for a tenant.
McpAPI.listServers(orgId: orgId) { (response, error) in
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

[**ListServersResponse**](ListServersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postServerChallenge**
```swift
    open class func postServerChallenge(orgId: String, serverId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Simulated MCP Server 401 challenge endpoint.

When an MCP client sends an unauthenticated request, the MCP server MUST respond with 401 including WWW-Authenticate header per the spec.  This endpoint allows testing the challenge flow.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let serverId = "serverId_example" // String | 

// Simulated MCP Server 401 challenge endpoint.
McpAPI.postServerChallenge(orgId: orgId, serverId: serverId) { (response, error) in
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
 **serverId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

