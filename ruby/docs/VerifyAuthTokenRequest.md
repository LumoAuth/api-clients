# LumoAuthApiClient::VerifyAuthTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_token** | **String** | The auth token presented by the agent. | [optional] |
| **resource** | **String** | Resource identifier; defaults to the authenticated resource. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::VerifyAuthTokenRequest.new(
  auth_token: null,
  resource: null
)
```

