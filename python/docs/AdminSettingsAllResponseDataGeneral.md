# AdminSettingsAllResponseDataGeneral

Organization name plus the raw settings dictionary: any stored key (display_name, timezone, locale, security, email, audit_log_retention_days, audit_log_auto_delete, agent_governance, ...) is returned as-is; secret-looking keys are redacted.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_settings_all_response_data_general import AdminSettingsAllResponseDataGeneral

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSettingsAllResponseDataGeneral from a JSON string
admin_settings_all_response_data_general_instance = AdminSettingsAllResponseDataGeneral.from_json(json)
# print the JSON string representation of the object
print(AdminSettingsAllResponseDataGeneral.to_json())

# convert the object into a dict
admin_settings_all_response_data_general_dict = admin_settings_all_response_data_general_instance.to_dict()
# create an instance of AdminSettingsAllResponseDataGeneral from a dict
admin_settings_all_response_data_general_from_dict = AdminSettingsAllResponseDataGeneral.from_dict(admin_settings_all_response_data_general_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


