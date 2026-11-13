# AdminAgentsCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Required. Human-readable agent name. | [optional] 
**description** | **str** |  | [optional] 
**capabilities** | **List[str]** |  | [optional] 
**budget_policy** | **Dict[str, object]** | The agent budget. Keys: max_api_calls_per_hour, max_api_calls_per_day, max_tokens_per_hour, max_tokens_per_day (whole numbers), max_cost_per_day_usd, max_cost_per_month_usd, hard_limit (USD), max_steps, timeout_seconds (whole numbers, read by the agent from UserInfo), and the gateway-only max_cost_usd, monthly_usd, max_budget (USD). Each value must be greater than zero; an unknown key or an invalid value is refused with 400. Leave it out for an agent without a budget. | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_create_request import AdminAgentsCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsCreateRequest from a JSON string
admin_agents_create_request_instance = AdminAgentsCreateRequest.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsCreateRequest.to_json())

# convert the object into a dict
admin_agents_create_request_dict = admin_agents_create_request_instance.to_dict()
# create an instance of AdminAgentsCreateRequest from a dict
admin_agents_create_request_from_dict = AdminAgentsCreateRequest.from_dict(admin_agents_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


