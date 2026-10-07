# LumoAuthApiClient::TotpEnrollmentStarted

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **otpauth_uri** | **String** |  | [optional] |
| **secret** | **String** |  | [optional] |
| **secret_grouped** | **String** |  | [optional] |
| **qr_data_uri** | **String** |  | [optional] |
| **expires_at** | **Time** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::TotpEnrollmentStarted.new(
  id: totp:42,
  state: null,
  otpauth_uri: null,
  secret: null,
  secret_grouped: null,
  qr_data_uri: null,
  expires_at: null
)
```

