# LumoAuthApiClient::SetUserAttributeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **data** | [**SetUserAttributeResponseData**](SetUserAttributeResponseData.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::SetUserAttributeResponse.new(
  message: User attribute set successfully,
  data: null
)
```

