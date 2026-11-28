# McpServerWrite

Fields of POST /admin/mcp/servers (name and resource_uri are required there) and PATCH|PUT /admin/mcp/servers/{serverId} (only the fields that are sent change; resource_uri cannot change). The same rules as the portal.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**resource_uri** | **str** | RFC 8707 resource: https (http only for loopback), no fragment or user info, unique in the organization. Stored in canonical form. | [optional] 
**description** | **str** |  | [optional] 
**endpoint_url** | **str** | Address that the server is reached at, when it differs from resource_uri. | [optional] 
**transport** | **str** |  | [optional] [default to 'http_streamable']
**auth_mode** | **str** |  | [optional] [default to 'oauth']
**status** | **str** | Update only; a new server is active. | [optional] 
**scopes_supported** | [**McpServerWriteScopesSupported**](McpServerWriteScopesSupported.md) |  | [optional] 
**basic_scopes** | [**McpServerWriteBasicScopes**](McpServerWriteBasicScopes.md) |  | [optional] 
**scope_descriptions** | **Dict[str, str]** | Text per scope of scopes_supported, for the portal and the consent page. | [optional] 
**allowed_client_ids** | **List[str]** | Clients of this organization that may get tokens for the server; every client when empty. | [optional] 
**tool_authorizer_client_ids** | **List[str]** | The server&#39;s own clients that may call the per-tool authorization endpoint. | [optional] 
**token_lifetime** | **int** |  | [optional] [default to 3600]
**require_pkce** | **bool** |  | [optional] [default to True]
**require_resource_param** | **bool** |  | [optional] [default to True]
**require_dpop** | **bool** |  | [optional] [default to False]

## Example

```python
from lumoauth_api_client.models.mcp_server_write import McpServerWrite

# TODO update the JSON string below
json = "{}"
# create an instance of McpServerWrite from a JSON string
mcp_server_write_instance = McpServerWrite.from_json(json)
# print the JSON string representation of the object
print(McpServerWrite.to_json())

# convert the object into a dict
mcp_server_write_dict = mcp_server_write_instance.to_dict()
# create an instance of McpServerWrite from a dict
mcp_server_write_from_dict = McpServerWrite.from_dict(mcp_server_write_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


