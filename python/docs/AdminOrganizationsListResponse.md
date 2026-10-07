# AdminOrganizationsListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[Organization]**](Organization.md) |  | [optional] 
**meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**resource_type** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_organizations_list_response import AdminOrganizationsListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminOrganizationsListResponse from a JSON string
admin_organizations_list_response_instance = AdminOrganizationsListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminOrganizationsListResponse.to_json())

# convert the object into a dict
admin_organizations_list_response_dict = admin_organizations_list_response_instance.to_dict()
# create an instance of AdminOrganizationsListResponse from a dict
admin_organizations_list_response_from_dict = AdminOrganizationsListResponse.from_dict(admin_organizations_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


