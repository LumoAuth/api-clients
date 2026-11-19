# LumoAuthApiClient::AttestResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** |  |  |
| **token_type** | **String** |  |  |
| **expires_in** | **Integer** |  |  |
| **scope** | **String** | The issued scope values (the agent&#39;s capabilities, or the requested subset), separated by one space. Left out when none was issued. | [optional] |
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

