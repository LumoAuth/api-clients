# LumoAuthApiClient::McpServerToolAuthorizeRequestSubject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **id** | **String** | User UUID, or agent id (agt_…). For an MCP token, the user id is &#x60;sub&#x60;; for an agent token &#x60;sub&#x60; is &#x60;agent_&lt;id&gt;&#x60;. |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::McpServerToolAuthorizeRequestSubject.new(
  type: null,
  id: null
)
```

