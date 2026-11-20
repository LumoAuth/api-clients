# # PutAdminAgentsUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [optional]
**description** | **string** |  | [optional]
**capabilities** | **string[]** |  | [optional]
**budgetPolicy** | **array<string,mixed>** | The agent budget. Keys: max_api_calls_per_hour, max_api_calls_per_day, max_tokens_per_hour, max_tokens_per_day (whole numbers), max_cost_per_day_usd, max_cost_per_month_usd, hard_limit (USD), max_steps, timeout_seconds (whole numbers, read by the agent from UserInfo), and the gateway-only max_cost_usd, monthly_usd, max_budget (USD). Each value must be greater than zero; an unknown key or an invalid value is refused with 400. An update replaces the whole policy; {} or null removes the budget, and a request without the field leaves it as it is. | [optional]
**jwks** | **array<string,mixed>** | For private_key_jwt agents: replaces the public keys (inline JWK Set). Removing a key revokes the tokens that the agent holds. | [optional]
**jwksUri** | **string** | For private_key_jwt agents: https URL of the public key set. | [optional]
**canActOnBehalfOfUsers** | **bool** | Whether the agent may act for users of the organization. Switching it on needs the delegation feature of the plan and an editor who holds every capability of the agent. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
