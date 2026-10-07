# AuthorizeMcpResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed** | **bool** |  | [optional] 
**agent_id** | **str** |  | [optional] 
**resource** | **object** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.authorize_mcp_response import AuthorizeMcpResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AuthorizeMcpResponse from a JSON string
authorize_mcp_response_instance = AuthorizeMcpResponse.from_json(json)
# print the JSON string representation of the object
print(AuthorizeMcpResponse.to_json())

# convert the object into a dict
authorize_mcp_response_dict = authorize_mcp_response_instance.to_dict()
# create an instance of AuthorizeMcpResponse from a dict
authorize_mcp_response_from_dict = AuthorizeMcpResponse.from_dict(authorize_mcp_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


