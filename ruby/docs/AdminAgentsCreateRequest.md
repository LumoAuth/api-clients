# LumoAuthApiClient::AdminAgentsCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Required. Human-readable agent name. | [optional] |
| **description** | **String** |  | [optional] |
| **capabilities** | **Array&lt;String&gt;** |  | [optional] |
| **budget_policy** | **Hash&lt;String, Object&gt;** | The agent budget. Keys: max_api_calls_per_hour, max_api_calls_per_day, max_tokens_per_hour, max_tokens_per_day (whole numbers), max_cost_per_day_usd, max_cost_per_month_usd, hard_limit (USD), max_steps, timeout_seconds (whole numbers, read by the agent from UserInfo), and the gateway-only max_cost_usd, monthly_usd, max_budget (USD). Each value must be greater than zero; an unknown key or an invalid value is refused with 400. Leave it out for an agent without a budget. | [optional] |
| **identity_type** | **String** | How the agent authenticates. Default api_key. | [optional] |
| **jwks** | **Hash&lt;String, Object&gt;** | For private_key_jwt: the public keys of the agent, inline (a JWK Set). Private key members are refused. Send jwks or jwksUri, not both. | [optional] |
| **jwks_uri** | **String** | For private_key_jwt: https URL of the public key set of the agent. | [optional] |
| **can_act_on_behalf_of_users** | **Boolean** | Whether the agent may act for users of the organization: approval prompts on their phones, Token Vault connections, the on-behalf-of token exchange and JIT requests for a user. Needs the delegation feature of the plan. Default false. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAgentsCreateRequest.new(
  name: Invoice bot,
  description: null,
  capabilities: null,
  budget_policy: {&quot;max_api_calls_per_hour&quot;:500,&quot;max_tokens_per_day&quot;:100000,&quot;max_cost_per_month_usd&quot;:50},
  identity_type: null,
  jwks: null,
  jwks_uri: null,
  can_act_on_behalf_of_users: null
)
```

