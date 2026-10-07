# AdminOrgRolesListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[OrganizationRole]**](OrganizationRole.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_org_roles_list_response import AdminOrgRolesListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminOrgRolesListResponse from a JSON string
admin_org_roles_list_response_instance = AdminOrgRolesListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminOrgRolesListResponse.to_json())

# convert the object into a dict
admin_org_roles_list_response_dict = admin_org_roles_list_response_instance.to_dict()
# create an instance of AdminOrgRolesListResponse from a dict
admin_org_roles_list_response_from_dict = AdminOrgRolesListResponse.from_dict(admin_org_roles_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


