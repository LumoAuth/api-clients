# McpServer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | [optional] 
**serverId** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**resourceUri** | **String** |  | [optional] 
**endpointUrl** | **String** |  | [optional] 
**transport** | **String** |  | [optional] 
**transportDeprecated** | **Bool** | True for http_sse, deprecated in MCP 2026-07-28; migrate to http_streamable. | [optional] 
**authMode** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**scopesSupported** | **[String]** |  | [optional] 
**scopeDescriptions** | **[String: String]** |  | [optional] 
**basicScopes** | **[String]** | Subset of scopes_supported advertised in the 401 challenge and in protected resource metadata. Empty &#x3D; the whole vocabulary. | [optional] 
**allowedClientIds** | **[String]** |  | [optional] 
**toolAuthorizerClientIds** | **[String]** | The MCP server&#39;s own OAuth clients allowed to call the per-tool authorization endpoint. | [optional] 
**requirePkce** | **Bool** |  | [optional] 
**requireResourceParam** | **Bool** |  | [optional] 
**requireDpop** | **Bool** |  | [optional] 
**tokenLifetime** | **Int** |  | [optional] 
**posture** | [**McpServerPosture**](McpServerPosture.md) |  | [optional] 
**capabilities** | **[String]** |  | [optional] 
**createdAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


