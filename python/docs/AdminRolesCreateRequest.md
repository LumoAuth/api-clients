# AdminRolesCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**slug** | **str** | Optional; derived from the name when left out. 1 to 100 lowercase letters, digits and underscores, in parts joined by \&quot;.\&quot; or \&quot;-\&quot;. Reserved slugs (admin, root, ...) are refused. | [optional] 
**description** | **str** |  | [optional] 
**permissions** | **List[str]** | Optional permission slugs (needs roles.assign-permissions). | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_roles_create_request import AdminRolesCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminRolesCreateRequest from a JSON string
admin_roles_create_request_instance = AdminRolesCreateRequest.from_json(json)
# print the JSON string representation of the object
print(AdminRolesCreateRequest.to_json())

# convert the object into a dict
admin_roles_create_request_dict = admin_roles_create_request_instance.to_dict()
# create an instance of AdminRolesCreateRequest from a dict
admin_roles_create_request_from_dict = AdminRolesCreateRequest.from_dict(admin_roles_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


