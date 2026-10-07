# LumoAuthApiClient::GetAgentCardResponseSignaturesItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **protected** | **String** | base64url JWS protected header. |  |
| **signature** | **String** | base64url JWS signature. |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetAgentCardResponseSignaturesItem.new(
  protected: null,
  signature: null
)
```

