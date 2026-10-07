# LumoAuthApiClient::CreateTaskResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **String** |  | [optional] |
| **caep_session_id** | **String** |  | [optional] |
| **expires_at** | **Time** |  | [optional] |
| **agent_id** | **String** |  | [optional] |
| **agent** | **Object** |  | [optional] |
| **on_behalf_of** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CreateTaskResponse.new(
  task_id: null,
  caep_session_id: null,
  expires_at: null,
  agent_id: null,
  agent: null,
  on_behalf_of: null
)
```

