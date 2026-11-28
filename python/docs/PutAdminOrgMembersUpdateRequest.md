# PutAdminOrgMembersUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**role_id** | **int** | A role of the customer organization. | [optional] 
**status** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_org_members_update_request import PutAdminOrgMembersUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminOrgMembersUpdateRequest from a JSON string
put_admin_org_members_update_request_instance = PutAdminOrgMembersUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(PutAdminOrgMembersUpdateRequest.to_json())

# convert the object into a dict
put_admin_org_members_update_request_dict = put_admin_org_members_update_request_instance.to_dict()
# create an instance of PutAdminOrgMembersUpdateRequest from a dict
put_admin_org_members_update_request_from_dict = PutAdminOrgMembersUpdateRequest.from_dict(put_admin_org_members_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


