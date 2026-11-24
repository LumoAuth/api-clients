# AdminMcpServersGrantsSetRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tools** | **List[str]** | Tool names, as the server lists them in tools/list. Replaces the tools granted one by one; [] removes them. | [optional] 
**all_tools** | **bool** | Allow every tool of the server, including tools it adds later. Default false. | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_mcp_servers_grants_set_request import AdminMcpServersGrantsSetRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminMcpServersGrantsSetRequest from a JSON string
admin_mcp_servers_grants_set_request_instance = AdminMcpServersGrantsSetRequest.from_json(json)
# print the JSON string representation of the object
print(AdminMcpServersGrantsSetRequest.to_json())

# convert the object into a dict
admin_mcp_servers_grants_set_request_dict = admin_mcp_servers_grants_set_request_instance.to_dict()
# create an instance of AdminMcpServersGrantsSetRequest from a dict
admin_mcp_servers_grants_set_request_from_dict = AdminMcpServersGrantsSetRequest.from_dict(admin_mcp_servers_grants_set_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


