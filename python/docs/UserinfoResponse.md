# UserinfoResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sub** | **str** | User id; agent_&lt;agent_id&gt; for agents. | 
**identity_type** | **str** | Only for agents. | [optional] 
**tenant** | **str** | Organization slug. | [optional] 
**name** | **str** | profile scope (users); agent display name. | [optional] 
**given_name** | **str** | profile scope. | [optional] 
**family_name** | **str** | profile scope. | [optional] 
**middle_name** | **str** | profile scope. | [optional] 
**nickname** | **str** | profile scope. | [optional] 
**preferred_username** | **str** | profile scope. | [optional] 
**profile** | **str** | profile scope. | [optional] 
**picture** | **str** | profile scope. | [optional] 
**website** | **str** | profile scope. | [optional] 
**gender** | **str** | profile scope. | [optional] 
**birthdate** | **date** | profile scope (YYYY-MM-DD). | [optional] 
**zoneinfo** | **str** | profile scope. | [optional] 
**locale** | **str** | profile scope. | [optional] 
**updated_at** | **int** | profile scope — Unix seconds. | [optional] 
**email** | **str** | email scope. | [optional] 
**email_verified** | **bool** | email scope. | [optional] 
**phone_number** | **str** | phone scope. | [optional] 
**phone_number_verified** | **bool** | phone scope. | [optional] 
**address** | **Dict[str, object]** | address scope — OIDC address claim object. | [optional] 
**roles** | **List[str]** | Only when the token&#39;s client explicitly enabled the roles claim. | [optional] 
**agent_id** | **str** | Agents only. | [optional] 
**workload_identity** | **str** | Agents only. | [optional] 
**capabilities** | **List[str]** | Agents only. | [optional] 
**budget_policy** | **Dict[str, object]** | Agents only. The budget limits that are set (max_api_calls_per_hour, max_api_calls_per_day, max_tokens_per_hour, max_tokens_per_day, max_cost_per_day_usd, max_cost_per_month_usd, hard_limit; unlimited ones are left out) and any other policy keys, the usage in the current UTC windows (api_calls_this_hour, api_calls_today, tokens_used_this_hour, tokens_used_today, cost_today_usd, cost_this_month_usd), and exhausted: true when a limit is reached and the next metered call would get 429. | [optional] 

## Example

```python
from lumoauth_api_client.models.userinfo_response import UserinfoResponse

# TODO update the JSON string below
json = "{}"
# create an instance of UserinfoResponse from a JSON string
userinfo_response_instance = UserinfoResponse.from_json(json)
# print the JSON string representation of the object
print(UserinfoResponse.to_json())

# convert the object into a dict
userinfo_response_dict = userinfo_response_instance.to_dict()
# create an instance of UserinfoResponse from a dict
userinfo_response_from_dict = UserinfoResponse.from_dict(userinfo_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


