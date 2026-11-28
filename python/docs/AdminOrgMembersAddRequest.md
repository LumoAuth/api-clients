# AdminOrgMembersAddRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **str** | ID of a user of this organization. | 
**role_id** | **int** | Optional: a role of the customer organization; its default role otherwise. | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_org_members_add_request import AdminOrgMembersAddRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminOrgMembersAddRequest from a JSON string
admin_org_members_add_request_instance = AdminOrgMembersAddRequest.from_json(json)
# print the JSON string representation of the object
print(AdminOrgMembersAddRequest.to_json())

# convert the object into a dict
admin_org_members_add_request_dict = admin_org_members_add_request_instance.to_dict()
# create an instance of AdminOrgMembersAddRequest from a dict
admin_org_members_add_request_from_dict = AdminOrgMembersAddRequest.from_dict(admin_org_members_add_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


