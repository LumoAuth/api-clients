# AdminSettingsScimGetResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**ScimSettings**](ScimSettings.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_settings_scim_get_response import AdminSettingsScimGetResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSettingsScimGetResponse from a JSON string
admin_settings_scim_get_response_instance = AdminSettingsScimGetResponse.from_json(json)
# print the JSON string representation of the object
print(AdminSettingsScimGetResponse.to_json())

# convert the object into a dict
admin_settings_scim_get_response_dict = admin_settings_scim_get_response_instance.to_dict()
# create an instance of AdminSettingsScimGetResponse from a dict
admin_settings_scim_get_response_from_dict = AdminSettingsScimGetResponse.from_dict(admin_settings_scim_get_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


