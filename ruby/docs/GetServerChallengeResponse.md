# LumoAuthApiClient::GetServerChallengeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | &#x60;no_authorization_required&#x60; for an MCP server that checks no token (Public or stdio): there is nothing to challenge, with or without a token. |  |
| **server** | **String** | MCP server display name. |  |
| **server_id** | **String** |  |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetServerChallengeResponse.new(
  status: null,
  server: null,
  server_id: null
)
```

