# LumoAuthApiClient::EnrollAuthenticatorRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::EnrollAuthenticatorRequest.new(
  phone: +14155551234,
  country: US
)
```

