# AdminOrganizationsGetResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Organization**](Organization.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_organizations_get_response import AdminOrganizationsGetResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminOrganizationsGetResponse from a JSON string
admin_organizations_get_response_instance = AdminOrganizationsGetResponse.from_json(json)
# print the JSON string representation of the object
print(AdminOrganizationsGetResponse.to_json())

# convert the object into a dict
admin_organizations_get_response_dict = admin_organizations_get_response_instance.to_dict()
# create an instance of AdminOrganizationsGetResponse from a dict
admin_organizations_get_response_from_dict = AdminOrganizationsGetResponse.from_dict(admin_organizations_get_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


