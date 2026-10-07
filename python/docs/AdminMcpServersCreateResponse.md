# AdminMcpServersCreateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**McpServer**](McpServer.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_mcp_servers_create_response import AdminMcpServersCreateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminMcpServersCreateResponse from a JSON string
admin_mcp_servers_create_response_instance = AdminMcpServersCreateResponse.from_json(json)
# print the JSON string representation of the object
print(AdminMcpServersCreateResponse.to_json())

# convert the object into a dict
admin_mcp_servers_create_response_dict = admin_mcp_servers_create_response_instance.to_dict()
# create an instance of AdminMcpServersCreateResponse from a dict
admin_mcp_servers_create_response_from_dict = AdminMcpServersCreateResponse.from_dict(admin_mcp_servers_create_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


