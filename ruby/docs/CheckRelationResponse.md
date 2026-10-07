# LumoAuthApiClient::CheckRelationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed** | **Boolean** |  | [optional] |
| **object** | **String** |  | [optional] |
| **relation** | **String** |  | [optional] |
| **subject** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CheckRelationResponse.new(
  allowed: null,
  object: document:123,
  relation: viewer,
  subject: user:456
)
```

