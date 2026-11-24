# AgentsMeToolCallsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**calls** | [**List[AgentsMeToolCallsRequestCallsItem]**](AgentsMeToolCallsRequestCallsItem.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.agents_me_tool_calls_request import AgentsMeToolCallsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AgentsMeToolCallsRequest from a JSON string
agents_me_tool_calls_request_instance = AgentsMeToolCallsRequest.from_json(json)
# print the JSON string representation of the object
print(AgentsMeToolCallsRequest.to_json())

# convert the object into a dict
agents_me_tool_calls_request_dict = agents_me_tool_calls_request_instance.to_dict()
# create an instance of AgentsMeToolCallsRequest from a dict
agents_me_tool_calls_request_from_dict = AgentsMeToolCallsRequest.from_dict(agents_me_tool_calls_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


