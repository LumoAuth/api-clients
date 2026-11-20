# LumoAuthApiClient::PollAgentEnrollmentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_id** | **String** |  |  |
| **client_id** | **String** | The agent id, as the client_id of its token requests. |  |
| **issuer** | **String** | The value a client assertion&#39;s aud must equal. |  |
| **token_endpoint** | **String** |  |  |
| **key_id** | **String** | kid of the registered key (the first one). | [optional] |
| **capabilities** | **Array&lt;String&gt;** | The capabilities the person granted. |  |
| **can_act_on_behalf_of_users** | **Boolean** |  |  |
| **owner_user_id** | **String** | The approving person, the agent&#39;s owner. | [optional] |
| **agent_url** | **String** | The agent&#39;s page in the portal. |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PollAgentEnrollmentResponse.new(
  agent_id: agt_0123456789abcdef,
  client_id: agt_0123456789abcdef,
  issuer: null,
  token_endpoint: null,
  key_id: null,
  capabilities: null,
  can_act_on_behalf_of_users: null,
  owner_user_id: null,
  agent_url: null
)
```

