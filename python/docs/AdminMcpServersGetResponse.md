# AdminMcpServersGetResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**McpServer**](McpServer.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_mcp_servers_get_response import AdminMcpServersGetResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminMcpServersGetResponse from a JSON string
admin_mcp_servers_get_response_instance = AdminMcpServersGetResponse.from_json(json)
# print the JSON string representation of the object
print(AdminMcpServersGetResponse.to_json())

# convert the object into a dict
admin_mcp_servers_get_response_dict = admin_mcp_servers_get_response_instance.to_dict()
# create an instance of AdminMcpServersGetResponse from a dict
admin_mcp_servers_get_response_from_dict = AdminMcpServersGetResponse.from_dict(admin_mcp_servers_get_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


