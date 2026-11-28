# AdminEmailTemplatesPreviewRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**body_html** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_email_templates_preview_request import AdminEmailTemplatesPreviewRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminEmailTemplatesPreviewRequest from a JSON string
admin_email_templates_preview_request_instance = AdminEmailTemplatesPreviewRequest.from_json(json)
# print the JSON string representation of the object
print(AdminEmailTemplatesPreviewRequest.to_json())

# convert the object into a dict
admin_email_templates_preview_request_dict = admin_email_templates_preview_request_instance.to_dict()
# create an instance of AdminEmailTemplatesPreviewRequest from a dict
admin_email_templates_preview_request_from_dict = AdminEmailTemplatesPreviewRequest.from_dict(admin_email_templates_preview_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


