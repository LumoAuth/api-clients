# McpServerToolAuthorizeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | [**McpServerToolAuthorizeRequestSubject**](McpServerToolAuthorizeRequestSubject.md) |  | 
**tool** | **str** |  | 

## Example

```python
from lumoauth_api_client.models.mcp_server_tool_authorize_request import McpServerToolAuthorizeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of McpServerToolAuthorizeRequest from a JSON string
mcp_server_tool_authorize_request_instance = McpServerToolAuthorizeRequest.from_json(json)
# print the JSON string representation of the object
print(McpServerToolAuthorizeRequest.to_json())

# convert the object into a dict
mcp_server_tool_authorize_request_dict = mcp_server_tool_authorize_request_instance.to_dict()
# create an instance of McpServerToolAuthorizeRequest from a dict
mcp_server_tool_authorize_request_from_dict = McpServerToolAuthorizeRequest.from_dict(mcp_server_tool_authorize_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


