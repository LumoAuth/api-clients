# AgentsMeToolCallsRequestCallsItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tool** | **str** |  | 
**server_id** | **str** | The MCP server the tool belongs to, when it has one. | [optional] 
**decision** | **str** |  | 
**outcome** | **str** | not_run for a call that was denied, refused, expired or blocked (the default for those). | [optional] 
**duration_ms** | **int** |  | [optional] 
**arguments_sha256** | **str** | SHA-256 of the arguments as the host serialized them. The arguments themselves are never sent. | [optional] 
**audit_id** | **str** | audit_id of the Ask API answer that allowed or denied the call. | [optional] 
**occurred_at** | **datetime** | When the call ran; within the last 24 hours. | [optional] 
**error_code** | **str** | A short code for a failed call, never a message. | [optional] 

## Example

```python
from lumoauth_api_client.models.agents_me_tool_calls_request_calls_item import AgentsMeToolCallsRequestCallsItem

# TODO update the JSON string below
json = "{}"
# create an instance of AgentsMeToolCallsRequestCallsItem from a JSON string
agents_me_tool_calls_request_calls_item_instance = AgentsMeToolCallsRequestCallsItem.from_json(json)
# print the JSON string representation of the object
print(AgentsMeToolCallsRequestCallsItem.to_json())

# convert the object into a dict
agents_me_tool_calls_request_calls_item_dict = agents_me_tool_calls_request_calls_item_instance.to_dict()
# create an instance of AgentsMeToolCallsRequestCallsItem from a dict
agents_me_tool_calls_request_calls_item_from_dict = AgentsMeToolCallsRequestCallsItem.from_dict(agents_me_tool_calls_request_calls_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


