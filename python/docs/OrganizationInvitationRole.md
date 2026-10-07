# OrganizationInvitationRole


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**slug** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.organization_invitation_role import OrganizationInvitationRole

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationInvitationRole from a JSON string
organization_invitation_role_instance = OrganizationInvitationRole.from_json(json)
# print the JSON string representation of the object
print(OrganizationInvitationRole.to_json())

# convert the object into a dict
organization_invitation_role_dict = organization_invitation_role_instance.to_dict()
# create an instance of OrganizationInvitationRole from a dict
organization_invitation_role_from_dict = OrganizationInvitationRole.from_dict(organization_invitation_role_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


