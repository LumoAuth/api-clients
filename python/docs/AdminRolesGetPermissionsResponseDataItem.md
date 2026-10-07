# AdminRolesGetPermissionsResponseDataItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**slug** | **str** |  | [optional] 
**description** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_roles_get_permissions_response_data_item import AdminRolesGetPermissionsResponseDataItem

# TODO update the JSON string below
json = "{}"
# create an instance of AdminRolesGetPermissionsResponseDataItem from a JSON string
admin_roles_get_permissions_response_data_item_instance = AdminRolesGetPermissionsResponseDataItem.from_json(json)
# print the JSON string representation of the object
print(AdminRolesGetPermissionsResponseDataItem.to_json())

# convert the object into a dict
admin_roles_get_permissions_response_data_item_dict = admin_roles_get_permissions_response_data_item_instance.to_dict()
# create an instance of AdminRolesGetPermissionsResponseDataItem from a dict
admin_roles_get_permissions_response_data_item_from_dict = AdminRolesGetPermissionsResponseDataItem.from_dict(admin_roles_get_permissions_response_data_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


