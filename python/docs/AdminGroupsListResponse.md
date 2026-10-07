# AdminGroupsListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[Group]**](Group.md) |  | [optional] 
**meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_groups_list_response import AdminGroupsListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminGroupsListResponse from a JSON string
admin_groups_list_response_instance = AdminGroupsListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminGroupsListResponse.to_json())

# convert the object into a dict
admin_groups_list_response_dict = admin_groups_list_response_instance.to_dict()
# create an instance of AdminGroupsListResponse from a dict
admin_groups_list_response_from_dict = AdminGroupsListResponse.from_dict(admin_groups_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


