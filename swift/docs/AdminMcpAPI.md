# AdminMcpAPI

All URIs are relative to *https://app.lumoauth.dev*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminMcpServersCreate**](AdminMcpAPI.md#adminmcpserverscreate) | **POST** /orgs/{orgId}/api/v1/admin/mcp/servers | Register an MCP server
[**adminMcpServersDelete**](AdminMcpAPI.md#adminmcpserversdelete) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Delete an MCP server
[**adminMcpServersGet**](AdminMcpAPI.md#adminmcpserversget) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId} | Get an MCP server
[**adminMcpServersGrantsList**](AdminMcpAPI.md#adminmcpserversgrantslist) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants | List the agents allowed to call tools of an MCP server
[**adminMcpServersGrantsRemove**](AdminMcpAPI.md#adminmcpserversgrantsremove) | **DELETE** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants/{agentId} | Remove every grant of an agent on an MCP server
[**adminMcpServersGrantsSet**](AdminMcpAPI.md#adminmcpserversgrantsset) | **PUT** /orgs/{orgId}/api/v1/admin/mcp/servers/{serverId}/grants/{agentId} | Set the tools of an MCP server that an agent may call
[**adminMcpServersList**](AdminMcpAPI.md#adminmcpserverslist) | **GET** /orgs/{orgId}/api/v1/admin/mcp/servers | List MCP servers


# **adminMcpServersCreate**
```swift
    open class func adminMcpServersCreate(orgId: String, completion: @escaping (_ data: AdminMcpServersCreateResponse?, _ error: Error?) -> Void)
```

Register an MCP server

The `resource_uri` is stored and returned in canonical form: lower-case scheme and host, no default port, no trailing slash, no dot segments. Token requests match it in any equivalent spelling.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// Register an MCP server
AdminMcpAPI.adminMcpServersCreate(orgId: orgId) { (response, error) in
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

[**AdminMcpServersCreateResponse**](AdminMcpServersCreateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMcpServersDelete**
```swift
    open class func adminMcpServersDelete(orgId: String, serverId: String, completion: @escaping (_ data: MessageResponse?, _ error: Error?) -> Void)
```

Delete an MCP server

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let serverId = "serverId_example" // String | 

// Delete an MCP server
AdminMcpAPI.adminMcpServersDelete(orgId: orgId, serverId: serverId) { (response, error) in
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

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMcpServersGet**
```swift
    open class func adminMcpServersGet(orgId: String, serverId: String, completion: @escaping (_ data: AdminMcpServersGetResponse?, _ error: Error?) -> Void)
```

Get an MCP server

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let serverId = "serverId_example" // String | 

// Get an MCP server
AdminMcpAPI.adminMcpServersGet(orgId: orgId, serverId: serverId) { (response, error) in
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

[**AdminMcpServersGetResponse**](AdminMcpServersGetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMcpServersGrantsList**
```swift
    open class func adminMcpServersGrantsList(orgId: String, serverId: String, agentId: String? = nil, completion: @escaping (_ data: AdminMcpServersGrantsListResponse?, _ error: Error?) -> Void)
```

List the agents allowed to call tools of an MCP server

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let serverId = "serverId_example" // String | 
let agentId = "agentId_example" // String | Only the grants of this agent (agentId or numeric id). (optional)

// List the agents allowed to call tools of an MCP server
AdminMcpAPI.adminMcpServersGrantsList(orgId: orgId, serverId: serverId, agentId: agentId) { (response, error) in
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
 **agentId** | **String** | Only the grants of this agent (agentId or numeric id). | [optional] 

### Return type

[**AdminMcpServersGrantsListResponse**](AdminMcpServersGrantsListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMcpServersGrantsRemove**
```swift
    open class func adminMcpServersGrantsRemove(orgId: String, serverId: String, agentId: String, completion: @escaping (_ data: AdminMcpServersGrantsRemoveResponse?, _ error: Error?) -> Void)
```

Remove every grant of an agent on an MCP server

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let serverId = "serverId_example" // String | 
let agentId = "agentId_example" // String | 

// Remove every grant of an agent on an MCP server
AdminMcpAPI.adminMcpServersGrantsRemove(orgId: orgId, serverId: serverId, agentId: agentId) { (response, error) in
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
 **agentId** | **String** |  | 

### Return type

[**AdminMcpServersGrantsRemoveResponse**](AdminMcpServersGrantsRemoveResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMcpServersGrantsSet**
```swift
    open class func adminMcpServersGrantsSet(orgId: String, serverId: String, agentId: String, adminMcpServersGrantsSetRequest: AdminMcpServersGrantsSetRequest, completion: @escaping (_ data: AdminMcpServersGrantsSetResponse?, _ error: Error?) -> Void)
```

Set the tools of an MCP server that an agent may call

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 
let serverId = "serverId_example" // String | 
let agentId = "agentId_example" // String | 
let adminMcpServersGrantsSetRequest = AdminMcpServersGrantsSetRequest(tools: ["tools_example"], allTools: false) // AdminMcpServersGrantsSetRequest | 

// Set the tools of an MCP server that an agent may call
AdminMcpAPI.adminMcpServersGrantsSet(orgId: orgId, serverId: serverId, agentId: agentId, adminMcpServersGrantsSetRequest: adminMcpServersGrantsSetRequest) { (response, error) in
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
 **agentId** | **String** |  | 
 **adminMcpServersGrantsSetRequest** | [**AdminMcpServersGrantsSetRequest**](AdminMcpServersGrantsSetRequest.md) |  | 

### Return type

[**AdminMcpServersGrantsSetResponse**](AdminMcpServersGrantsSetResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminMcpServersList**
```swift
    open class func adminMcpServersList(orgId: String, completion: @escaping (_ data: AdminMcpServersListResponse?, _ error: Error?) -> Void)
```

List MCP servers

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LumoAuthAPIClient

let orgId = "orgId_example" // String | 

// List MCP servers
AdminMcpAPI.adminMcpServersList(orgId: orgId) { (response, error) in
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

[**AdminMcpServersListResponse**](AdminMcpServersListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

