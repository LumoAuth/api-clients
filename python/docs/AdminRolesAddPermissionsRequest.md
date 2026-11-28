# AdminRolesAddPermissionsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**permission_id** | **int** | One permission id (or use permissionIds). | [optional] 
**permission_ids** | **List[int]** | Several permission ids. | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_roles_add_permissions_request import AdminRolesAddPermissionsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminRolesAddPermissionsRequest from a JSON string
admin_roles_add_permissions_request_instance = AdminRolesAddPermissionsRequest.from_json(json)
# print the JSON string representation of the object
print(AdminRolesAddPermissionsRequest.to_json())

# convert the object into a dict
admin_roles_add_permissions_request_dict = admin_roles_add_permissions_request_instance.to_dict()
# create an instance of AdminRolesAddPermissionsRequest from a dict
admin_roles_add_permissions_request_from_dict = AdminRolesAddPermissionsRequest.from_dict(admin_roles_add_permissions_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


