# GetServerResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**server_id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**resource_uri** | **str** |  | [optional] 
**endpoint_url** | **str** |  | [optional] 
**transport** | **str** |  | [optional] 
**auth_mode** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**scopes_supported** | **List[str]** |  | [optional] 
**require_pkce** | **bool** |  | [optional] 
**require_dpop** | **bool** |  | [optional] 
**token_lifetime** | **int** |  | [optional] 
**created_at** | **datetime** |  | [optional] 
**updated_at** | **datetime** |  | [optional] 
**discovery** | [**GetServerResponseDiscovery**](GetServerResponseDiscovery.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.get_server_response import GetServerResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GetServerResponse from a JSON string
get_server_response_instance = GetServerResponse.from_json(json)
# print the JSON string representation of the object
print(GetServerResponse.to_json())

# convert the object into a dict
get_server_response_dict = get_server_response_instance.to_dict()
# create an instance of GetServerResponse from a dict
get_server_response_from_dict = GetServerResponse.from_dict(get_server_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


