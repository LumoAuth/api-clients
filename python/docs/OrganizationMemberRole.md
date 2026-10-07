# OrganizationMemberRole


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**slug** | **str** |  | [optional] 
**name** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.organization_member_role import OrganizationMemberRole

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationMemberRole from a JSON string
organization_member_role_instance = OrganizationMemberRole.from_json(json)
# print the JSON string representation of the object
print(OrganizationMemberRole.to_json())

# convert the object into a dict
organization_member_role_dict = organization_member_role_instance.to_dict()
# create an instance of OrganizationMemberRole from a dict
organization_member_role_from_dict = OrganizationMemberRole.from_dict(organization_member_role_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


