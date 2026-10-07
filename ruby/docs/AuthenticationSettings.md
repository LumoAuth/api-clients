# LumoAuthApiClient::AuthenticationSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **passkey_enabled** | **Boolean** |  | [optional] |
| **biometric_enabled** | **Boolean** |  | [optional] |
| **passkeys** | [**AuthenticationSettingsPasskeys**](AuthenticationSettingsPasskeys.md) |  | [optional] |
| **mfa_required** | **Boolean** |  | [optional] |
| **mfa_methods** | **Array&lt;String&gt;** |  | [optional] |
| **mfa_sms_enabled** | **Boolean** |  | [optional] |
| **mfa_policy** | [**AuthenticationSettingsMfaPolicy**](AuthenticationSettingsMfaPolicy.md) |  | [optional] |
| **push_auth_required** | **Boolean** |  | [optional] |
| **push_app_name** | **String** |  | [optional] |
| **social_login_enabled** | **Boolean** |  | [optional] |
| **social_providers** | **Array&lt;String&gt;** |  | [optional] |
| **social_configs** | **Hash&lt;String, Hash&lt;String, Object&gt;&gt;** | Per-provider OAuth credentials keyed by provider (google, github, microsoft, facebook, apple, linkedin). Each value is a free-form object of provider fields (client_id, hosted_domain, tenant_id, team_id, key_id, ...); the secret fields client_secret and private_key are returned as the redaction marker {\&quot;configured\&quot;: true, \&quot;redacted\&quot;: true} when set, null otherwise. | [optional] |
| **password_min_length** | **Integer** | Legacy; mirrored by password_policy.min_length. | [optional] |
| **password_require_special** | **Boolean** | Legacy; mirrored by password_policy.require_special. | [optional] |
| **password_policy** | [**AuthenticationSettingsPasswordPolicy**](AuthenticationSettingsPasswordPolicy.md) |  | [optional] |
| **password_rotation_policy** | [**AuthenticationSettingsPasswordRotationPolicy**](AuthenticationSettingsPasswordRotationPolicy.md) |  | [optional] |
| **no_mfa_action** | **String** |  | [optional] |
| **session_timeout** | **Integer** | Seconds. | [optional] |
| **encrypt_client_secrets** | **Boolean** |  | [optional] |
| **dynamic_client_registration_enabled** | **Boolean** |  | [optional] |
| **cimd_enabled** | **Boolean** |  | [optional] |
| **cimd_allowed_domains** | **Array&lt;String&gt;** |  | [optional] |
| **cimd_localhost_redirect_policy** | **String** |  | [optional] |
| **xaa_idp_enabled** | **Boolean** |  | [optional] |
| **xaa_resource_enabled** | **Boolean** |  | [optional] |
| **progressive_profiling** | [**AuthenticationSettingsProgressiveProfiling**](AuthenticationSettingsProgressiveProfiling.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AuthenticationSettings.new(
  passkey_enabled: null,
  biometric_enabled: null,
  passkeys: null,
  mfa_required: null,
  mfa_methods: null,
  mfa_sms_enabled: null,
  mfa_policy: null,
  push_auth_required: null,
  push_app_name: null,
  social_login_enabled: null,
  social_providers: null,
  social_configs: null,
  password_min_length: null,
  password_require_special: null,
  password_policy: null,
  password_rotation_policy: null,
  no_mfa_action: null,
  session_timeout: null,
  encrypt_client_secrets: null,
  dynamic_client_registration_enabled: null,
  cimd_enabled: null,
  cimd_allowed_domains: null,
  cimd_localhost_redirect_policy: null,
  xaa_idp_enabled: null,
  xaa_resource_enabled: null,
  progressive_profiling: null
)
```

