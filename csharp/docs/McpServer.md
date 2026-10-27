# LumoAuth.ApiClient.Model.McpServer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int** |  | [optional] 
**ServerId** | **string** |  | [optional] 
**Name** | **string** |  | [optional] 
**Description** | **string** |  | [optional] 
**ResourceUri** | **string** |  | [optional] 
**EndpointUrl** | **string** |  | [optional] 
**Transport** | **string** |  | [optional] 
**TransportDeprecated** | **bool** | True for http_sse, deprecated in MCP 2026-07-28; migrate to http_streamable. | [optional] 
**AuthMode** | **string** |  | [optional] 
**Status** | **string** |  | [optional] 
**ScopesSupported** | **List&lt;string&gt;** |  | [optional] 
**ScopeDescriptions** | **Dictionary&lt;string, string&gt;** |  | [optional] 
**BasicScopes** | **List&lt;string&gt;** | Subset of scopes_supported advertised in the 401 challenge and in protected resource metadata. Empty &#x3D; the whole vocabulary. | [optional] 
**AllowedClientIds** | **List&lt;string&gt;** |  | [optional] 
**ToolAuthorizerClientIds** | **List&lt;string&gt;** | The MCP server&#39;s own OAuth clients allowed to call the per-tool authorization endpoint. | [optional] 
**RequirePkce** | **bool** |  | [optional] 
**RequireResourceParam** | **bool** |  | [optional] 
**RequireDpop** | **bool** |  | [optional] 
**TokenLifetime** | **int** |  | [optional] 
**Posture** | [**McpServerPosture**](McpServerPosture.md) |  | [optional] 
**Capabilities** | **List&lt;string&gt;** |  | [optional] 
**CreatedAt** | **DateTime** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

