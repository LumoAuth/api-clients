# LumoAuthApiClient::IssueDelegateTokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_token** | **String** |  | [optional] |
| **token_type** | **String** |  | [optional] |
| **expires_in** | **Integer** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::IssueDelegateTokenResponse.new(
  agent_token: null,
  token_type: agent+jwt,
  expires_in: 3600
)
```

