# AdminOrgInvitationsListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[OrganizationInvitation]**](OrganizationInvitation.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_org_invitations_list_response import AdminOrgInvitationsListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminOrgInvitationsListResponse from a JSON string
admin_org_invitations_list_response_instance = AdminOrgInvitationsListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminOrgInvitationsListResponse.to_json())

# convert the object into a dict
admin_org_invitations_list_response_dict = admin_org_invitations_list_response_instance.to_dict()
# create an instance of AdminOrgInvitationsListResponse from a dict
admin_org_invitations_list_response_from_dict = AdminOrgInvitationsListResponse.from_dict(admin_org_invitations_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


