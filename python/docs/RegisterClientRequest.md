# RegisterClientRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**redirect_uris** | **List[str]** |  | [optional] 
**client_name** | **str** |  | [optional] 
**grant_types** | **List[str]** |  | [optional] 
**response_types** | **List[str]** |  | [optional] 
**token_endpoint_auth_method** | **str** |  | [optional] 
**scope** | **str** |  | [optional] 
**jwks_uri** | **str** |  | [optional] 
**jwks** | **Dict[str, object]** |  | [optional] 
**application_type** | **str** |  | [optional] 
**post_logout_redirect_uris** | **List[str]** |  | [optional] 
**backchannel_logout_uri** | **str** |  | [optional] 
**frontchannel_logout_uri** | **str** |  | [optional] 
**client_uri** | **str** |  | [optional] 
**logo_uri** | **str** |  | [optional] 
**policy_uri** | **str** |  | [optional] 
**tos_uri** | **str** |  | [optional] 
**contacts** | **List[str]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.register_client_request import RegisterClientRequest

# TODO update the JSON string below
json = "{}"
# create an instance of RegisterClientRequest from a JSON string
register_client_request_instance = RegisterClientRequest.from_json(json)
# print the JSON string representation of the object
print(RegisterClientRequest.to_json())

# convert the object into a dict
register_client_request_dict = register_client_request_instance.to_dict()
# create an instance of RegisterClientRequest from a dict
register_client_request_from_dict = RegisterClientRequest.from_dict(register_client_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


