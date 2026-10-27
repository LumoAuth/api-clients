# McpServerToolAuthorizeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed** | **bool** |  | [optional] 
**subject** | **object** |  | [optional] 
**resource** | **object** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.mcp_server_tool_authorize_response import McpServerToolAuthorizeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of McpServerToolAuthorizeResponse from a JSON string
mcp_server_tool_authorize_response_instance = McpServerToolAuthorizeResponse.from_json(json)
# print the JSON string representation of the object
print(McpServerToolAuthorizeResponse.to_json())

# convert the object into a dict
mcp_server_tool_authorize_response_dict = mcp_server_tool_authorize_response_instance.to_dict()
# create an instance of McpServerToolAuthorizeResponse from a dict
mcp_server_tool_authorize_response_from_dict = McpServerToolAuthorizeResponse.from_dict(mcp_server_tool_authorize_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


