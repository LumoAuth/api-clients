# LumoAuthApiClient::GetResourceAttributesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_type** | **String** |  | [optional] |
| **resource_id** | **String** |  | [optional] |
| **attributes** | [**GetResourceAttributesResponseAttributes**](GetResourceAttributesResponseAttributes.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetResourceAttributesResponse.new(
  resource_type: null,
  resource_id: null,
  attributes: null
)
```

