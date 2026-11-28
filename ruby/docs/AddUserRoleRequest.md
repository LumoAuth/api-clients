# LumoAuthApiClient::AddUserRoleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_id** | **Integer** | Role id (or use roleSlug). | [optional] |
| **role_slug** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AddUserRoleRequest.new(
  role_id: null,
  role_slug: null
)
```

