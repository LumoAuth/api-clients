# LumoAuthApiClient::ExpandRelationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | Resource as namespace:id |  |
| **relation** | **String** |  |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::ExpandRelationRequest.new(
  object: document:123,
  relation: viewer
)
```

