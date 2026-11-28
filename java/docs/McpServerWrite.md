

# McpServerWrite

Fields of POST /admin/mcp/servers (name and resource_uri are required there) and PATCH|PUT /admin/mcp/servers/{serverId} (only the fields that are sent change; resource_uri cannot change). The same rules as the portal.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** |  |  [optional] |
|**resourceUri** | **URI** | RFC 8707 resource: https (http only for loopback), no fragment or user info, unique in the organization. Stored in canonical form. |  [optional] |
|**description** | **String** |  |  [optional] |
|**endpointUrl** | **String** | Address that the server is reached at, when it differs from resource_uri. |  [optional] |
|**transport** | [**TransportEnum**](#TransportEnum) |  |  [optional] |
|**authMode** | [**AuthModeEnum**](#AuthModeEnum) |  |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | Update only; a new server is active. |  [optional] |
|**scopesSupported** | [**McpServerWriteScopesSupported**](McpServerWriteScopesSupported.md) |  |  [optional] |
|**basicScopes** | [**McpServerWriteBasicScopes**](McpServerWriteBasicScopes.md) |  |  [optional] |
|**scopeDescriptions** | **Map&lt;String, String&gt;** | Text per scope of scopes_supported, for the portal and the consent page. |  [optional] |
|**allowedClientIds** | **List&lt;String&gt;** | Clients of this organization that may get tokens for the server; every client when empty. |  [optional] |
|**toolAuthorizerClientIds** | **List&lt;String&gt;** | The server&#39;s own clients that may call the per-tool authorization endpoint. |  [optional] |
|**tokenLifetime** | **Integer** |  |  [optional] |
|**requirePkce** | **Boolean** |  |  [optional] |
|**requireResourceParam** | **Boolean** |  |  [optional] |
|**requireDpop** | **Boolean** |  |  [optional] |



## Enum: TransportEnum

| Name | Value |
|---- | -----|
| HTTP_STREAMABLE | &quot;http_streamable&quot; |
| HTTP_SSE | &quot;http_sse&quot; |
| STDIO | &quot;stdio&quot; |



## Enum: AuthModeEnum

| Name | Value |
|---- | -----|
| OAUTH | &quot;oauth&quot; |
| NONE | &quot;none&quot; |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| ACTIVE | &quot;active&quot; |
| INACTIVE | &quot;inactive&quot; |
| SUSPENDED | &quot;suspended&quot; |



