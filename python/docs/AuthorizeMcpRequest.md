# AuthorizeMcpRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_id** | **str** |  | [optional] 
**tool** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.authorize_mcp_request import AuthorizeMcpRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AuthorizeMcpRequest from a JSON string
authorize_mcp_request_instance = AuthorizeMcpRequest.from_json(json)
# print the JSON string representation of the object
print(AuthorizeMcpRequest.to_json())

# convert the object into a dict
authorize_mcp_request_dict = authorize_mcp_request_instance.to_dict()
# create an instance of AuthorizeMcpRequest from a dict
authorize_mcp_request_from_dict = AuthorizeMcpRequest.from_dict(authorize_mcp_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


