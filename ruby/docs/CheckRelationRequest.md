# LumoAuthApiClient::CheckRelationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **relation** | **String** |  |  |
| **subject** | **String** | namespace:id, optionally with #relation. |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CheckRelationRequest.new(
  object: document:123,
  relation: viewer,
  subject: user:456
)
```

