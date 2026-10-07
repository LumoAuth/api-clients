# AdminMcpServersListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[McpServer]**](McpServer.md) |  | [optional] 
**meta** | [**AdminMcpServersListResponseMeta**](AdminMcpServersListResponseMeta.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_mcp_servers_list_response import AdminMcpServersListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminMcpServersListResponse from a JSON string
admin_mcp_servers_list_response_instance = AdminMcpServersListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminMcpServersListResponse.to_json())

# convert the object into a dict
admin_mcp_servers_list_response_dict = admin_mcp_servers_list_response_instance.to_dict()
# create an instance of AdminMcpServersListResponse from a dict
admin_mcp_servers_list_response_from_dict = AdminMcpServersListResponse.from_dict(admin_mcp_servers_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


