# AdminGroupsAddMembersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **str** | One user (or use userIds). | [optional] 
**user_ids** | **List[str]** | Several users. | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_groups_add_members_request import AdminGroupsAddMembersRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminGroupsAddMembersRequest from a JSON string
admin_groups_add_members_request_instance = AdminGroupsAddMembersRequest.from_json(json)
# print the JSON string representation of the object
print(AdminGroupsAddMembersRequest.to_json())

# convert the object into a dict
admin_groups_add_members_request_dict = admin_groups_add_members_request_instance.to_dict()
# create an instance of AdminGroupsAddMembersRequest from a dict
admin_groups_add_members_request_from_dict = AdminGroupsAddMembersRequest.from_dict(admin_groups_add_members_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


