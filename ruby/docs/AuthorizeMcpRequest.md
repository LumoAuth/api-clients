# LumoAuthApiClient::AuthorizeMcpRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | Id of an active MCP server registered in this organization. | [optional] |
| **tool** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AuthorizeMcpRequest.new(
  server_id: mcp_0123456789abcdef01234567,
  tool: send_payment_reminder
)
```

