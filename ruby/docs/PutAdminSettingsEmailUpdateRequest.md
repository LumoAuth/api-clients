# LumoAuthApiClient::PutAdminSettingsEmailUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_email** | **String** | From address. It must be a sender that is verified at the mail provider. | [optional] |
| **from_name** | **String** | From name: one line. null or an empty string clears it. | [optional] |
| **reply_to_email** | **String** | Reply-To address. null or an empty string clears it. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PutAdminSettingsEmailUpdateRequest.new(
  from_email: null,
  from_name: null,
  reply_to_email: null
)
```

