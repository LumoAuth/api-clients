# McpServerPostureChecksInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**label** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**detail** | **str** |  | [optional] 
**fix** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.mcp_server_posture_checks_inner import McpServerPostureChecksInner

# TODO update the JSON string below
json = "{}"
# create an instance of McpServerPostureChecksInner from a JSON string
mcp_server_posture_checks_inner_instance = McpServerPostureChecksInner.from_json(json)
# print the JSON string representation of the object
print(McpServerPostureChecksInner.to_json())

# convert the object into a dict
mcp_server_posture_checks_inner_dict = mcp_server_posture_checks_inner_instance.to_dict()
# create an instance of McpServerPostureChecksInner from a dict
mcp_server_posture_checks_inner_from_dict = McpServerPostureChecksInner.from_dict(mcp_server_posture_checks_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


