# AdminOrgRolesCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**slug** | **str** | Optional; derived from the name when left out. | [optional] 
**description** | **str** |  | [optional] 
**is_default** | **bool** | The role that new members get. | [optional] [default to False]

## Example

```python
from lumoauth_api_client.models.admin_org_roles_create_request import AdminOrgRolesCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminOrgRolesCreateRequest from a JSON string
admin_org_roles_create_request_instance = AdminOrgRolesCreateRequest.from_json(json)
# print the JSON string representation of the object
print(AdminOrgRolesCreateRequest.to_json())

# convert the object into a dict
admin_org_roles_create_request_dict = admin_org_roles_create_request_instance.to_dict()
# create an instance of AdminOrgRolesCreateRequest from a dict
admin_org_roles_create_request_from_dict = AdminOrgRolesCreateRequest.from_dict(admin_org_roles_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


