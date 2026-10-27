# McpServerToolAuthorizeRequestSubject


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
**id** | **str** | User UUID, or agent id (agt_…). For an MCP token, the user id is &#x60;sub&#x60;; for an agent token &#x60;sub&#x60; is &#x60;agent_&lt;id&gt;&#x60;. | 

## Example

```python
from lumoauth_api_client.models.mcp_server_tool_authorize_request_subject import McpServerToolAuthorizeRequestSubject

# TODO update the JSON string below
json = "{}"
# create an instance of McpServerToolAuthorizeRequestSubject from a JSON string
mcp_server_tool_authorize_request_subject_instance = McpServerToolAuthorizeRequestSubject.from_json(json)
# print the JSON string representation of the object
print(McpServerToolAuthorizeRequestSubject.to_json())

# convert the object into a dict
mcp_server_tool_authorize_request_subject_dict = mcp_server_tool_authorize_request_subject_instance.to_dict()
# create an instance of McpServerToolAuthorizeRequestSubject from a dict
mcp_server_tool_authorize_request_subject_from_dict = McpServerToolAuthorizeRequestSubject.from_dict(mcp_server_tool_authorize_request_subject_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


