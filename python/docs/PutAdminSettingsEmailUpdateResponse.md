# PutAdminSettingsEmailUpdateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **Dict[str, object]** | Free-form email settings dictionary, stored as sent (keys merge on update); secret-looking keys are redacted. | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_settings_email_update_response import PutAdminSettingsEmailUpdateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminSettingsEmailUpdateResponse from a JSON string
put_admin_settings_email_update_response_instance = PutAdminSettingsEmailUpdateResponse.from_json(json)
# print the JSON string representation of the object
print(PutAdminSettingsEmailUpdateResponse.to_json())

# convert the object into a dict
put_admin_settings_email_update_response_dict = put_admin_settings_email_update_response_instance.to_dict()
# create an instance of PutAdminSettingsEmailUpdateResponse from a dict
put_admin_settings_email_update_response_from_dict = PutAdminSettingsEmailUpdateResponse.from_dict(put_admin_settings_email_update_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


