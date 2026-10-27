# # McpServer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional]
**serverId** | **string** |  | [optional]
**name** | **string** |  | [optional]
**description** | **string** |  | [optional]
**resourceUri** | **string** |  | [optional]
**endpointUrl** | **string** |  | [optional]
**transport** | **string** |  | [optional]
**transportDeprecated** | **bool** | True for http_sse, deprecated in MCP 2026-07-28; migrate to http_streamable. | [optional]
**authMode** | **string** |  | [optional]
**status** | **string** |  | [optional]
**scopesSupported** | **string[]** |  | [optional]
**scopeDescriptions** | **array<string,string>** |  | [optional]
**basicScopes** | **string[]** | Subset of scopes_supported advertised in the 401 challenge and in protected resource metadata. Empty &#x3D; the whole vocabulary. | [optional]
**allowedClientIds** | **string[]** |  | [optional]
**toolAuthorizerClientIds** | **string[]** | The MCP server&#39;s own OAuth clients allowed to call the per-tool authorization endpoint. | [optional]
**requirePkce** | **bool** |  | [optional]
**requireResourceParam** | **bool** |  | [optional]
**requireDpop** | **bool** |  | [optional]
**tokenLifetime** | **int** |  | [optional]
**posture** | [**\LumoAuth\ApiClient\Model\McpServerPosture**](McpServerPosture.md) |  | [optional]
**capabilities** | **string[]** |  | [optional]
**createdAt** | **\DateTime** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
