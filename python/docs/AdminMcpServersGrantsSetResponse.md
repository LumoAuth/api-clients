# AdminMcpServersGrantsSetResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminMcpServersGrantsSetResponseData**](AdminMcpServersGrantsSetResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_mcp_servers_grants_set_response import AdminMcpServersGrantsSetResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminMcpServersGrantsSetResponse from a JSON string
admin_mcp_servers_grants_set_response_instance = AdminMcpServersGrantsSetResponse.from_json(json)
# print the JSON string representation of the object
print(AdminMcpServersGrantsSetResponse.to_json())

# convert the object into a dict
admin_mcp_servers_grants_set_response_dict = admin_mcp_servers_grants_set_response_instance.to_dict()
# create an instance of AdminMcpServersGrantsSetResponse from a dict
admin_mcp_servers_grants_set_response_from_dict = AdminMcpServersGrantsSetResponse.from_dict(admin_mcp_servers_grants_set_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


