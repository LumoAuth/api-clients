# McpAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProtectedResourceMetadata**](McpAPI.md#getprotectedresourcemetadata) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource/mcp/{serverId} | MCP server protected resource metadata (RFC 9728)
[**getProtectedResourceMetadataRoot**](McpAPI.md#getprotectedresourcemetadataroot) | **GET** /orgs/{orgId}/api/v1/.well-known/oauth-protected-resource | Organization-level protected resource metadata (RFC 9728)
[**getServer**](McpAPI.md#getserver) | **GET** /orgs/{orgId}/api/v1/mcp/servers/{serverId} | REST API: Get a specific MCP server.
[**getServerChallenge**](McpAPI.md#getserverchallenge) | **GET** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP server authorization challenge
[**listServers**](McpAPI.md#listservers) | **GET** /orgs/{orgId}/api/v1/mcp/servers | REST API: List MCP servers for a tenant.
[**postServerChallenge**](McpAPI.md#postserverchallenge) | **POST** /orgs/{orgId}/api/v1/mcp/{serverId}/challenge | Simulated MCP server authorization challenge (POST)


# **getProtectedResourceMetadata**
```swift
    open class func getProtectedResourceMetadata(orgId: String, serverId: String, completion: @escaping (_ data: ProtectedResourceMetadata?, _ error: Error?) -> Void)
```

MCP server protected resource metadata (RFC 9728)

Public discovery document for one MCP server, served both under the organization prefix and at the root-level well-known suffix form (MCP 2025-11-25). Cacheable (Cache-Control: public, max-age=3600).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let serverId = "serverId_example" // String | 

// MCP server protected resource metadata (RFC 9728)
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

[**ProtectedResourceMetadata**](ProtectedResourceMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProtectedResourceMetadataRoot**
```swift
    open class func getProtectedResourceMetadataRoot(orgId: String, completion: @escaping (_ data: GetProtectedResourceMetadataRoot200Response?, _ error: Error?) -> Void)
```

Organization-level protected resource metadata (RFC 9728)

Root fallback: with exactly one protected MCP server its metadata document is returned directly; with several, a list of resources pointing at their per-server metadata URLs. Public and cacheable (Cache-Control: public, max-age=3600).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Organization-level protected resource metadata (RFC 9728)
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

[**GetProtectedResourceMetadataRoot200Response**](GetProtectedResourceMetadataRoot200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
    open class func getServerChallenge(orgId: String, serverId: String, completion: @escaping (_ data: GetServerChallengeResponse?, _ error: Error?) -> Void)
```

Simulated MCP server authorization challenge

Test endpoint that behaves like the MCP server's protected endpoint: validates the presented Bearer / DPoP access token (audience, scopes, DPoP binding) or answers the MCP-spec 401 challenge pointing at the protected resource metadata.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let serverId = "serverId_example" // String | 

// Simulated MCP server authorization challenge
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

[**GetServerChallengeResponse**](GetServerChallengeResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
    open class func postServerChallenge(orgId: String, serverId: String, completion: @escaping (_ data: GetServerChallengeResponse?, _ error: Error?) -> Void)
```

Simulated MCP server authorization challenge (POST)

Identical to GET; the HTTP method is only recorded in the audit trail.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let serverId = "serverId_example" // String | 

// Simulated MCP server authorization challenge (POST)
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

[**GetServerChallengeResponse**](GetServerChallengeResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

