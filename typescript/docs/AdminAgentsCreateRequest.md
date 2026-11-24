# AdminAgentsCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Required. Human-readable agent name. | [optional] [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**capabilities** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**budgetPolicy** | **{ [key: string]: any; }** | The agent budget. Keys: max_api_calls_per_hour, max_api_calls_per_day, max_tokens_per_hour, max_tokens_per_day (whole numbers), max_cost_per_day_usd, max_cost_per_month_usd, hard_limit (USD), max_steps, timeout_seconds (whole numbers, read by the agent from UserInfo), and the gateway-only max_cost_usd, monthly_usd, max_budget (USD). Each value must be greater than zero; an unknown key or an invalid value is refused with 400. Leave it out for an agent without a budget. | [optional] [default to undefined]
**identityType** | **string** | How the agent authenticates. Default api_key. | [optional] [default to undefined]
**jwks** | **{ [key: string]: any; }** | For private_key_jwt: the public keys of the agent, inline (a JWK Set). Private key members are refused. Send jwks or jwksUri, not both. | [optional] [default to undefined]
**jwksUri** | **string** | For private_key_jwt: https URL of the public key set of the agent. | [optional] [default to undefined]
**canActOnBehalfOfUsers** | **boolean** | Whether the agent may act for users of the organization: approval prompts on their phones, Token Vault connections, the on-behalf-of token exchange and JIT requests for a user. Needs the delegation feature of the plan. Default false. | [optional] [default to undefined]

## Example

```typescript
import { AdminAgentsCreateRequest } from '@lumoauth/api-client';

const instance: AdminAgentsCreateRequest = {
    name,
    description,
    capabilities,
    budgetPolicy,
    identityType,
    jwks,
    jwksUri,
    canActOnBehalfOfUsers,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
