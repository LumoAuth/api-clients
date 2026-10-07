# LumoAuthApiClient::SetResourceAttributeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **data** | [**AbacResourceAttribute**](AbacResourceAttribute.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::SetResourceAttributeResponse.new(
  message: Resource attribute set successfully,
  data: null
)
```

