# GetCurrentAgentResponseIdentity


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**tenant** | **str** |  | [optional] 
**agent_id** | **str** | Present when the principal is an agent. | [optional] 
**status** | **str** | Present when the principal is an agent. | [optional] 

## Example

```python
from lumoauth_api_client.models.get_current_agent_response_identity import GetCurrentAgentResponseIdentity

# TODO update the JSON string below
json = "{}"
# create an instance of GetCurrentAgentResponseIdentity from a JSON string
get_current_agent_response_identity_instance = GetCurrentAgentResponseIdentity.from_json(json)
# print the JSON string representation of the object
print(GetCurrentAgentResponseIdentity.to_json())

# convert the object into a dict
get_current_agent_response_identity_dict = get_current_agent_response_identity_instance.to_dict()
# create an instance of GetCurrentAgentResponseIdentity from a dict
get_current_agent_response_identity_from_dict = GetCurrentAgentResponseIdentity.from_dict(get_current_agent_response_identity_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


