# LumoAuthApiClient::RequestMagicLinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The address to mail the sign-in link to. |  |
| **client_id** | **String** | Client ID of an active application of the organization. |  |
| **return_to** | **String** | Page of the application that the person goes to after signing in. An absolute https URL (http only on localhost) whose origin is one of the application&#39;s allowed origins or the origin of one of its redirect URIs. Without it the person goes to the organization&#39;s default page. | [optional] |
| **captcha_token** | **String** | Token from the CAPTCHA widget. Required when the organization protects sign-in link requests with a CAPTCHA. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::RequestMagicLinkRequest.new(
  email: null,
  client_id: null,
  return_to: null,
  captcha_token: null
)
```

