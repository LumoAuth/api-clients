# AdminGroupsAddRoleRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**role_id** | **int** |  | 

## Example

```python
from lumoauth_api_client.models.admin_groups_add_role_request import AdminGroupsAddRoleRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminGroupsAddRoleRequest from a JSON string
admin_groups_add_role_request_instance = AdminGroupsAddRoleRequest.from_json(json)
# print the JSON string representation of the object
print(AdminGroupsAddRoleRequest.to_json())

# convert the object into a dict
admin_groups_add_role_request_dict = admin_groups_add_role_request_instance.to_dict()
# create an instance of AdminGroupsAddRoleRequest from a dict
admin_groups_add_role_request_from_dict = AdminGroupsAddRoleRequest.from_dict(admin_groups_add_role_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


