# OAuthAccessToken


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**client_id** | **str** |  | [optional] 
**user_id** | **str** |  | [optional] 
**scopes** | **List[str]** |  | [optional] 
**revoked** | **bool** |  | [optional] 
**expires_at** | **datetime** |  | [optional] 
**created_at** | **datetime** |  | [optional] 
**is_expired** | **bool** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.o_auth_access_token import OAuthAccessToken

# TODO update the JSON string below
json = "{}"
# create an instance of OAuthAccessToken from a JSON string
o_auth_access_token_instance = OAuthAccessToken.from_json(json)
# print the JSON string representation of the object
print(OAuthAccessToken.to_json())

# convert the object into a dict
o_auth_access_token_dict = o_auth_access_token_instance.to_dict()
# create an instance of OAuthAccessToken from a dict
o_auth_access_token_from_dict = OAuthAccessToken.from_dict(o_auth_access_token_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


