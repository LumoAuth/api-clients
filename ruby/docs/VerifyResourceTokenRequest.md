# LumoAuthApiClient::VerifyResourceTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_token** | **String** | The resource token to validate. | [optional] |
| **agent** | **String** | Agent identifier the token must be bound to. | [optional] |
| **agent_jkt** | **String** | JWK thumbprint of the agent key. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::VerifyResourceTokenRequest.new(
  resource_token: null,
  agent: null,
  agent_jkt: null
)
```

