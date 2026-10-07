# AdminRolesListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[Role]**](Role.md) |  | [optional] 
**meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**resource_type** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_roles_list_response import AdminRolesListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminRolesListResponse from a JSON string
admin_roles_list_response_instance = AdminRolesListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminRolesListResponse.to_json())

# convert the object into a dict
admin_roles_list_response_dict = admin_roles_list_response_instance.to_dict()
# create an instance of AdminRolesListResponse from a dict
admin_roles_list_response_from_dict = AdminRolesListResponse.from_dict(admin_roles_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


