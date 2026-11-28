# AddUserRoleRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**role_id** | **int** | Role id (or use roleSlug). | [optional] 
**role_slug** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.add_user_role_request import AddUserRoleRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AddUserRoleRequest from a JSON string
add_user_role_request_instance = AddUserRoleRequest.from_json(json)
# print the JSON string representation of the object
print(AddUserRoleRequest.to_json())

# convert the object into a dict
add_user_role_request_dict = add_user_role_request_instance.to_dict()
# create an instance of AddUserRoleRequest from a dict
add_user_role_request_from_dict = AddUserRoleRequest.from_dict(add_user_role_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


