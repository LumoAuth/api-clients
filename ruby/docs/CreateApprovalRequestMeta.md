# LumoAuthApiClient::CreateApprovalRequestMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** |  | [optional] |
| **host** | **String** |  | [optional] |
| **tool** | **String** |  | [optional] |
| **server** | **String** |  | [optional] |
| **capability** | **String** |  | [optional] |
| **risk** | **String** |  | [optional] |
| **why** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **args** | **Array&lt;String&gt;** | Argument lines; at most 5 are kept, each cut to 240 characters. | [optional] |
| **arguments_sha256** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CreateApprovalRequestMeta.new(
  kind: tool_call,
  host: openclaw,
  tool: send_email,
  server: gmail,
  capability: mcp:gmail:external:send_email,
  risk: external,
  why: After the agent read untrusted content,
  title: Allow send_email on gmail?,
  args: null,
  arguments_sha256: null
)
```

