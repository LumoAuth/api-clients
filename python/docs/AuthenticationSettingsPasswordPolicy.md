# AuthenticationSettingsPasswordPolicy


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**template** | **str** |  | [optional] 
**min_length** | **int** |  | [optional] 
**require_special** | **bool** |  | [optional] 
**require_numbers** | **bool** |  | [optional] 
**require_uppercase** | **bool** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.authentication_settings_password_policy import AuthenticationSettingsPasswordPolicy

# TODO update the JSON string below
json = "{}"
# create an instance of AuthenticationSettingsPasswordPolicy from a JSON string
authentication_settings_password_policy_instance = AuthenticationSettingsPasswordPolicy.from_json(json)
# print the JSON string representation of the object
print(AuthenticationSettingsPasswordPolicy.to_json())

# convert the object into a dict
authentication_settings_password_policy_dict = authentication_settings_password_policy_instance.to_dict()
# create an instance of AuthenticationSettingsPasswordPolicy from a dict
authentication_settings_password_policy_from_dict = AuthenticationSettingsPasswordPolicy.from_dict(authentication_settings_password_policy_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


