# AdminMcpServersGrantsListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[AdminMcpServersGrantsListResponseDataItem]**](AdminMcpServersGrantsListResponseDataItem.md) |  | [optional] 
**server_id** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_mcp_servers_grants_list_response import AdminMcpServersGrantsListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminMcpServersGrantsListResponse from a JSON string
admin_mcp_servers_grants_list_response_instance = AdminMcpServersGrantsListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminMcpServersGrantsListResponse.to_json())

# convert the object into a dict
admin_mcp_servers_grants_list_response_dict = admin_mcp_servers_grants_list_response_instance.to_dict()
# create an instance of AdminMcpServersGrantsListResponse from a dict
admin_mcp_servers_grants_list_response_from_dict = AdminMcpServersGrantsListResponse.from_dict(admin_mcp_servers_grants_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


