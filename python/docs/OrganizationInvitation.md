# OrganizationInvitation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**email** | **str** |  | [optional] 
**role** | [**OrganizationInvitationRole**](OrganizationInvitationRole.md) |  | [optional] 
**status** | **str** |  | [optional] 
**invited_by** | **str** |  | [optional] 
**created_at** | **datetime** |  | [optional] 
**expires_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.organization_invitation import OrganizationInvitation

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationInvitation from a JSON string
organization_invitation_instance = OrganizationInvitation.from_json(json)
# print the JSON string representation of the object
print(OrganizationInvitation.to_json())

# convert the object into a dict
organization_invitation_dict = organization_invitation_instance.to_dict()
# create an instance of OrganizationInvitation from a dict
organization_invitation_from_dict = OrganizationInvitation.from_dict(organization_invitation_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


