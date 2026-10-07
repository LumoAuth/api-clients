# AdminEmailTemplatesListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email_templates** | [**List[EmailTemplate]**](EmailTemplate.md) |  | [optional] 
**data** | [**List[EmailTemplate]**](EmailTemplate.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_email_templates_list_response import AdminEmailTemplatesListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminEmailTemplatesListResponse from a JSON string
admin_email_templates_list_response_instance = AdminEmailTemplatesListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminEmailTemplatesListResponse.to_json())

# convert the object into a dict
admin_email_templates_list_response_dict = admin_email_templates_list_response_instance.to_dict()
# create an instance of AdminEmailTemplatesListResponse from a dict
admin_email_templates_list_response_from_dict = AdminEmailTemplatesListResponse.from_dict(admin_email_templates_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


