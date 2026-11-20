# AdminAgentsCreateRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Required. Human-readable agent name. | [optional] 
**description** | **String** |  | [optional] 
**capabilities** | **[String]** |  | [optional] 
**budgetPolicy** | **[String: AnyCodable]** | The agent budget. Keys: max_api_calls_per_hour, max_api_calls_per_day, max_tokens_per_hour, max_tokens_per_day (whole numbers), max_cost_per_day_usd, max_cost_per_month_usd, hard_limit (USD), max_steps, timeout_seconds (whole numbers, read by the agent from UserInfo), and the gateway-only max_cost_usd, monthly_usd, max_budget (USD). Each value must be greater than zero; an unknown key or an invalid value is refused with 400. Leave it out for an agent without a budget. | [optional] 
**identityType** | **String** | How the agent authenticates. Default api_key. | [optional] 
**jwks** | **[String: AnyCodable]** | For private_key_jwt: the public keys of the agent, inline (a JWK Set). Private key members are refused. Send jwks or jwksUri, not both. | [optional] 
**jwksUri** | **String** | For private_key_jwt: https URL of the public key set of the agent. | [optional] 
**canActOnBehalfOfUsers** | **Bool** | Whether the agent may act for users of the organization: approval prompts on their phones, Token Vault connections, the on-behalf-of token exchange and JIT requests for a user. Needs the delegation feature of the plan. Default false. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


