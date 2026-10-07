# AdminRolesGetUsersResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[UserRef]**](UserRef.md) |  | [optional] 
**meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**resource_type** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_roles_get_users_response import AdminRolesGetUsersResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminRolesGetUsersResponse from a JSON string
admin_roles_get_users_response_instance = AdminRolesGetUsersResponse.from_json(json)
# print the JSON string representation of the object
print(AdminRolesGetUsersResponse.to_json())

# convert the object into a dict
admin_roles_get_users_response_dict = admin_roles_get_users_response_instance.to_dict()
# create an instance of AdminRolesGetUsersResponse from a dict
admin_roles_get_users_response_from_dict = AdminRolesGetUsersResponse.from_dict(admin_roles_get_users_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


