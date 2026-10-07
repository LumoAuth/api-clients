# LumoAuthApiClient::EmailEnrollmentStarted

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **masked_email** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::EmailEnrollmentStarted.new(
  id: email_otp:42,
  state: null,
  masked_email: null
)
```

