# LumoAuthApiClient::McpServer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **server_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **resource_uri** | **String** |  | [optional] |
| **endpoint_url** | **String** |  | [optional] |
| **transport** | **String** |  | [optional] |
| **transport_deprecated** | **Boolean** | True for http_sse, deprecated in MCP 2026-07-28; migrate to http_streamable. | [optional] |
| **auth_mode** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **scopes_supported** | **Array&lt;String&gt;** |  | [optional] |
| **scope_descriptions** | **Hash&lt;String, String&gt;** |  | [optional] |
| **basic_scopes** | **Array&lt;String&gt;** | Subset of scopes_supported advertised in the 401 challenge and in protected resource metadata. Empty &#x3D; the whole vocabulary. | [optional] |
| **allowed_client_ids** | **Array&lt;String&gt;** |  | [optional] |
| **tool_authorizer_client_ids** | **Array&lt;String&gt;** | The MCP server&#39;s own OAuth clients allowed to call the per-tool authorization endpoint. | [optional] |
| **require_pkce** | **Boolean** |  | [optional] |
| **require_resource_param** | **Boolean** |  | [optional] |
| **require_dpop** | **Boolean** |  | [optional] |
| **token_lifetime** | **Integer** |  | [optional] |
| **posture** | [**McpServerPosture**](McpServerPosture.md) |  | [optional] |
| **capabilities** | **Array&lt;String&gt;** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::McpServer.new(
  id: null,
  server_id: null,
  name: null,
  description: null,
  resource_uri: null,
  endpoint_url: null,
  transport: null,
  transport_deprecated: null,
  auth_mode: null,
  status: null,
  scopes_supported: null,
  scope_descriptions: null,
  basic_scopes: null,
  allowed_client_ids: null,
  tool_authorizer_client_ids: null,
  require_pkce: null,
  require_resource_param: null,
  require_dpop: null,
  token_lifetime: null,
  posture: null,
  capabilities: null,
  created_at: null
)
```

