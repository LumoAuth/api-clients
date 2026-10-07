# LumoAuthApiClient::Group

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **slug** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **is_system** | **Boolean** |  |  |
| **member_count** | **Integer** |  |  |
| **role_count** | **Integer** |  |  |
| **created_at** | **Time** |  |  |
| **roles** | [**Array&lt;RoleRef&gt;**](RoleRef.md) | Detailed responses only | [optional] |
| **members** | [**Array&lt;UserRef&gt;**](UserRef.md) | Detailed responses only | [optional] |
| **updated_at** | **Time** | Detailed responses only | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::Group.new(
  id: null,
  name: null,
  slug: null,
  description: null,
  is_system: null,
  member_count: null,
  role_count: null,
  created_at: null,
  roles: null,
  members: null,
  updated_at: null
)
```

