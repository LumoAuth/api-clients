

# McpServer


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **Integer** |  |  [optional] |
|**serverId** | **String** |  |  [optional] |
|**name** | **String** |  |  [optional] |
|**description** | **String** |  |  [optional] |
|**resourceUri** | **URI** |  |  [optional] |
|**endpointUrl** | **URI** |  |  [optional] |
|**transport** | **String** |  |  [optional] |
|**transportDeprecated** | **Boolean** | True for http_sse, deprecated in MCP 2026-07-28; migrate to http_streamable. |  [optional] |
|**authMode** | **String** |  |  [optional] |
|**status** | **String** |  |  [optional] |
|**scopesSupported** | **List&lt;String&gt;** |  |  [optional] |
|**scopeDescriptions** | **Map&lt;String, String&gt;** |  |  [optional] |
|**basicScopes** | **List&lt;String&gt;** | Subset of scopes_supported advertised in the 401 challenge and in protected resource metadata. Empty &#x3D; the whole vocabulary. |  [optional] |
|**allowedClientIds** | **List&lt;String&gt;** |  |  [optional] |
|**toolAuthorizerClientIds** | **List&lt;String&gt;** | The MCP server&#39;s own OAuth clients allowed to call the per-tool authorization endpoint. |  [optional] |
|**requirePkce** | **Boolean** |  |  [optional] |
|**requireResourceParam** | **Boolean** |  |  [optional] |
|**requireDpop** | **Boolean** |  |  [optional] |
|**tokenLifetime** | **Integer** |  |  [optional] |
|**posture** | [**McpServerPosture**](McpServerPosture.md) |  |  [optional] |
|**capabilities** | **List&lt;String&gt;** |  |  [optional] |
|**createdAt** | **OffsetDateTime** |  |  [optional] |



