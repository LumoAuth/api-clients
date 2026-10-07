# LumoAuthApiClient::GetCurrentAgentResponseIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **tenant** | **String** |  | [optional] |
| **agent_id** | **String** | Present when the principal is an agent. | [optional] |
| **status** | **String** | Present when the principal is an agent. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetCurrentAgentResponseIdentity.new(
  id: null,
  type: agent,
  tenant: null,
  agent_id: null,
  status: null
)
```

