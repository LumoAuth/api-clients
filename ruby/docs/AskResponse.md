# LumoAuthApiClient::AskResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed** | **Boolean** |  | [optional] |
| **action** | **String** |  | [optional] |
| **context** | **Object** |  | [optional] |
| **reason** | **String** |  | [optional] |
| **audit_id** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AskResponse.new(
  allowed: true,
  action: document.read,
  context: null,
  reason: null,
  audit_id: null
)
```

