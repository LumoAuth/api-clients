# McpServerWriteScopesSupported

A list, or a string of scopes separated by spaces or commas. Omnibus scopes, offline_access and admin or SCIM scopes are refused.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------

## Example

```python
from lumoauth_api_client.models.mcp_server_write_scopes_supported import McpServerWriteScopesSupported

# TODO update the JSON string below
json = "{}"
# create an instance of McpServerWriteScopesSupported from a JSON string
mcp_server_write_scopes_supported_instance = McpServerWriteScopesSupported.from_json(json)
# print the JSON string representation of the object
print(McpServerWriteScopesSupported.to_json())

# convert the object into a dict
mcp_server_write_scopes_supported_dict = mcp_server_write_scopes_supported_instance.to_dict()
# create an instance of McpServerWriteScopesSupported from a dict
mcp_server_write_scopes_supported_from_dict = McpServerWriteScopesSupported.from_dict(mcp_server_write_scopes_supported_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


