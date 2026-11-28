# AdminGroupsUpdateRolesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**roles** | **List[str]** | The full list of role slugs. | 

## Example

```python
from lumoauth_api_client.models.admin_groups_update_roles_request import AdminGroupsUpdateRolesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminGroupsUpdateRolesRequest from a JSON string
admin_groups_update_roles_request_instance = AdminGroupsUpdateRolesRequest.from_json(json)
# print the JSON string representation of the object
print(AdminGroupsUpdateRolesRequest.to_json())

# convert the object into a dict
admin_groups_update_roles_request_dict = admin_groups_update_roles_request_instance.to_dict()
# create an instance of AdminGroupsUpdateRolesRequest from a dict
admin_groups_update_roles_request_from_dict = AdminGroupsUpdateRolesRequest.from_dict(admin_groups_update_roles_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


