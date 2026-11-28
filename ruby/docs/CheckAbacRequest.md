# LumoAuthApiClient::CheckAbacRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_type** | **String** |  |  |
| **action** | **String** |  |  |
| **resource_id** | **String** |  | [optional] |
| **environment** | **Hash&lt;String, Object&gt;** | Values of defined environment attributes. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CheckAbacRequest.new(
  resource_type: null,
  action: null,
  resource_id: null,
  environment: null
)
```

