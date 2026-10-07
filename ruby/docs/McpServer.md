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
| **auth_mode** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **scopes_supported** | **Array&lt;String&gt;** |  | [optional] |
| **scope_descriptions** | **Hash&lt;String, String&gt;** |  | [optional] |
| **allowed_client_ids** | **Array&lt;String&gt;** |  | [optional] |
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
  auth_mode: null,
  status: null,
  scopes_supported: null,
  scope_descriptions: null,
  allowed_client_ids: null,
  require_pkce: null,
  require_resource_param: null,
  require_dpop: null,
  token_lifetime: null,
  posture: null,
  capabilities: null,
  created_at: null
)
```

