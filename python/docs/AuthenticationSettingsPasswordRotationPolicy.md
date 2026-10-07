# AuthenticationSettingsPasswordRotationPolicy


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | [optional] 
**max_age_days** | **int** |  | [optional] 
**notify_before_days** | **int** |  | [optional] 
**history_count** | **int** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.authentication_settings_password_rotation_policy import AuthenticationSettingsPasswordRotationPolicy

# TODO update the JSON string below
json = "{}"
# create an instance of AuthenticationSettingsPasswordRotationPolicy from a JSON string
authentication_settings_password_rotation_policy_instance = AuthenticationSettingsPasswordRotationPolicy.from_json(json)
# print the JSON string representation of the object
print(AuthenticationSettingsPasswordRotationPolicy.to_json())

# convert the object into a dict
authentication_settings_password_rotation_policy_dict = authentication_settings_password_rotation_policy_instance.to_dict()
# create an instance of AuthenticationSettingsPasswordRotationPolicy from a dict
authentication_settings_password_rotation_policy_from_dict = AuthenticationSettingsPasswordRotationPolicy.from_dict(authentication_settings_password_rotation_policy_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


