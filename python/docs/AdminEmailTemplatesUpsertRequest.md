# AdminEmailTemplatesUpsertRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | 
**body_html** | **str** | HTML body; placeholders as on the portal page. | 

## Example

```python
from lumoauth_api_client.models.admin_email_templates_upsert_request import AdminEmailTemplatesUpsertRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminEmailTemplatesUpsertRequest from a JSON string
admin_email_templates_upsert_request_instance = AdminEmailTemplatesUpsertRequest.from_json(json)
# print the JSON string representation of the object
print(AdminEmailTemplatesUpsertRequest.to_json())

# convert the object into a dict
admin_email_templates_upsert_request_dict = admin_email_templates_upsert_request_instance.to_dict()
# create an instance of AdminEmailTemplatesUpsertRequest from a dict
admin_email_templates_upsert_request_from_dict = AdminEmailTemplatesUpsertRequest.from_dict(admin_email_templates_upsert_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


