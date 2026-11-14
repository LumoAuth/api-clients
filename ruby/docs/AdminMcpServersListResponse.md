# LumoAuthApiClient::AdminMcpServersListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;McpServer&gt;**](McpServer.md) |  | [optional] |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **resource_type** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminMcpServersListResponse.new(
  data: null,
  meta: null,
  pagination: null,
  resource_type: mcp_servers
)
```

