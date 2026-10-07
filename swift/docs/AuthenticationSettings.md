# AuthenticationSettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**passkeyEnabled** | **Bool** |  | [optional] 
**biometricEnabled** | **Bool** |  | [optional] 
**passkeys** | [**AuthenticationSettingsPasskeys**](AuthenticationSettingsPasskeys.md) |  | [optional] 
**mfaRequired** | **Bool** |  | [optional] 
**mfaMethods** | **[String]** |  | [optional] 
**mfaSmsEnabled** | **Bool** |  | [optional] 
**mfaPolicy** | [**AuthenticationSettingsMfaPolicy**](AuthenticationSettingsMfaPolicy.md) |  | [optional] 
**pushAuthRequired** | **Bool** |  | [optional] 
**pushAppName** | **String** |  | [optional] 
**socialLoginEnabled** | **Bool** |  | [optional] 
**socialProviders** | **[String]** |  | [optional] 
**socialConfigs** | [String: [String: AnyCodable]] | Per-provider OAuth credentials keyed by provider (google, github, microsoft, facebook, apple, linkedin). Each value is a free-form object of provider fields (client_id, hosted_domain, tenant_id, team_id, key_id, ...); the secret fields client_secret and private_key are returned as the redaction marker {\&quot;configured\&quot;: true, \&quot;redacted\&quot;: true} when set, null otherwise. | [optional] 
**passwordMinLength** | **Int** | Legacy; mirrored by password_policy.min_length. | [optional] 
**passwordRequireSpecial** | **Bool** | Legacy; mirrored by password_policy.require_special. | [optional] 
**passwordPolicy** | [**AuthenticationSettingsPasswordPolicy**](AuthenticationSettingsPasswordPolicy.md) |  | [optional] 
**passwordRotationPolicy** | [**AuthenticationSettingsPasswordRotationPolicy**](AuthenticationSettingsPasswordRotationPolicy.md) |  | [optional] 
**noMfaAction** | **String** |  | [optional] 
**sessionTimeout** | **Int** | Seconds. | [optional] 
**encryptClientSecrets** | **Bool** |  | [optional] 
**dynamicClientRegistrationEnabled** | **Bool** |  | [optional] 
**cimdEnabled** | **Bool** |  | [optional] 
**cimdAllowedDomains** | **[String]** |  | [optional] 
**cimdLocalhostRedirectPolicy** | **String** |  | [optional] 
**xaaIdpEnabled** | **Bool** |  | [optional] 
**xaaResourceEnabled** | **Bool** |  | [optional] 
**progressiveProfiling** | [**AuthenticationSettingsProgressiveProfiling**](AuthenticationSettingsProgressiveProfiling.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


