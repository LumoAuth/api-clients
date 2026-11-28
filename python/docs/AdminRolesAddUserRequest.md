# AdminRolesAddUserRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **str** |  | 

## Example

```python
from lumoauth_api_client.models.admin_roles_add_user_request import AdminRolesAddUserRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminRolesAddUserRequest from a JSON string
admin_roles_add_user_request_instance = AdminRolesAddUserRequest.from_json(json)
# print the JSON string representation of the object
print(AdminRolesAddUserRequest.to_json())

# convert the object into a dict
admin_roles_add_user_request_dict = admin_roles_add_user_request_instance.to_dict()
# create an instance of AdminRolesAddUserRequest from a dict
admin_roles_add_user_request_from_dict = AdminRolesAddUserRequest.from_dict(admin_roles_add_user_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


