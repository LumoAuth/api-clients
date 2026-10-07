# AdminOrganizationsCreateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Organization**](Organization.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_organizations_create_response import AdminOrganizationsCreateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminOrganizationsCreateResponse from a JSON string
admin_organizations_create_response_instance = AdminOrganizationsCreateResponse.from_json(json)
# print the JSON string representation of the object
print(AdminOrganizationsCreateResponse.to_json())

# convert the object into a dict
admin_organizations_create_response_dict = admin_organizations_create_response_instance.to_dict()
# create an instance of AdminOrganizationsCreateResponse from a dict
admin_organizations_create_response_from_dict = AdminOrganizationsCreateResponse.from_dict(admin_organizations_create_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


