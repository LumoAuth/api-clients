# AdminRolesGetResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Role**](Role.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_roles_get_response import AdminRolesGetResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminRolesGetResponse from a JSON string
admin_roles_get_response_instance = AdminRolesGetResponse.from_json(json)
# print the JSON string representation of the object
print(AdminRolesGetResponse.to_json())

# convert the object into a dict
admin_roles_get_response_dict = admin_roles_get_response_instance.to_dict()
# create an instance of AdminRolesGetResponse from a dict
admin_roles_get_response_from_dict = AdminRolesGetResponse.from_dict(admin_roles_get_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


