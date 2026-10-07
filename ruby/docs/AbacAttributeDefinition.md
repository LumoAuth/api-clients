# LumoAuthApiClient::AbacAttributeDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **slug** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **attribute_type** | **String** |  | [optional] |
| **data_type** | **String** |  | [optional] |
| **validation_rules** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **default_value** | **Object** |  | [optional] |
| **is_required** | **Boolean** |  | [optional] |
| **is_system** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AbacAttributeDefinition.new(
  id: null,
  name: null,
  slug: null,
  description: null,
  attribute_type: null,
  data_type: null,
  validation_rules: null,
  default_value: null,
  is_required: null,
  is_system: null,
  created_at: null,
  updated_at: null
)
```

