# LumoAuthApiClient::AdminAgentsGenerateTokenResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** |  | [optional] |
| **token_type** | **String** |  | [optional] |
| **expires_in** | **Integer** |  | [optional] |
| **scopes** | **Array&lt;String&gt;** |  | [optional] |
| **resource** | **String** | The MCP server the token is bound to, when &#x60;resource&#x60; was sent. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAgentsGenerateTokenResponseData.new(
  access_token: eyJ...,
  token_type: Bearer,
  expires_in: 600,
  scopes: [&quot;invoices.read&quot;],
  resource: null
)
```

