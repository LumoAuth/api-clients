# AdminPoppyUpdateRequestOrganization


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**logo_uri** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_poppy_update_request_organization import AdminPoppyUpdateRequestOrganization

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPoppyUpdateRequestOrganization from a JSON string
admin_poppy_update_request_organization_instance = AdminPoppyUpdateRequestOrganization.from_json(json)
# print the JSON string representation of the object
print(AdminPoppyUpdateRequestOrganization.to_json())

# convert the object into a dict
admin_poppy_update_request_organization_dict = admin_poppy_update_request_organization_instance.to_dict()
# create an instance of AdminPoppyUpdateRequestOrganization from a dict
admin_poppy_update_request_organization_from_dict = AdminPoppyUpdateRequestOrganization.from_dict(admin_poppy_update_request_organization_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


