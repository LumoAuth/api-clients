# LumoAuthApiClient::DeviceAuthorizationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_code** | **String** | High-entropy code the device presents at the token endpoint. |  |
| **user_code** | **String** | Short code the end user enters at verification_uri. |  |
| **verification_uri** | **String** | Absolute URL of the user verification page (GET …/oauth/device). |  |
| **verification_uri_complete** | **String** | verification_uri with the user_code pre-filled. |  |
| **expires_in** | **Integer** | Lifetime of device_code and user_code in seconds. |  |
| **interval** | **Integer** | Minimum polling interval in seconds. |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::DeviceAuthorizationResponse.new(
  device_code: null,
  user_code: WDJB-MJHT,
  verification_uri: null,
  verification_uri_complete: null,
  expires_in: 600,
  interval: 5
)
```

