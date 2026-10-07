# AdminPermissionsListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[Permission]**](Permission.md) |  | [optional] 
**meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**resource_type** | **str** |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_permissions_list_response import AdminPermissionsListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPermissionsListResponse from a JSON string
admin_permissions_list_response_instance = AdminPermissionsListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminPermissionsListResponse.to_json())

# convert the object into a dict
admin_permissions_list_response_dict = admin_permissions_list_response_instance.to_dict()
# create an instance of AdminPermissionsListResponse from a dict
admin_permissions_list_response_from_dict = AdminPermissionsListResponse.from_dict(admin_permissions_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


