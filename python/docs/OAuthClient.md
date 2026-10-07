# OAuthClient


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**client_id** | **str** |  | 
**name** | **str** |  | 
**is_confidential** | **bool** |  | 
**is_public** | **bool** |  | 
**is_active** | **bool** |  | 
**requires_pkce** | **bool** |  | 
**created_at** | **datetime** |  | 
**redirect_uris** | **List[str]** | Detailed responses only | [optional] 
**scopes** | **List[str]** | Detailed responses only | [optional] 
**grant_types** | **List[str]** | Detailed responses only | [optional] 

## Example

```python
from lumoauth_api_client.models.o_auth_client import OAuthClient

# TODO update the JSON string below
json = "{}"
# create an instance of OAuthClient from a JSON string
o_auth_client_instance = OAuthClient.from_json(json)
# print the JSON string representation of the object
print(OAuthClient.to_json())

# convert the object into a dict
o_auth_client_dict = o_auth_client_instance.to_dict()
# create an instance of OAuthClient from a dict
o_auth_client_from_dict = OAuthClient.from_dict(o_auth_client_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


