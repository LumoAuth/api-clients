# LumoAuth.ApiClient.Model.AuthenticationSettings
Authentication settings (entity defaults merged with the stored values). Any other stored key is returned as-is; secret-looking keys (e.g. initial_access_tokens) are redacted.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PasskeyEnabled** | **bool** |  | [optional] 
**BiometricEnabled** | **bool** |  | [optional] 
**Passkeys** | [**AuthenticationSettingsPasskeys**](AuthenticationSettingsPasskeys.md) |  | [optional] 
**MfaRequired** | **bool** |  | [optional] 
**MfaMethods** | **List&lt;string&gt;** |  | [optional] 
**MfaSmsEnabled** | **bool** |  | [optional] 
**MfaPolicy** | [**AuthenticationSettingsMfaPolicy**](AuthenticationSettingsMfaPolicy.md) |  | [optional] 
**PushAuthRequired** | **bool** |  | [optional] 
**PushAppName** | **string** |  | [optional] 
**SocialLoginEnabled** | **bool** |  | [optional] 
**SocialProviders** | **List&lt;string&gt;** |  | [optional] 
**SocialConfigs** | **Dictionary&lt;string, Dictionary&lt;string, Object&gt;&gt;** | Per-provider OAuth credentials keyed by provider (google, github, microsoft, facebook, apple, linkedin). Each value is a free-form object of provider fields (client_id, hosted_domain, tenant_id, team_id, key_id, ...); the secret fields client_secret and private_key are returned as the redaction marker {\&quot;configured\&quot;: true, \&quot;redacted\&quot;: true} when set, null otherwise. | [optional] 
**PasswordMinLength** | **int** | Legacy; mirrored by password_policy.min_length. | [optional] 
**PasswordRequireSpecial** | **bool** | Legacy; mirrored by password_policy.require_special. | [optional] 
**PasswordPolicy** | [**AuthenticationSettingsPasswordPolicy**](AuthenticationSettingsPasswordPolicy.md) |  | [optional] 
**PasswordRotationPolicy** | [**AuthenticationSettingsPasswordRotationPolicy**](AuthenticationSettingsPasswordRotationPolicy.md) |  | [optional] 
**NoMfaAction** | **string** |  | [optional] 
**SessionTimeout** | **int** | Seconds. | [optional] 
**EncryptClientSecrets** | **bool** |  | [optional] 
**DynamicClientRegistrationEnabled** | **bool** |  | [optional] 
**CimdEnabled** | **bool** |  | [optional] 
**CimdAllowedDomains** | **List&lt;string&gt;** |  | [optional] 
**CimdLocalhostRedirectPolicy** | **string** |  | [optional] 
**XaaIdpEnabled** | **bool** |  | [optional] 
**XaaResourceEnabled** | **bool** |  | [optional] 
**ProgressiveProfiling** | [**AuthenticationSettingsProgressiveProfiling**](AuthenticationSettingsProgressiveProfiling.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

