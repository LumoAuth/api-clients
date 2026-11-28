# AdminRolesUpdatePermissionsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**permissions** | **List[str]** | The full list of permission slugs that the role should grant. | 

## Example

```python
from lumoauth_api_client.models.admin_roles_update_permissions_request import AdminRolesUpdatePermissionsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminRolesUpdatePermissionsRequest from a JSON string
admin_roles_update_permissions_request_instance = AdminRolesUpdatePermissionsRequest.from_json(json)
# print the JSON string representation of the object
print(AdminRolesUpdatePermissionsRequest.to_json())

# convert the object into a dict
admin_roles_update_permissions_request_dict = admin_roles_update_permissions_request_instance.to_dict()
# create an instance of AdminRolesUpdatePermissionsRequest from a dict
admin_roles_update_permissions_request_from_dict = AdminRolesUpdatePermissionsRequest.from_dict(admin_roles_update_permissions_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


