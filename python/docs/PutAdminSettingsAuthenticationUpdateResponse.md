# PutAdminSettingsAuthenticationUpdateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AuthenticationSettings**](AuthenticationSettings.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_settings_authentication_update_response import PutAdminSettingsAuthenticationUpdateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminSettingsAuthenticationUpdateResponse from a JSON string
put_admin_settings_authentication_update_response_instance = PutAdminSettingsAuthenticationUpdateResponse.from_json(json)
# print the JSON string representation of the object
print(PutAdminSettingsAuthenticationUpdateResponse.to_json())

# convert the object into a dict
put_admin_settings_authentication_update_response_dict = put_admin_settings_authentication_update_response_instance.to_dict()
# create an instance of PutAdminSettingsAuthenticationUpdateResponse from a dict
put_admin_settings_authentication_update_response_from_dict = PutAdminSettingsAuthenticationUpdateResponse.from_dict(put_admin_settings_authentication_update_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


