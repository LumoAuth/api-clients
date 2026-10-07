# LumoAuthApiClient::PasskeyEnrollmentStarted

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **public_key** | **Object** | WebAuthn PublicKeyCredentialCreationOptions | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PasskeyEnrollmentStarted.new(
  id: null,
  state: null,
  public_key: null
)
```

