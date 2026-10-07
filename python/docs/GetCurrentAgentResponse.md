# GetCurrentAgentResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identity** | [**GetCurrentAgentResponseIdentity**](GetCurrentAgentResponseIdentity.md) |  | [optional] 
**capabilities** | **List[str]** |  | [optional] 
**workspace** | [**GetCurrentAgentResponseWorkspace**](GetCurrentAgentResponseWorkspace.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.get_current_agent_response import GetCurrentAgentResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GetCurrentAgentResponse from a JSON string
get_current_agent_response_instance = GetCurrentAgentResponse.from_json(json)
# print the JSON string representation of the object
print(GetCurrentAgentResponse.to_json())

# convert the object into a dict
get_current_agent_response_dict = get_current_agent_response_instance.to_dict()
# create an instance of GetCurrentAgentResponse from a dict
get_current_agent_response_from_dict = GetCurrentAgentResponse.from_dict(get_current_agent_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


