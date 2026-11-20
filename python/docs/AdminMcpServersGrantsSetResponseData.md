# AdminMcpServersGrantsSetResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent_id** | **str** |  | [optional] 
**server_id** | **str** |  | [optional] 
**all_tools** | **bool** |  | [optional] 
**tools** | **List[str]** |  | [optional] 
**added** | **List[str]** |  | [optional] 
**removed** | **List[str]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_mcp_servers_grants_set_response_data import AdminMcpServersGrantsSetResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminMcpServersGrantsSetResponseData from a JSON string
admin_mcp_servers_grants_set_response_data_instance = AdminMcpServersGrantsSetResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminMcpServersGrantsSetResponseData.to_json())

# convert the object into a dict
admin_mcp_servers_grants_set_response_data_dict = admin_mcp_servers_grants_set_response_data_instance.to_dict()
# create an instance of AdminMcpServersGrantsSetResponseData from a dict
admin_mcp_servers_grants_set_response_data_from_dict = AdminMcpServersGrantsSetResponseData.from_dict(admin_mcp_servers_grants_set_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


