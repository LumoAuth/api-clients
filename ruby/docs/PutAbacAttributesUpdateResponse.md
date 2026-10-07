# LumoAuthApiClient::PutAbacAttributesUpdateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**AbacAttributeDefinition**](AbacAttributeDefinition.md) |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PutAbacAttributesUpdateResponse.new(
  data: null,
  message: Attribute definition updated successfully
)
```

