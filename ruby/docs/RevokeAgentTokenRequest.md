# LumoAuthApiClient::RevokeAgentTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | The auth token JTI or refresh token value to revoke. | [optional] |
| **token_type** | **String** | auth_token (default) or refresh_token. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::RevokeAgentTokenRequest.new(
  token: null,
  token_type: auth_token
)
```

