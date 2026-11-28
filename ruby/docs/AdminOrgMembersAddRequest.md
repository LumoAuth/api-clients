# LumoAuthApiClient::AdminOrgMembersAddRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | ID of a user of this organization. |  |
| **role_id** | **Integer** | Optional: a role of the customer organization; its default role otherwise. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminOrgMembersAddRequest.new(
  user_id: null,
  role_id: null
)
```

