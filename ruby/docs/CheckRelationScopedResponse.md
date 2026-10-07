# LumoAuthApiClient::CheckRelationScopedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed** | **Boolean** |  | [optional] |
| **object** | **String** |  | [optional] |
| **relation** | **String** |  | [optional] |
| **user** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CheckRelationScopedResponse.new(
  allowed: null,
  object: document:123,
  relation: viewer,
  user: user:456
)
```

