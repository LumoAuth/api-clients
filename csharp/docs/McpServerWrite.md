# LumoAuth.ApiClient.Model.McpServerWrite
Fields of POST /admin/mcp/servers (name and resource_uri are required there) and PATCH|PUT /admin/mcp/servers/{serverId} (only the fields that are sent change; resource_uri cannot change). The same rules as the portal.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** |  | [optional] 
**ResourceUri** | **string** | RFC 8707 resource: https (http only for loopback), no fragment or user info, unique in the organization. Stored in canonical form. | [optional] 
**Description** | **string** |  | [optional] 
**EndpointUrl** | **string** | Address that the server is reached at, when it differs from resource_uri. | [optional] 
**Transport** | **string** |  | [optional] [default to TransportEnum.HttpStreamable]
**AuthMode** | **string** |  | [optional] [default to AuthModeEnum.Oauth]
**Status** | **string** | Update only; a new server is active. | [optional] 
**ScopesSupported** | [**McpServerWriteScopesSupported**](McpServerWriteScopesSupported.md) |  | [optional] 
**BasicScopes** | [**McpServerWriteBasicScopes**](McpServerWriteBasicScopes.md) |  | [optional] 
**ScopeDescriptions** | **Dictionary&lt;string, string&gt;** | Text per scope of scopes_supported, for the portal and the consent page. | [optional] 
**AllowedClientIds** | **List&lt;string&gt;** | Clients of this organization that may get tokens for the server; every client when empty. | [optional] 
**ToolAuthorizerClientIds** | **List&lt;string&gt;** | The server&#39;s own clients that may call the per-tool authorization endpoint. | [optional] 
**TokenLifetime** | **int** |  | [optional] [default to 3600]
**RequirePkce** | **bool** |  | [optional] [default to true]
**RequireResourceParam** | **bool** |  | [optional] [default to true]
**RequireDpop** | **bool** |  | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

