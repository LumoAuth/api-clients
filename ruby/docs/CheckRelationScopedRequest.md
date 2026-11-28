# LumoAuthApiClient::CheckRelationScopedRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **relation** | **String** |  |  |
| **user** | **String** |  |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CheckRelationScopedRequest.new(
  object: document:123,
  relation: viewer,
  user: user:456
)
```

