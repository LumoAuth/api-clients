# LumoAuthApiClient::AdminMcpServersListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;McpServer&gt;**](McpServer.md) |  | [optional] |
| **meta** | [**AdminMcpServersListResponseMeta**](AdminMcpServersListResponseMeta.md) |  | [optional] |
| **pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminMcpServersListResponse.new(
  data: null,
  meta: null,
  pagination: null
)
```

