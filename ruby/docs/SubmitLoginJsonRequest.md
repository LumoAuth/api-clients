# LumoAuthApiClient::SubmitLoginJsonRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **password** | **String** |  |  |
| **captcha_token** | **String** | Needed when the organization has a CAPTCHA for sign-in. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::SubmitLoginJsonRequest.new(
  email: null,
  password: null,
  captcha_token: null
)
```

