# AdminMcpServersGrantsRemoveResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminMcpServersGrantsRemoveResponseData**](AdminMcpServersGrantsRemoveResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_mcp_servers_grants_remove_response import AdminMcpServersGrantsRemoveResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminMcpServersGrantsRemoveResponse from a JSON string
admin_mcp_servers_grants_remove_response_instance = AdminMcpServersGrantsRemoveResponse.from_json(json)
# print the JSON string representation of the object
print(AdminMcpServersGrantsRemoveResponse.to_json())

# convert the object into a dict
admin_mcp_servers_grants_remove_response_dict = admin_mcp_servers_grants_remove_response_instance.to_dict()
# create an instance of AdminMcpServersGrantsRemoveResponse from a dict
admin_mcp_servers_grants_remove_response_from_dict = AdminMcpServersGrantsRemoveResponse.from_dict(admin_mcp_servers_grants_remove_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


