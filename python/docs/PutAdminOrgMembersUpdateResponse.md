# PutAdminOrgMembersUpdateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**OrganizationMember**](OrganizationMember.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_org_members_update_response import PutAdminOrgMembersUpdateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminOrgMembersUpdateResponse from a JSON string
put_admin_org_members_update_response_instance = PutAdminOrgMembersUpdateResponse.from_json(json)
# print the JSON string representation of the object
print(PutAdminOrgMembersUpdateResponse.to_json())

# convert the object into a dict
put_admin_org_members_update_response_dict = put_admin_org_members_update_response_instance.to_dict()
# create an instance of PutAdminOrgMembersUpdateResponse from a dict
put_admin_org_members_update_response_from_dict = PutAdminOrgMembersUpdateResponse.from_dict(put_admin_org_members_update_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


