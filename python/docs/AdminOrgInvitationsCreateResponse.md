# AdminOrgInvitationsCreateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**OrganizationInvitation**](OrganizationInvitation.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_org_invitations_create_response import AdminOrgInvitationsCreateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminOrgInvitationsCreateResponse from a JSON string
admin_org_invitations_create_response_instance = AdminOrgInvitationsCreateResponse.from_json(json)
# print the JSON string representation of the object
print(AdminOrgInvitationsCreateResponse.to_json())

# convert the object into a dict
admin_org_invitations_create_response_dict = admin_org_invitations_create_response_instance.to_dict()
# create an instance of AdminOrgInvitationsCreateResponse from a dict
admin_org_invitations_create_response_from_dict = AdminOrgInvitationsCreateResponse.from_dict(admin_org_invitations_create_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


