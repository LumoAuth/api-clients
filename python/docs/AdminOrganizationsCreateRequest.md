# AdminOrganizationsCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | At most 100 characters. | 
**slug** | **str** | Optional; derived from the name when left out. Lowercase letters, digits and hyphens. | [optional] 
**display_name** | **str** | At most 255 characters. | [optional] 
**description** | **str** |  | [optional] 
**logo_url** | **str** | Absolute https URL. | [optional] 
**metadata** | **Dict[str, object]** |  | [optional] 
**is_active** | **bool** |  | [optional] [default to True]

## Example

```python
from lumoauth_api_client.models.admin_organizations_create_request import AdminOrganizationsCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminOrganizationsCreateRequest from a JSON string
admin_organizations_create_request_instance = AdminOrganizationsCreateRequest.from_json(json)
# print the JSON string representation of the object
print(AdminOrganizationsCreateRequest.to_json())

# convert the object into a dict
admin_organizations_create_request_dict = admin_organizations_create_request_instance.to_dict()
# create an instance of AdminOrganizationsCreateRequest from a dict
admin_organizations_create_request_from_dict = AdminOrganizationsCreateRequest.from_dict(admin_organizations_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


