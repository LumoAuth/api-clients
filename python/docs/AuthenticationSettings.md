# AuthenticationSettings

Authentication settings (entity defaults merged with the stored values). Any other stored key is returned as-is; secret-looking keys (e.g. initial_access_tokens) are redacted.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**passkey_enabled** | **bool** |  | [optional] 
**biometric_enabled** | **bool** |  | [optional] 
**passkeys** | [**AuthenticationSettingsPasskeys**](AuthenticationSettingsPasskeys.md) |  | [optional] 
**mfa_required** | **bool** |  | [optional] 
**mfa_methods** | **List[str]** |  | [optional] 
**mfa_sms_enabled** | **bool** |  | [optional] 
**mfa_policy** | [**AuthenticationSettingsMfaPolicy**](AuthenticationSettingsMfaPolicy.md) |  | [optional] 
**push_auth_required** | **bool** |  | [optional] 
**push_app_name** | **str** |  | [optional] 
**social_login_enabled** | **bool** |  | [optional] 
**social_providers** | **List[str]** |  | [optional] 
**social_configs** | **Dict[str, Dict[str, object]]** | Per-provider OAuth credentials keyed by provider (google, github, microsoft, facebook, apple, linkedin). Each value is a free-form object of provider fields (client_id, hosted_domain, tenant_id, team_id, key_id, ...); the secret fields client_secret and private_key are returned as the redaction marker {\&quot;configured\&quot;: true, \&quot;redacted\&quot;: true} when set, null otherwise. | [optional] 
**password_min_length** | **int** | Legacy; mirrored by password_policy.min_length. | [optional] 
**password_require_special** | **bool** | Legacy; mirrored by password_policy.require_special. | [optional] 
**password_policy** | [**AuthenticationSettingsPasswordPolicy**](AuthenticationSettingsPasswordPolicy.md) |  | [optional] 
**password_rotation_policy** | [**AuthenticationSettingsPasswordRotationPolicy**](AuthenticationSettingsPasswordRotationPolicy.md) |  | [optional] 
**no_mfa_action** | **str** |  | [optional] 
**session_timeout** | **int** | Seconds. | [optional] 
**encrypt_client_secrets** | **bool** |  | [optional] 
**dynamic_client_registration_enabled** | **bool** |  | [optional] 
**cimd_enabled** | **bool** |  | [optional] 
**cimd_allowed_domains** | **List[str]** |  | [optional] 
**cimd_localhost_redirect_policy** | **str** |  | [optional] 
**xaa_idp_enabled** | **bool** |  | [optional] 
**xaa_resource_enabled** | **bool** |  | [optional] 
**progressive_profiling** | [**AuthenticationSettingsProgressiveProfiling**](AuthenticationSettingsProgressiveProfiling.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.authentication_settings import AuthenticationSettings

# TODO update the JSON string below
json = "{}"
# create an instance of AuthenticationSettings from a JSON string
authentication_settings_instance = AuthenticationSettings.from_json(json)
# print the JSON string representation of the object
print(AuthenticationSettings.to_json())

# convert the object into a dict
authentication_settings_dict = authentication_settings_instance.to_dict()
# create an instance of AuthenticationSettings from a dict
authentication_settings_from_dict = AuthenticationSettings.from_dict(authentication_settings_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


