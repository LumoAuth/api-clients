# AdminMcpServersGrantsListResponseDataItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent_id** | **str** |  | [optional] 
**agent_name** | **str** |  | [optional] 
**all_tools** | **bool** | The agent may call every tool of the server. | [optional] 
**tools** | **List[str]** | Tools granted one by one. | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_mcp_servers_grants_list_response_data_item import AdminMcpServersGrantsListResponseDataItem

# TODO update the JSON string below
json = "{}"
# create an instance of AdminMcpServersGrantsListResponseDataItem from a JSON string
admin_mcp_servers_grants_list_response_data_item_instance = AdminMcpServersGrantsListResponseDataItem.from_json(json)
# print the JSON string representation of the object
print(AdminMcpServersGrantsListResponseDataItem.to_json())

# convert the object into a dict
admin_mcp_servers_grants_list_response_data_item_dict = admin_mcp_servers_grants_list_response_data_item_instance.to_dict()
# create an instance of AdminMcpServersGrantsListResponseDataItem from a dict
admin_mcp_servers_grants_list_response_data_item_from_dict = AdminMcpServersGrantsListResponseDataItem.from_dict(admin_mcp_servers_grants_list_response_data_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


