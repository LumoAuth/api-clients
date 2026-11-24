

# PutAdminAgentsUpdateRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** |  |  [optional] |
|**description** | **String** |  |  [optional] |
|**capabilities** | **List&lt;String&gt;** |  |  [optional] |
|**budgetPolicy** | **Map&lt;String, Object&gt;** | The agent budget. Keys: max_api_calls_per_hour, max_api_calls_per_day, max_tokens_per_hour, max_tokens_per_day (whole numbers), max_cost_per_day_usd, max_cost_per_month_usd, hard_limit (USD), max_steps, timeout_seconds (whole numbers, read by the agent from UserInfo), and the gateway-only max_cost_usd, monthly_usd, max_budget (USD). Each value must be greater than zero; an unknown key or an invalid value is refused with 400. An update replaces the whole policy; {} or null removes the budget, and a request without the field leaves it as it is. |  [optional] |
|**jwks** | **Map&lt;String, Object&gt;** | For private_key_jwt agents: replaces the public keys (inline JWK Set). Removing a key revokes the tokens that the agent holds. |  [optional] |
|**jwksUri** | **String** | For private_key_jwt agents: https URL of the public key set. |  [optional] |
|**canActOnBehalfOfUsers** | **Boolean** | Whether the agent may act for users of the organization. Switching it on needs the delegation feature of the plan and an editor who holds every capability of the agent. |  [optional] |
|**ownerId** | **String** | Gives the agent a new owner: the id or the email address of an active account of the organization. The owner is the person in whose name the agent asks for just-in-time access and who receives its approval requests. The caller must hold every capability of the agent and every permission of the new owner (naming yourself always works). An agent whose owner was deleted, blocked or switched off (&#x60;needsNewOwner&#x60; in the agent object) needs a new owner before it can be activated. |  [optional] |



