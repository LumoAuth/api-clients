# UpdateUserRolesResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**User**](User.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.update_user_roles_response import UpdateUserRolesResponse

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateUserRolesResponse from a JSON string
update_user_roles_response_instance = UpdateUserRolesResponse.from_json(json)
# print the JSON string representation of the object
print(UpdateUserRolesResponse.to_json())

# convert the object into a dict
update_user_roles_response_dict = update_user_roles_response_instance.to_dict()
# create an instance of UpdateUserRolesResponse from a dict
update_user_roles_response_from_dict = UpdateUserRolesResponse.from_dict(update_user_roles_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


