# LumoAuthApiClient::RegisterAgentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **agent_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **workload_identity** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::RegisterAgentResponse.new(
  success: true,
  agent_id: null,
  name: null,
  workload_identity: null
)
```

