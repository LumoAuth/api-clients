# AuthenticationSettingsPasskeys


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**require_certified_authenticator** | **bool** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.authentication_settings_passkeys import AuthenticationSettingsPasskeys

# TODO update the JSON string below
json = "{}"
# create an instance of AuthenticationSettingsPasskeys from a JSON string
authentication_settings_passkeys_instance = AuthenticationSettingsPasskeys.from_json(json)
# print the JSON string representation of the object
print(AuthenticationSettingsPasskeys.to_json())

# convert the object into a dict
authentication_settings_passkeys_dict = authentication_settings_passkeys_instance.to_dict()
# create an instance of AuthenticationSettingsPasskeys from a dict
authentication_settings_passkeys_from_dict = AuthenticationSettingsPasskeys.from_dict(authentication_settings_passkeys_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


