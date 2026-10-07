# McpServerPosture

Computed security posture checklist (src/Service/McpPosture).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**level** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**passes** | **int** |  | [optional] 
**applicable** | **int** |  | [optional] 
**checks** | [**List[McpServerPostureChecksInner]**](McpServerPostureChecksInner.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.mcp_server_posture import McpServerPosture

# TODO update the JSON string below
json = "{}"
# create an instance of McpServerPosture from a JSON string
mcp_server_posture_instance = McpServerPosture.from_json(json)
# print the JSON string representation of the object
print(McpServerPosture.to_json())

# convert the object into a dict
mcp_server_posture_dict = mcp_server_posture_instance.to_dict()
# create an instance of McpServerPosture from a dict
mcp_server_posture_from_dict = McpServerPosture.from_dict(mcp_server_posture_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


