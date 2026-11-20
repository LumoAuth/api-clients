# LumoAuthApiClient::AgentsMeToolCallsRequestCallsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tool** | **String** |  |  |
| **server_id** | **String** | The MCP server the tool belongs to, when it has one. | [optional] |
| **decision** | **String** |  |  |
| **outcome** | **String** | not_run for a call that was denied, refused, expired or blocked (the default for those). | [optional] |
| **duration_ms** | **Integer** |  | [optional] |
| **arguments_sha256** | **String** | SHA-256 of the arguments as the host serialized them. The arguments themselves are never sent. | [optional] |
| **audit_id** | **String** | audit_id of the Ask API answer that allowed or denied the call. | [optional] |
| **occurred_at** | **Time** | When the call ran; within the last 24 hours. | [optional] |
| **error_code** | **String** | A short code for a failed call, never a message. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AgentsMeToolCallsRequestCallsItem.new(
  tool: gmail.send,
  server_id: mcp_0123456789abcdef01234567,
  decision: null,
  outcome: null,
  duration_ms: null,
  arguments_sha256: null,
  audit_id: null,
  occurred_at: null,
  error_code: null
)
```

