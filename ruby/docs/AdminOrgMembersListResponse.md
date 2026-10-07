# LumoAuthApiClient::AdminOrgMembersListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;OrganizationMember&gt;**](OrganizationMember.md) |  | [optional] |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **resource_type** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminOrgMembersListResponse.new(
  data: null,
  meta: null,
  pagination: null,
  resource_type: members
)
```

