# LumoAuthApiClient::AttestResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** |  |  |
| **token_type** | **String** |  |  |
| **expires_in** | **Integer** |  |  |
| **scope** | **String** | Space-separated agent capabilities. |  |
| **identity** | [**AttestResponseIdentity**](AttestResponseIdentity.md) |  |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AttestResponse.new(
  access_token: null,
  token_type: null,
  expires_in: 900,
  scope: null,
  identity: null
)
```

