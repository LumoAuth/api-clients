# AdminMcpServersListResponseMeta


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **int** |  | [optional] 
**page** | **int** |  | [optional] 
**limit** | **int** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_mcp_servers_list_response_meta import AdminMcpServersListResponseMeta

# TODO update the JSON string below
json = "{}"
# create an instance of AdminMcpServersListResponseMeta from a JSON string
admin_mcp_servers_list_response_meta_instance = AdminMcpServersListResponseMeta.from_json(json)
# print the JSON string representation of the object
print(AdminMcpServersListResponseMeta.to_json())

# convert the object into a dict
admin_mcp_servers_list_response_meta_dict = admin_mcp_servers_list_response_meta_instance.to_dict()
# create an instance of AdminMcpServersListResponseMeta from a dict
admin_mcp_servers_list_response_meta_from_dict = AdminMcpServersListResponseMeta.from_dict(admin_mcp_servers_list_response_meta_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


