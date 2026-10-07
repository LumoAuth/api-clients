# AdminRolesCreateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Role**](Role.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_roles_create_response import AdminRolesCreateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminRolesCreateResponse from a JSON string
admin_roles_create_response_instance = AdminRolesCreateResponse.from_json(json)
# print the JSON string representation of the object
print(AdminRolesCreateResponse.to_json())

# convert the object into a dict
admin_roles_create_response_dict = admin_roles_create_response_instance.to_dict()
# create an instance of AdminRolesCreateResponse from a dict
admin_roles_create_response_from_dict = AdminRolesCreateResponse.from_dict(admin_roles_create_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


