

# AuthenticationSettings

Authentication settings (entity defaults merged with the stored values). Any other stored key is returned as-is; secret-looking keys (e.g. initial_access_tokens) are redacted.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**passkeyEnabled** | **Boolean** |  |  [optional] |
|**biometricEnabled** | **Boolean** |  |  [optional] |
|**passkeys** | [**AuthenticationSettingsPasskeys**](AuthenticationSettingsPasskeys.md) |  |  [optional] |
|**mfaRequired** | **Boolean** |  |  [optional] |
|**mfaMethods** | **List&lt;String&gt;** |  |  [optional] |
|**mfaSmsEnabled** | **Boolean** |  |  [optional] |
|**mfaPolicy** | [**AuthenticationSettingsMfaPolicy**](AuthenticationSettingsMfaPolicy.md) |  |  [optional] |
|**pushAuthRequired** | **Boolean** |  |  [optional] |
|**pushAppName** | **String** |  |  [optional] |
|**socialLoginEnabled** | **Boolean** |  |  [optional] |
|**socialProviders** | **List&lt;String&gt;** |  |  [optional] |
|**socialConfigs** | **Map&lt;String, Map&lt;String, Object&gt;&gt;** | Per-provider OAuth credentials keyed by provider (google, github, microsoft, facebook, apple, linkedin). Each value is a free-form object of provider fields (client_id, hosted_domain, tenant_id, team_id, key_id, ...); the secret fields client_secret and private_key are returned as the redaction marker {\&quot;configured\&quot;: true, \&quot;redacted\&quot;: true} when set, null otherwise. |  [optional] |
|**passwordMinLength** | **Integer** | Legacy; mirrored by password_policy.min_length. |  [optional] |
|**passwordRequireSpecial** | **Boolean** | Legacy; mirrored by password_policy.require_special. |  [optional] |
|**passwordPolicy** | [**AuthenticationSettingsPasswordPolicy**](AuthenticationSettingsPasswordPolicy.md) |  |  [optional] |
|**passwordRotationPolicy** | [**AuthenticationSettingsPasswordRotationPolicy**](AuthenticationSettingsPasswordRotationPolicy.md) |  |  [optional] |
|**noMfaAction** | **String** |  |  [optional] |
|**sessionTimeout** | **Integer** | Seconds. |  [optional] |
|**encryptClientSecrets** | **Boolean** |  |  [optional] |
|**dynamicClientRegistrationEnabled** | **Boolean** |  |  [optional] |
|**cimdEnabled** | **Boolean** |  |  [optional] |
|**cimdAllowedDomains** | **List&lt;String&gt;** |  |  [optional] |
|**cimdLocalhostRedirectPolicy** | [**CimdLocalhostRedirectPolicyEnum**](#CimdLocalhostRedirectPolicyEnum) |  |  [optional] |
|**xaaIdpEnabled** | **Boolean** |  |  [optional] |
|**xaaResourceEnabled** | **Boolean** |  |  [optional] |
|**progressiveProfiling** | [**AuthenticationSettingsProgressiveProfiling**](AuthenticationSettingsProgressiveProfiling.md) |  |  [optional] |



## Enum: CimdLocalhostRedirectPolicyEnum

| Name | Value |
|---- | -----|
| WARN | &quot;warn&quot; |
| BLOCK | &quot;block&quot; |



