# AdminMcpServersGrantsRemoveResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent_id** | **str** |  | [optional] 
**server_id** | **str** |  | [optional] 
**all_tools** | **bool** |  | [optional] 
**tools** | **List[str]** |  | [optional] 
**added** | **List[str]** |  | [optional] 
**removed** | **List[str]** | The tools that were granted one by one before. | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_mcp_servers_grants_remove_response_data import AdminMcpServersGrantsRemoveResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminMcpServersGrantsRemoveResponseData from a JSON string
admin_mcp_servers_grants_remove_response_data_instance = AdminMcpServersGrantsRemoveResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminMcpServersGrantsRemoveResponseData.to_json())

# convert the object into a dict
admin_mcp_servers_grants_remove_response_data_dict = admin_mcp_servers_grants_remove_response_data_instance.to_dict()
# create an instance of AdminMcpServersGrantsRemoveResponseData from a dict
admin_mcp_servers_grants_remove_response_data_from_dict = AdminMcpServersGrantsRemoveResponseData.from_dict(admin_mcp_servers_grants_remove_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


