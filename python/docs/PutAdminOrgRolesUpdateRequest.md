# PutAdminOrgRolesUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_org_roles_update_request import PutAdminOrgRolesUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminOrgRolesUpdateRequest from a JSON string
put_admin_org_roles_update_request_instance = PutAdminOrgRolesUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(PutAdminOrgRolesUpdateRequest.to_json())

# convert the object into a dict
put_admin_org_roles_update_request_dict = put_admin_org_roles_update_request_instance.to_dict()
# create an instance of PutAdminOrgRolesUpdateRequest from a dict
put_admin_org_roles_update_request_from_dict = PutAdminOrgRolesUpdateRequest.from_dict(put_admin_org_roles_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


