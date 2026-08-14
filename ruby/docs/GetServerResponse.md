# LumoAuthApiClient::GetServerResponse

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
| **require_pkce** | **Boolean** |  | [optional] |
| **token_lifetime** | **Integer** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **discovery** | [**GetServerResponseDiscovery**](GetServerResponseDiscovery.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetServerResponse.new(
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
  require_pkce: null,
  token_lifetime: null,
  created_at: null,
  updated_at: null,
  discovery: null
)
```

