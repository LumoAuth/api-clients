# LumoAuthApiClient::PutAdminAgentsUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **capabilities** | **Array&lt;String&gt;** |  | [optional] |
| **budget_policy** | **Hash&lt;String, Object&gt;** | The agent budget. Keys: max_api_calls_per_hour, max_api_calls_per_day, max_tokens_per_hour, max_tokens_per_day (whole numbers), max_cost_per_day_usd, max_cost_per_month_usd, hard_limit (USD), max_steps, timeout_seconds (whole numbers, read by the agent from UserInfo), and the gateway-only max_cost_usd, monthly_usd, max_budget (USD). Each value must be greater than zero; an unknown key or an invalid value is refused with 400. An update replaces the whole policy; {} or null removes the budget, and a request without the field leaves it as it is. | [optional] |
| **jwks** | **Hash&lt;String, Object&gt;** | For private_key_jwt agents: replaces the public keys (inline JWK Set). Removing a key revokes the tokens that the agent holds. | [optional] |
| **jwks_uri** | **String** | For private_key_jwt agents: https URL of the public key set. | [optional] |
| **can_act_on_behalf_of_users** | **Boolean** | Whether the agent may act for users of the organization. Switching it on needs the delegation feature of the plan and an editor who holds every capability of the agent. | [optional] |
| **owner_id** | **String** | Gives the agent a new owner: the id or the email address of an active account of the organization. The owner is the person in whose name the agent asks for just-in-time access and who receives its approval requests. The caller must hold every capability of the agent and every permission of the new owner (naming yourself always works). An agent whose owner was deleted, blocked or switched off (&#x60;needsNewOwner&#x60; in the agent object) needs a new owner before it can be activated. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PutAdminAgentsUpdateRequest.new(
  name: null,
  description: null,
  capabilities: null,
  budget_policy: {&quot;max_api_calls_per_hour&quot;:500,&quot;max_tokens_per_day&quot;:100000,&quot;max_cost_per_month_usd&quot;:50},
  jwks: null,
  jwks_uri: null,
  can_act_on_behalf_of_users: null,
  owner_id: null
)
```

