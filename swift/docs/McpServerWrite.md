# McpServerWrite

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**resourceUri** | **String** | RFC 8707 resource: https (http only for loopback), no fragment or user info, unique in the organization. Stored in canonical form. | [optional] 
**description** | **String** |  | [optional] 
**endpointUrl** | **String** | Address that the server is reached at, when it differs from resource_uri. | [optional] 
**transport** | **String** |  | [optional] [default to .httpStreamable]
**authMode** | **String** |  | [optional] [default to .oauth]
**status** | **String** | Update only; a new server is active. | [optional] 
**scopesSupported** | [**McpServerWriteScopesSupported**](McpServerWriteScopesSupported.md) |  | [optional] 
**basicScopes** | [**McpServerWriteBasicScopes**](McpServerWriteBasicScopes.md) |  | [optional] 
**scopeDescriptions** | **[String: String]** | Text per scope of scopes_supported, for the portal and the consent page. | [optional] 
**allowedClientIds** | **[String]** | Clients of this organization that may get tokens for the server; every client when empty. | [optional] 
**toolAuthorizerClientIds** | **[String]** | The server&#39;s own clients that may call the per-tool authorization endpoint. | [optional] 
**tokenLifetime** | **Int** |  | [optional] [default to 3600]
**requirePkce** | **Bool** |  | [optional] [default to true]
**requireResourceParam** | **Bool** |  | [optional] [default to true]
**requireDpop** | **Bool** |  | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


