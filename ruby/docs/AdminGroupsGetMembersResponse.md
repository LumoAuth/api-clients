# LumoAuthApiClient::AdminGroupsGetMembersResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;AdminGroupsGetMembersResponseDataItem&gt;**](AdminGroupsGetMembersResponseDataItem.md) |  | [optional] |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **resource_type** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminGroupsGetMembersResponse.new(
  data: null,
  meta: null,
  pagination: null,
  resource_type: users
)
```

