# PutAdminSettingsGeneralUpdateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**PutAdminSettingsGeneralUpdateResponseData**](PutAdminSettingsGeneralUpdateResponseData.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_settings_general_update_response import PutAdminSettingsGeneralUpdateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminSettingsGeneralUpdateResponse from a JSON string
put_admin_settings_general_update_response_instance = PutAdminSettingsGeneralUpdateResponse.from_json(json)
# print the JSON string representation of the object
print(PutAdminSettingsGeneralUpdateResponse.to_json())

# convert the object into a dict
put_admin_settings_general_update_response_dict = put_admin_settings_general_update_response_instance.to_dict()
# create an instance of PutAdminSettingsGeneralUpdateResponse from a dict
put_admin_settings_general_update_response_from_dict = PutAdminSettingsGeneralUpdateResponse.from_dict(put_admin_settings_general_update_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


