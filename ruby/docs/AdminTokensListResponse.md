# LumoAuthApiClient::AdminTokensListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;OAuthAccessToken&gt;**](OAuthAccessToken.md) |  | [optional] |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **resource_type** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminTokensListResponse.new(
  data: null,
  meta: null,
  pagination: null,
  resource_type: tokens
)
```

