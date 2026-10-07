# LumoAuthApiClient::AdminScopesListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;OAuthScope&gt;**](OAuthScope.md) |  | [optional] |
| **meta** | [**AdminScopesListResponseMeta**](AdminScopesListResponseMeta.md) |  | [optional] |
| **pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminScopesListResponse.new(
  data: null,
  meta: null,
  pagination: null
)
```

