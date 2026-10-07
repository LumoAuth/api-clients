# LumoAuthApiClient::AdminUserSessionsListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;UserSession&gt;**](UserSession.md) |  | [optional] |
| **meta** | [**AdminScopesListResponseMeta**](AdminScopesListResponseMeta.md) |  | [optional] |
| **pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminUserSessionsListResponse.new(
  data: null,
  meta: null,
  pagination: null
)
```

