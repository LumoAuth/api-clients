# LumoAuthApiClient::AdminAgentsGenerateTokenResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** |  | [optional] |
| **token_type** | **String** |  | [optional] |
| **expires_in** | **Integer** |  | [optional] |
| **jti** | **String** | The token id. Written to the agent.token_issued audit event; the kill switch and a capability reduction deny-list it. | [optional] |
| **scopes** | **Array&lt;String&gt;** |  | [optional] |
| **resource** | **String** | The MCP server the token is bound to, when &#x60;resource&#x60; was sent. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAgentsGenerateTokenResponseData.new(
  access_token: eyJ...,
  token_type: Bearer,
  expires_in: 600,
  jti: null,
  scopes: [&quot;invoices.read&quot;],
  resource: null
)
```

