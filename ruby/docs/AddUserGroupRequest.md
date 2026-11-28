# LumoAuthApiClient::AddUserGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **Integer** | Group id (or use groupSlug). | [optional] |
| **group_slug** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AddUserGroupRequest.new(
  group_id: null,
  group_slug: null
)
```

