# LumoAuthApiClient::DeleteUserAuthenticatorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**MfaAuthenticator**](MfaAuthenticator.md) |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::DeleteUserAuthenticatorResponse.new(
  data: null,
  message: Authenticator removed
)
```

