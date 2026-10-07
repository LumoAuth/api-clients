# AdminGroupsGetMembersResponseDataItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**email** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**username** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_groups_get_members_response_data_item import AdminGroupsGetMembersResponseDataItem

# TODO update the JSON string below
json = "{}"
# create an instance of AdminGroupsGetMembersResponseDataItem from a JSON string
admin_groups_get_members_response_data_item_instance = AdminGroupsGetMembersResponseDataItem.from_json(json)
# print the JSON string representation of the object
print(AdminGroupsGetMembersResponseDataItem.to_json())

# convert the object into a dict
admin_groups_get_members_response_data_item_dict = admin_groups_get_members_response_data_item_instance.to_dict()
# create an instance of AdminGroupsGetMembersResponseDataItem from a dict
admin_groups_get_members_response_data_item_from_dict = AdminGroupsGetMembersResponseDataItem.from_dict(admin_groups_get_members_response_data_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


