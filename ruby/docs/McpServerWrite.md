# LumoAuthApiClient::McpServerWrite

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **resource_uri** | **String** | RFC 8707 resource: https (http only for loopback), no fragment or user info, unique in the organization. Stored in canonical form. | [optional] |
| **description** | **String** |  | [optional] |
| **endpoint_url** | **String** | Address that the server is reached at, when it differs from resource_uri. | [optional] |
| **transport** | **String** |  | [optional][default to &#39;http_streamable&#39;] |
| **auth_mode** | **String** |  | [optional][default to &#39;oauth&#39;] |
| **status** | **String** | Update only; a new server is active. | [optional] |
| **scopes_supported** | [**McpServerWriteScopesSupported**](McpServerWriteScopesSupported.md) |  | [optional] |
| **basic_scopes** | [**McpServerWriteBasicScopes**](McpServerWriteBasicScopes.md) |  | [optional] |
| **scope_descriptions** | **Hash&lt;String, String&gt;** | Text per scope of scopes_supported, for the portal and the consent page. | [optional] |
| **allowed_client_ids** | **Array&lt;String&gt;** | Clients of this organization that may get tokens for the server; every client when empty. | [optional] |
| **tool_authorizer_client_ids** | **Array&lt;String&gt;** | The server&#39;s own clients that may call the per-tool authorization endpoint. | [optional] |
| **token_lifetime** | **Integer** |  | [optional][default to 3600] |
| **require_pkce** | **Boolean** |  | [optional][default to true] |
| **require_resource_param** | **Boolean** |  | [optional][default to true] |
| **require_dpop** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::McpServerWrite.new(
  name: null,
  resource_uri: null,
  description: null,
  endpoint_url: null,
  transport: null,
  auth_mode: null,
  status: null,
  scopes_supported: null,
  basic_scopes: null,
  scope_descriptions: null,
  allowed_client_ids: null,
  tool_authorizer_client_ids: null,
  token_lifetime: null,
  require_pkce: null,
  require_resource_param: null,
  require_dpop: null
)
```

