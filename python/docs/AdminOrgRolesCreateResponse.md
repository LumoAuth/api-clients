# AdminOrgRolesCreateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**OrganizationRole**](OrganizationRole.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_org_roles_create_response import AdminOrgRolesCreateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminOrgRolesCreateResponse from a JSON string
admin_org_roles_create_response_instance = AdminOrgRolesCreateResponse.from_json(json)
# print the JSON string representation of the object
print(AdminOrgRolesCreateResponse.to_json())

# convert the object into a dict
admin_org_roles_create_response_dict = admin_org_roles_create_response_instance.to_dict()
# create an instance of AdminOrgRolesCreateResponse from a dict
admin_org_roles_create_response_from_dict = AdminOrgRolesCreateResponse.from_dict(admin_org_roles_create_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


