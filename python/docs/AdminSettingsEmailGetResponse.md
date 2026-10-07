# AdminSettingsEmailGetResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **Dict[str, object]** | Free-form email settings dictionary, stored as sent (keys merge on update); secret-looking keys are redacted. | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_settings_email_get_response import AdminSettingsEmailGetResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSettingsEmailGetResponse from a JSON string
admin_settings_email_get_response_instance = AdminSettingsEmailGetResponse.from_json(json)
# print the JSON string representation of the object
print(AdminSettingsEmailGetResponse.to_json())

# convert the object into a dict
admin_settings_email_get_response_dict = admin_settings_email_get_response_instance.to_dict()
# create an instance of AdminSettingsEmailGetResponse from a dict
admin_settings_email_get_response_from_dict = AdminSettingsEmailGetResponse.from_dict(admin_settings_email_get_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


