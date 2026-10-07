# AdminGroupsGroupsGetRolesResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[AdminGroupsGroupsGetRolesResponseDataItem]**](AdminGroupsGroupsGetRolesResponseDataItem.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_groups_groups_get_roles_response import AdminGroupsGroupsGetRolesResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminGroupsGroupsGetRolesResponse from a JSON string
admin_groups_groups_get_roles_response_instance = AdminGroupsGroupsGetRolesResponse.from_json(json)
# print the JSON string representation of the object
print(AdminGroupsGroupsGetRolesResponse.to_json())

# convert the object into a dict
admin_groups_groups_get_roles_response_dict = admin_groups_groups_get_roles_response_instance.to_dict()
# create an instance of AdminGroupsGroupsGetRolesResponse from a dict
admin_groups_groups_get_roles_response_from_dict = AdminGroupsGroupsGetRolesResponse.from_dict(admin_groups_groups_get_roles_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


