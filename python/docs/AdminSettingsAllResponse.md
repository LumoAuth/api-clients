# AdminSettingsAllResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminSettingsAllResponseData**](AdminSettingsAllResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_settings_all_response import AdminSettingsAllResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSettingsAllResponse from a JSON string
admin_settings_all_response_instance = AdminSettingsAllResponse.from_json(json)
# print the JSON string representation of the object
print(AdminSettingsAllResponse.to_json())

# convert the object into a dict
admin_settings_all_response_dict = admin_settings_all_response_instance.to_dict()
# create an instance of AdminSettingsAllResponse from a dict
admin_settings_all_response_from_dict = AdminSettingsAllResponse.from_dict(admin_settings_all_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


