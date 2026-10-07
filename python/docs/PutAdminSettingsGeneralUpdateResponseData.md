# PutAdminSettingsGeneralUpdateResponseData

Organization name plus the raw settings dictionary: any stored key (display_name, timezone, locale, security, email, audit_log_retention_days, audit_log_auto_delete, agent_governance, ...) is returned as-is; secret-looking keys are redacted.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**display_name** | **str** |  | [optional] 
**timezone** | **str** |  | [optional] 
**locale** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_settings_general_update_response_data import PutAdminSettingsGeneralUpdateResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminSettingsGeneralUpdateResponseData from a JSON string
put_admin_settings_general_update_response_data_instance = PutAdminSettingsGeneralUpdateResponseData.from_json(json)
# print the JSON string representation of the object
print(PutAdminSettingsGeneralUpdateResponseData.to_json())

# convert the object into a dict
put_admin_settings_general_update_response_data_dict = put_admin_settings_general_update_response_data_instance.to_dict()
# create an instance of PutAdminSettingsGeneralUpdateResponseData from a dict
put_admin_settings_general_update_response_data_from_dict = PutAdminSettingsGeneralUpdateResponseData.from_dict(put_admin_settings_general_update_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


