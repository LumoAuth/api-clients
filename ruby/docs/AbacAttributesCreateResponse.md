# LumoAuthApiClient::AbacAttributesCreateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**AbacAttributeDefinition**](AbacAttributeDefinition.md) |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AbacAttributesCreateResponse.new(
  data: null,
  message: Attribute definition created successfully
)
```

