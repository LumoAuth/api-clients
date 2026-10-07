# AuthenticationSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**passkey_enabled** | Option<**bool**> |  | [optional]
**biometric_enabled** | Option<**bool**> |  | [optional]
**passkeys** | Option<[**models::AuthenticationSettingsPasskeys**](AuthenticationSettings_passkeys.md)> |  | [optional]
**mfa_required** | Option<**bool**> |  | [optional]
**mfa_methods** | Option<**Vec<String>**> |  | [optional]
**mfa_sms_enabled** | Option<**bool**> |  | [optional]
**mfa_policy** | Option<[**models::AuthenticationSettingsMfaPolicy**](AuthenticationSettings_mfa_policy.md)> |  | [optional]
**push_auth_required** | Option<**bool**> |  | [optional]
**push_app_name** | Option<**String**> |  | [optional]
**social_login_enabled** | Option<**bool**> |  | [optional]
**social_providers** | Option<**Vec<String>**> |  | [optional]
**social_configs** | Option<[**std::collections::HashMap<String, std::collections::HashMap<String, serde_json::Value>>**](std::collections::HashMap.md)> | Per-provider OAuth credentials keyed by provider (google, github, microsoft, facebook, apple, linkedin). Each value is a free-form object of provider fields (client_id, hosted_domain, tenant_id, team_id, key_id, ...); the secret fields client_secret and private_key are returned as the redaction marker {\"configured\": true, \"redacted\": true} when set, null otherwise. | [optional]
**password_min_length** | Option<**i32**> | Legacy; mirrored by password_policy.min_length. | [optional]
**password_require_special** | Option<**bool**> | Legacy; mirrored by password_policy.require_special. | [optional]
**password_policy** | Option<[**models::AuthenticationSettingsPasswordPolicy**](AuthenticationSettings_password_policy.md)> |  | [optional]
**password_rotation_policy** | Option<[**models::AuthenticationSettingsPasswordRotationPolicy**](AuthenticationSettings_password_rotation_policy.md)> |  | [optional]
**no_mfa_action** | Option<**String**> |  | [optional]
**session_timeout** | Option<**i32**> | Seconds. | [optional]
**encrypt_client_secrets** | Option<**bool**> |  | [optional]
**dynamic_client_registration_enabled** | Option<**bool**> |  | [optional]
**cimd_enabled** | Option<**bool**> |  | [optional]
**cimd_allowed_domains** | Option<**Vec<String>**> |  | [optional]
**cimd_localhost_redirect_policy** | Option<**String**> |  | [optional]
**xaa_idp_enabled** | Option<**bool**> |  | [optional]
**xaa_resource_enabled** | Option<**bool**> |  | [optional]
**progressive_profiling** | Option<[**models::AuthenticationSettingsProgressiveProfiling**](AuthenticationSettings_progressive_profiling.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


