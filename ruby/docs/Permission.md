# LumoAuthApiClient::Permission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **name** | **String** |  |  |
| **slug** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **resource** | **String** |  | [optional] |
| **action** | **String** |  | [optional] |
| **is_system** | **Boolean** |  |  |
| **is_custom** | **Boolean** |  |  |
| **created_at** | **Time** |  |  |
| **role_count** | **Integer** | Detailed responses only | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::Permission.new(
  id: null,
  name: null,
  slug: null,
  description: null,
  resource: null,
  action: null,
  is_system: null,
  is_custom: null,
  created_at: null,
  role_count: null
)
```

