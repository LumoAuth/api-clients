# AuthenticationSettings

Authentication settings (entity defaults merged with the stored values). Any other stored key is returned as-is; secret-looking keys (e.g. initial_access_tokens) are redacted.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**passkey_enabled** | **boolean** |  | [optional] [default to undefined]
**biometric_enabled** | **boolean** |  | [optional] [default to undefined]
**passkeys** | [**AuthenticationSettingsPasskeys**](AuthenticationSettingsPasskeys.md) |  | [optional] [default to undefined]
**mfa_required** | **boolean** |  | [optional] [default to undefined]
**mfa_methods** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**mfa_sms_enabled** | **boolean** |  | [optional] [default to undefined]
**mfa_policy** | [**AuthenticationSettingsMfaPolicy**](AuthenticationSettingsMfaPolicy.md) |  | [optional] [default to undefined]
**push_auth_required** | **boolean** |  | [optional] [default to undefined]
**push_app_name** | **string** |  | [optional] [default to undefined]
**social_login_enabled** | **boolean** |  | [optional] [default to undefined]
**social_providers** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**social_configs** | **{ [key: string]: { [key: string]: any; }; }** | Per-provider OAuth credentials keyed by provider (google, github, microsoft, facebook, apple, linkedin). Each value is a free-form object of provider fields (client_id, hosted_domain, tenant_id, team_id, key_id, ...); the secret fields client_secret and private_key are returned as the redaction marker {\&quot;configured\&quot;: true, \&quot;redacted\&quot;: true} when set, null otherwise. | [optional] [default to undefined]
**password_min_length** | **number** | Legacy; mirrored by password_policy.min_length. | [optional] [default to undefined]
**password_require_special** | **boolean** | Legacy; mirrored by password_policy.require_special. | [optional] [default to undefined]
**password_policy** | [**AuthenticationSettingsPasswordPolicy**](AuthenticationSettingsPasswordPolicy.md) |  | [optional] [default to undefined]
**password_rotation_policy** | [**AuthenticationSettingsPasswordRotationPolicy**](AuthenticationSettingsPasswordRotationPolicy.md) |  | [optional] [default to undefined]
**no_mfa_action** | **string** |  | [optional] [default to undefined]
**session_timeout** | **number** | Seconds. | [optional] [default to undefined]
**encrypt_client_secrets** | **boolean** |  | [optional] [default to undefined]
**dynamic_client_registration_enabled** | **boolean** |  | [optional] [default to undefined]
**cimd_enabled** | **boolean** |  | [optional] [default to undefined]
**cimd_allowed_domains** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**cimd_localhost_redirect_policy** | **string** |  | [optional] [default to undefined]
**xaa_idp_enabled** | **boolean** |  | [optional] [default to undefined]
**xaa_resource_enabled** | **boolean** |  | [optional] [default to undefined]
**progressive_profiling** | [**AuthenticationSettingsProgressiveProfiling**](AuthenticationSettingsProgressiveProfiling.md) |  | [optional] [default to undefined]

## Example

```typescript
import { AuthenticationSettings } from '@lumoauth/api-client';

const instance: AuthenticationSettings = {
    passkey_enabled,
    biometric_enabled,
    passkeys,
    mfa_required,
    mfa_methods,
    mfa_sms_enabled,
    mfa_policy,
    push_auth_required,
    push_app_name,
    social_login_enabled,
    social_providers,
    social_configs,
    password_min_length,
    password_require_special,
    password_policy,
    password_rotation_policy,
    no_mfa_action,
    session_timeout,
    encrypt_client_secrets,
    dynamic_client_registration_enabled,
    cimd_enabled,
    cimd_allowed_domains,
    cimd_localhost_redirect_policy,
    xaa_idp_enabled,
    xaa_resource_enabled,
    progressive_profiling,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
