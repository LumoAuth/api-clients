# PutAdminSettingsEmailUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from_email** | **str** | From address. It must be a sender that is verified at the mail provider. | [optional] 
**from_name** | **str** | From name: one line. null or an empty string clears it. | [optional] 
**reply_to_email** | **str** | Reply-To address. null or an empty string clears it. | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_settings_email_update_request import PutAdminSettingsEmailUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminSettingsEmailUpdateRequest from a JSON string
put_admin_settings_email_update_request_instance = PutAdminSettingsEmailUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(PutAdminSettingsEmailUpdateRequest.to_json())

# convert the object into a dict
put_admin_settings_email_update_request_dict = put_admin_settings_email_update_request_instance.to_dict()
# create an instance of PutAdminSettingsEmailUpdateRequest from a dict
put_admin_settings_email_update_request_from_dict = PutAdminSettingsEmailUpdateRequest.from_dict(put_admin_settings_email_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


