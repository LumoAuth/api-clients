# LumoAuthApiClient::ListPermissionsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  | [optional] |
| **permissions** | [**Array&lt;ListPermissionsResponsePermissionsItem&gt;**](ListPermissionsResponsePermissionsItem.md) |  | [optional] |
| **count** | **Integer** |  | [optional] |
| **data** | [**Array&lt;ListPermissionsResponseDataItem&gt;**](ListPermissionsResponseDataItem.md) |  | [optional] |
| **pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::ListPermissionsResponse.new(
  user_id: null,
  permissions: null,
  count: null,
  data: null,
  pagination: null
)
```

