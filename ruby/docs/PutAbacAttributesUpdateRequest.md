# LumoAuthApiClient::PutAbacAttributesUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **default_value** | **Object** |  | [optional] |
| **validation_rules** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PutAbacAttributesUpdateRequest.new(
  name: null,
  description: null,
  default_value: null,
  validation_rules: null
)
```

