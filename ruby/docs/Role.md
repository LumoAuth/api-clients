# LumoAuthApiClient::Role

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **slug** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **is_system** | **Boolean** |  |  |
| **user_count** | **Integer** |  |  |
| **created_at** | **Time** |  |  |
| **permissions** | [**Array&lt;RolePermissionsInner&gt;**](RolePermissionsInner.md) | Detailed responses only | [optional] |
| **updated_at** | **Time** | Detailed responses only | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::Role.new(
  id: null,
  name: null,
  slug: null,
  description: null,
  is_system: null,
  user_count: null,
  created_at: null,
  permissions: null,
  updated_at: null
)
```

