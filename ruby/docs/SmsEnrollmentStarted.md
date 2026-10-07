# LumoAuthApiClient::SmsEnrollmentStarted

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **masked_phone** | **String** |  | [optional] |
| **resend_after** | **Integer** | Seconds until a new code may be requested | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::SmsEnrollmentStarted.new(
  id: sms_otp:42,
  state: null,
  masked_phone: null,
  resend_after: null
)
```

