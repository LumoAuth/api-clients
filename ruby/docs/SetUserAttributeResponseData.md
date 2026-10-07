# LumoAuthApiClient::SetUserAttributeResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  | [optional] |
| **attribute_slug** | **String** |  | [optional] |
| **value** | **Object** | The stored value (any JSON type) | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::SetUserAttributeResponseData.new(
  user_id: null,
  attribute_slug: null,
  value: null
)
```

