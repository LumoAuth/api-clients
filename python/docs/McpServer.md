# McpServer


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**server_id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**resource_uri** | **str** |  | [optional] 
**endpoint_url** | **str** |  | [optional] 
**transport** | **str** |  | [optional] 
**auth_mode** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**scopes_supported** | **List[str]** |  | [optional] 
**scope_descriptions** | **Dict[str, str]** |  | [optional] 
**allowed_client_ids** | **List[str]** |  | [optional] 
**require_pkce** | **bool** |  | [optional] 
**require_resource_param** | **bool** |  | [optional] 
**require_dpop** | **bool** |  | [optional] 
**token_lifetime** | **int** |  | [optional] 
**posture** | [**McpServerPosture**](McpServerPosture.md) |  | [optional] 
**capabilities** | **List[str]** |  | [optional] 
**created_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.mcp_server import McpServer

# TODO update the JSON string below
json = "{}"
# create an instance of McpServer from a JSON string
mcp_server_instance = McpServer.from_json(json)
# print the JSON string representation of the object
print(McpServer.to_json())

# convert the object into a dict
mcp_server_dict = mcp_server_instance.to_dict()
# create an instance of McpServer from a dict
mcp_server_from_dict = McpServer.from_dict(mcp_server_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


