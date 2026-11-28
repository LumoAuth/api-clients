# LumoAuthApiClient::AdminGroupsAddMembersRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | One user (or use userIds). | [optional] |
| **user_ids** | **Array&lt;String&gt;** | Several users. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminGroupsAddMembersRequest.new(
  user_id: null,
  user_ids: null
)
```

