# ListConnectionsResponseAgent

The calling agent.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent_id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**status** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.list_connections_response_agent import ListConnectionsResponseAgent

# TODO update the JSON string below
json = "{}"
# create an instance of ListConnectionsResponseAgent from a JSON string
list_connections_response_agent_instance = ListConnectionsResponseAgent.from_json(json)
# print the JSON string representation of the object
print(ListConnectionsResponseAgent.to_json())

# convert the object into a dict
list_connections_response_agent_dict = list_connections_response_agent_instance.to_dict()
# create an instance of ListConnectionsResponseAgent from a dict
list_connections_response_agent_from_dict = ListConnectionsResponseAgent.from_dict(list_connections_response_agent_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


