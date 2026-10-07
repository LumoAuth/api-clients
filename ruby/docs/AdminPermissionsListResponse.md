# LumoAuthApiClient::AdminPermissionsListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Permission&gt;**](Permission.md) |  | [optional] |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **resource_type** | **String** |  | [optional] |
| **pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminPermissionsListResponse.new(
  data: null,
  meta: null,
  resource_type: permissions,
  pagination: null
)
```

