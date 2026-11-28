# LumoAuthApiClient::VerifyAuthTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_token** | **String** | The auth token presented by the agent. |  |
| **resource** | **String** | Required. The resource identifier of the calling resource (&#x60;resource_identifier&#x60; is accepted as well). The HTTP message signature is checked with the registered keys of this resource. |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::VerifyAuthTokenRequest.new(
  auth_token: null,
  resource: null
)
```

