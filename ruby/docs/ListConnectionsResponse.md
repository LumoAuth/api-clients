# LumoAuthApiClient::ListConnectionsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent** | [**ListConnectionsResponseAgent**](ListConnectionsResponseAgent.md) |  |  |
| **connections** | [**Array&lt;AgentOutboundConnection&gt;**](AgentOutboundConnection.md) |  |  |
| **data** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Same items as connections. |  |
| **pagination** | [**PaginationMeta**](PaginationMeta.md) |  |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::ListConnectionsResponse.new(
  agent: null,
  connections: null,
  data: null,
  pagination: null
)
```

