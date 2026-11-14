# LumoAuthApiClient::OAuthScope

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** | Shown to users on the consent page next to the scope name. | [optional] |
| **is_system** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::OAuthScope.new(
  id: null,
  name: null,
  description: null,
  is_system: null,
  created_at: null
)
```

