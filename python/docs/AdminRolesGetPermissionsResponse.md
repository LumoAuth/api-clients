# AdminRolesGetPermissionsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[AdminRolesGetPermissionsResponseDataItem]**](AdminRolesGetPermissionsResponseDataItem.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_roles_get_permissions_response import AdminRolesGetPermissionsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminRolesGetPermissionsResponse from a JSON string
admin_roles_get_permissions_response_instance = AdminRolesGetPermissionsResponse.from_json(json)
# print the JSON string representation of the object
print(AdminRolesGetPermissionsResponse.to_json())

# convert the object into a dict
admin_roles_get_permissions_response_dict = admin_roles_get_permissions_response_instance.to_dict()
# create an instance of AdminRolesGetPermissionsResponse from a dict
admin_roles_get_permissions_response_from_dict = AdminRolesGetPermissionsResponse.from_dict(admin_roles_get_permissions_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


