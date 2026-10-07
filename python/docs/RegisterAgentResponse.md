# RegisterAgentResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** |  | [optional] 
**agent_id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**workload_identity** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.register_agent_response import RegisterAgentResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RegisterAgentResponse from a JSON string
register_agent_response_instance = RegisterAgentResponse.from_json(json)
# print the JSON string representation of the object
print(RegisterAgentResponse.to_json())

# convert the object into a dict
register_agent_response_dict = register_agent_response_instance.to_dict()
# create an instance of RegisterAgentResponse from a dict
register_agent_response_from_dict = RegisterAgentResponse.from_dict(register_agent_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


