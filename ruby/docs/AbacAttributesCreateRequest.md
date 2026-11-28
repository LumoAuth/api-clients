# LumoAuthApiClient::AbacAttributesCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **slug** | **String** |  |  |
| **attribute_type** | **String** | Also accepted as attribute_type. |  |
| **data_type** | **String** | Also accepted as data_type. |  |
| **description** | **String** |  | [optional] |
| **default_value** | **Object** |  | [optional] |
| **validation_rules** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AbacAttributesCreateRequest.new(
  name: null,
  slug: null,
  attribute_type: null,
  data_type: null,
  description: null,
  default_value: null,
  validation_rules: null
)
```

