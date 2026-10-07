# LumoAuthApiClient::ListClientScopesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Array&lt;String&gt;** |  | [optional] |
| **pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::ListClientScopesResponse.new(
  data: [&quot;openid&quot;,&quot;profile&quot;,&quot;email&quot;],
  pagination: null
)
```

