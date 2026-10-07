# LumoAuthApiClient::OrganizationMember

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **user** | [**UserRef**](UserRef.md) |  | [optional] |
| **role** | [**OrganizationMemberRole**](OrganizationMemberRole.md) |  | [optional] |
| **status** | **String** |  | [optional] |
| **joined_at** | **Time** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::OrganizationMember.new(
  id: null,
  user: null,
  role: null,
  status: null,
  joined_at: null
)
```

