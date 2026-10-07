# AdminEmailTemplatesPreviewResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**subject** | **str** |  | [optional] 
**html** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_email_templates_preview_response import AdminEmailTemplatesPreviewResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminEmailTemplatesPreviewResponse from a JSON string
admin_email_templates_preview_response_instance = AdminEmailTemplatesPreviewResponse.from_json(json)
# print the JSON string representation of the object
print(AdminEmailTemplatesPreviewResponse.to_json())

# convert the object into a dict
admin_email_templates_preview_response_dict = admin_email_templates_preview_response_instance.to_dict()
# create an instance of AdminEmailTemplatesPreviewResponse from a dict
admin_email_templates_preview_response_from_dict = AdminEmailTemplatesPreviewResponse.from_dict(admin_email_templates_preview_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


