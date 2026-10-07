# AdminOrgMembersAddResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**OrganizationMember**](OrganizationMember.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_org_members_add_response import AdminOrgMembersAddResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminOrgMembersAddResponse from a JSON string
admin_org_members_add_response_instance = AdminOrgMembersAddResponse.from_json(json)
# print the JSON string representation of the object
print(AdminOrgMembersAddResponse.to_json())

# convert the object into a dict
admin_org_members_add_response_dict = admin_org_members_add_response_instance.to_dict()
# create an instance of AdminOrgMembersAddResponse from a dict
admin_org_members_add_response_from_dict = AdminOrgMembersAddResponse.from_dict(admin_org_members_add_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


