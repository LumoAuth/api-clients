# AdminGroupsGetMembersResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[AdminGroupsGetMembersResponseDataItem]**](AdminGroupsGetMembersResponseDataItem.md) |  | [optional] 
**meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**resource_type** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_groups_get_members_response import AdminGroupsGetMembersResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminGroupsGetMembersResponse from a JSON string
admin_groups_get_members_response_instance = AdminGroupsGetMembersResponse.from_json(json)
# print the JSON string representation of the object
print(AdminGroupsGetMembersResponse.to_json())

# convert the object into a dict
admin_groups_get_members_response_dict = admin_groups_get_members_response_instance.to_dict()
# create an instance of AdminGroupsGetMembersResponse from a dict
admin_groups_get_members_response_from_dict = AdminGroupsGetMembersResponse.from_dict(admin_groups_get_members_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


