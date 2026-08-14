# LumoAuthApiClient::IssuePlatformTokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** |  | [optional] |
| **issued_token_type** | **String** |  | [optional] |
| **token_type** | **String** |  | [optional] |
| **expires_in** | **Integer** |  | [optional] |
| **scope** | **String** |  | [optional] |
| **agent_id** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::IssuePlatformTokenResponse.new(
  access_token: null,
  issued_token_type: urn:ietf:params:oauth:token-type:access_token,
  token_type: Bearer,
  expires_in: 900,
  scope: null,
  agent_id: agt_ab12cd34
)
```

