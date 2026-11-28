# RegisterAgentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent** | **Dict[str, object]** | The agent to register or update (name, description, identity, capabilities, ...). The same fields may also be sent at the top level. | [optional] 
**email** | **str** | Optional inline sign-in of the person who registers the agent; a session or access token is preferred. | [optional] 
**password** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.register_agent_request import RegisterAgentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of RegisterAgentRequest from a JSON string
register_agent_request_instance = RegisterAgentRequest.from_json(json)
# print the JSON string representation of the object
print(RegisterAgentRequest.to_json())

# convert the object into a dict
register_agent_request_dict = register_agent_request_instance.to_dict()
# create an instance of RegisterAgentRequest from a dict
register_agent_request_from_dict = RegisterAgentRequest.from_dict(register_agent_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


