# PutAdminOrganizationsUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**slug** | **str** | Leave it out to keep the slug; an empty slug is refused. | [optional] 
**display_name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**logo_url** | **str** |  | [optional] 
**metadata** | **Dict[str, object]** |  | [optional] 
**is_active** | **bool** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_organizations_update_request import PutAdminOrganizationsUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminOrganizationsUpdateRequest from a JSON string
put_admin_organizations_update_request_instance = PutAdminOrganizationsUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(PutAdminOrganizationsUpdateRequest.to_json())

# convert the object into a dict
put_admin_organizations_update_request_dict = put_admin_organizations_update_request_instance.to_dict()
# create an instance of PutAdminOrganizationsUpdateRequest from a dict
put_admin_organizations_update_request_from_dict = PutAdminOrganizationsUpdateRequest.from_dict(put_admin_organizations_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


