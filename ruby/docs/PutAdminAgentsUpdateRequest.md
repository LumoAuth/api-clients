# LumoAuthApiClient::PutAdminAgentsUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **capabilities** | **Array&lt;String&gt;** |  | [optional] |
| **budget_policy** | **Hash&lt;String, Object&gt;** | The agent budget. Keys: max_api_calls_per_hour, max_api_calls_per_day, max_tokens_per_hour, max_tokens_per_day (whole numbers), max_cost_per_day_usd, max_cost_per_month_usd, hard_limit (USD), max_steps, timeout_seconds (whole numbers, read by the agent from UserInfo), and the gateway-only max_cost_usd, monthly_usd, max_budget (USD). Each value must be greater than zero; an unknown key or an invalid value is refused with 400. An update replaces the whole policy; {} or null removes the budget, and a request without the field leaves it as it is. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PutAdminAgentsUpdateRequest.new(
  name: null,
  description: null,
  capabilities: null,
  budget_policy: {&quot;max_api_calls_per_hour&quot;:500,&quot;max_tokens_per_day&quot;:100000,&quot;max_cost_per_month_usd&quot;:50}
)
```

