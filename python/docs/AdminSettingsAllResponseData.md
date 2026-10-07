# AdminSettingsAllResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**general** | [**AdminSettingsAllResponseDataGeneral**](AdminSettingsAllResponseDataGeneral.md) |  | [optional] 
**authentication** | [**AuthenticationSettings**](AuthenticationSettings.md) |  | [optional] 
**branding** | [**BrandingSettings**](BrandingSettings.md) |  | [optional] 
**security** | [**AdminSettingsAllResponseDataSecurity**](AdminSettingsAllResponseDataSecurity.md) |  | [optional] 
**email** | **Dict[str, object]** | Free-form email settings dictionary, stored as sent (keys merge on update); secret-looking keys are redacted. | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_settings_all_response_data import AdminSettingsAllResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSettingsAllResponseData from a JSON string
admin_settings_all_response_data_instance = AdminSettingsAllResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminSettingsAllResponseData.to_json())

# convert the object into a dict
admin_settings_all_response_data_dict = admin_settings_all_response_data_instance.to_dict()
# create an instance of AdminSettingsAllResponseData from a dict
admin_settings_all_response_data_from_dict = AdminSettingsAllResponseData.from_dict(admin_settings_all_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


