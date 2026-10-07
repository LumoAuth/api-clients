# PutAdminSettingsScimUpdateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**ScimSettings**](ScimSettings.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_settings_scim_update_response import PutAdminSettingsScimUpdateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminSettingsScimUpdateResponse from a JSON string
put_admin_settings_scim_update_response_instance = PutAdminSettingsScimUpdateResponse.from_json(json)
# print the JSON string representation of the object
print(PutAdminSettingsScimUpdateResponse.to_json())

# convert the object into a dict
put_admin_settings_scim_update_response_dict = put_admin_settings_scim_update_response_instance.to_dict()
# create an instance of PutAdminSettingsScimUpdateResponse from a dict
put_admin_settings_scim_update_response_from_dict = PutAdminSettingsScimUpdateResponse.from_dict(put_admin_settings_scim_update_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


