# AdminSettingsGeneralGetResponseData

Defaults (displayName, timezone, locale) are filled in, then the raw settings dictionary is merged over them: any stored key (display_name, security, email, audit_log_retention_days, audit_log_auto_delete, agent_governance, ...) is returned as-is; secret-looking keys are redacted.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**display_name** | **str** |  | [optional] 
**timezone** | **str** |  | [optional] 
**locale** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_settings_general_get_response_data import AdminSettingsGeneralGetResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSettingsGeneralGetResponseData from a JSON string
admin_settings_general_get_response_data_instance = AdminSettingsGeneralGetResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminSettingsGeneralGetResponseData.to_json())

# convert the object into a dict
admin_settings_general_get_response_data_dict = admin_settings_general_get_response_data_instance.to_dict()
# create an instance of AdminSettingsGeneralGetResponseData from a dict
admin_settings_general_get_response_data_from_dict = AdminSettingsGeneralGetResponseData.from_dict(admin_settings_general_get_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


