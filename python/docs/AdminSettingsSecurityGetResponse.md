# AdminSettingsSecurityGetResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminSettingsAllResponseDataSecurity**](AdminSettingsAllResponseDataSecurity.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_settings_security_get_response import AdminSettingsSecurityGetResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSettingsSecurityGetResponse from a JSON string
admin_settings_security_get_response_instance = AdminSettingsSecurityGetResponse.from_json(json)
# print the JSON string representation of the object
print(AdminSettingsSecurityGetResponse.to_json())

# convert the object into a dict
admin_settings_security_get_response_dict = admin_settings_security_get_response_instance.to_dict()
# create an instance of AdminSettingsSecurityGetResponse from a dict
admin_settings_security_get_response_from_dict = AdminSettingsSecurityGetResponse.from_dict(admin_settings_security_get_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


