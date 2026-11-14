# PutAdminSettingsGeneralUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the organization: one line, 1 to 255 characters. Aliases: tenantName, display_name, displayName. | [optional] 
**locale** | **str** | Default language of the hosted pages: en, es, fr, de, pt_BR (pt-BR is accepted too), it, nl, ja or ar. A change also needs the branding.edit permission. | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_settings_general_update_request import PutAdminSettingsGeneralUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminSettingsGeneralUpdateRequest from a JSON string
put_admin_settings_general_update_request_instance = PutAdminSettingsGeneralUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(PutAdminSettingsGeneralUpdateRequest.to_json())

# convert the object into a dict
put_admin_settings_general_update_request_dict = put_admin_settings_general_update_request_instance.to_dict()
# create an instance of PutAdminSettingsGeneralUpdateRequest from a dict
put_admin_settings_general_update_request_from_dict = PutAdminSettingsGeneralUpdateRequest.from_dict(put_admin_settings_general_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


