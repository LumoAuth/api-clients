# AdminSettingsAllResponseDataSecurity

Free-form security settings dictionary, stored as sent (keys merge on update). dpop_require_nonce is the only key the server reads; secret-looking keys are redacted.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dpop_require_nonce** | **bool** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_settings_all_response_data_security import AdminSettingsAllResponseDataSecurity

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSettingsAllResponseDataSecurity from a JSON string
admin_settings_all_response_data_security_instance = AdminSettingsAllResponseDataSecurity.from_json(json)
# print the JSON string representation of the object
print(AdminSettingsAllResponseDataSecurity.to_json())

# convert the object into a dict
admin_settings_all_response_data_security_dict = admin_settings_all_response_data_security_instance.to_dict()
# create an instance of AdminSettingsAllResponseDataSecurity from a dict
admin_settings_all_response_data_security_from_dict = AdminSettingsAllResponseDataSecurity.from_dict(admin_settings_all_response_data_security_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


