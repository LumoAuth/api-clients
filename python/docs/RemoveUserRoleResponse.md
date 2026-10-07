# RemoveUserRoleResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**User**](User.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.remove_user_role_response import RemoveUserRoleResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RemoveUserRoleResponse from a JSON string
remove_user_role_response_instance = RemoveUserRoleResponse.from_json(json)
# print the JSON string representation of the object
print(RemoveUserRoleResponse.to_json())

# convert the object into a dict
remove_user_role_response_dict = remove_user_role_response_instance.to_dict()
# create an instance of RemoveUserRoleResponse from a dict
remove_user_role_response_from_dict = RemoveUserRoleResponse.from_dict(remove_user_role_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


