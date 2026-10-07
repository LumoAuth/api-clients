# OAuthScope


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**is_default** | **bool** |  | [optional] 
**is_system** | **bool** |  | [optional] 
**created_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.o_auth_scope import OAuthScope

# TODO update the JSON string below
json = "{}"
# create an instance of OAuthScope from a JSON string
o_auth_scope_instance = OAuthScope.from_json(json)
# print the JSON string representation of the object
print(OAuthScope.to_json())

# convert the object into a dict
o_auth_scope_dict = o_auth_scope_instance.to_dict()
# create an instance of OAuthScope from a dict
o_auth_scope_from_dict = OAuthScope.from_dict(o_auth_scope_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


