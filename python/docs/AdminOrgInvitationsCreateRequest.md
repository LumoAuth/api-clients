# AdminOrgInvitationsCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **str** |  | 
**role_id** | **int** | Optional: a role of the customer organization. | [optional] 
**message** | **str** | Optional text for the invitation email. | [optional] 
**skip_email** | **bool** | true creates the invitation without sending the email. | [optional] [default to False]

## Example

```python
from lumoauth_api_client.models.admin_org_invitations_create_request import AdminOrgInvitationsCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminOrgInvitationsCreateRequest from a JSON string
admin_org_invitations_create_request_instance = AdminOrgInvitationsCreateRequest.from_json(json)
# print the JSON string representation of the object
print(AdminOrgInvitationsCreateRequest.to_json())

# convert the object into a dict
admin_org_invitations_create_request_dict = admin_org_invitations_create_request_instance.to_dict()
# create an instance of AdminOrgInvitationsCreateRequest from a dict
admin_org_invitations_create_request_from_dict = AdminOrgInvitationsCreateRequest.from_dict(admin_org_invitations_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


