# LumoAuthApiClient::GetCurrentAgentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity** | [**GetCurrentAgentResponseIdentity**](GetCurrentAgentResponseIdentity.md) |  | [optional] |
| **capabilities** | **Array&lt;String&gt;** |  | [optional] |
| **workspace** | [**GetCurrentAgentResponseWorkspace**](GetCurrentAgentResponseWorkspace.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetCurrentAgentResponse.new(
  identity: null,
  capabilities: null,
  workspace: null
)
```

