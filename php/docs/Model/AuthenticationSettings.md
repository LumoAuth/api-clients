# # AuthenticationSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**passkeyEnabled** | **bool** |  | [optional]
**passkeys** | [**\LumoAuth\ApiClient\Model\AuthenticationSettingsPasskeys**](AuthenticationSettingsPasskeys.md) |  | [optional]
**mfaRequired** | **bool** |  | [optional]
**mfaMethods** | **string[]** |  | [optional]
**mfaSmsEnabled** | **bool** |  | [optional]
**mfaPolicy** | [**\LumoAuth\ApiClient\Model\AuthenticationSettingsMfaPolicy**](AuthenticationSettingsMfaPolicy.md) |  | [optional]
**pushAuthRequired** | **bool** |  | [optional]
**pushAppName** | **string** |  | [optional]
**socialLoginEnabled** | **bool** | Legacy. Switches on the older social sign-in flow that uses social_configs and social_providers. Social sign-in on the hosted sign-in page follows the enabled social providers, not this flag. | [optional]
**socialProviders** | **string[]** |  | [optional]
**socialConfigs** | **array<string,array<string,mixed>>** | Per-provider OAuth credentials keyed by provider (google, github, microsoft, facebook, apple, linkedin). Each value is a free-form object of provider fields (client_id, hosted_domain, tenant_id, team_id, key_id, ...); the secret fields client_secret and private_key are returned as the redaction marker {\&quot;configured\&quot;: true, \&quot;redacted\&quot;: true} when set, null otherwise. | [optional]
**passwordMinLength** | **int** | Legacy; mirrored by password_policy.min_length. | [optional]
**passwordRequireSpecial** | **bool** | Legacy; mirrored by password_policy.require_special. | [optional]
**passwordPolicy** | [**\LumoAuth\ApiClient\Model\AuthenticationSettingsPasswordPolicy**](AuthenticationSettingsPasswordPolicy.md) |  | [optional]
**passwordRotationPolicy** | [**\LumoAuth\ApiClient\Model\AuthenticationSettingsPasswordRotationPolicy**](AuthenticationSettingsPasswordRotationPolicy.md) |  | [optional]
**noMfaAction** | **string** |  | [optional]
**sessionTimeout** | **int** | Idle timeout in seconds. | [optional]
**dynamicClientRegistrationEnabled** | **bool** |  | [optional]
**cimdEnabled** | **bool** | Accept Client ID Metadata Documents (an https URL as client_id). On by default on every plan; set false to opt the organization out. | [optional] [default to true]
**cimdAllowedDomains** | **string[]** |  | [optional]
**cimdLocalhostRedirectPolicy** | **string** |  | [optional]
**xaaIdpEnabled** | **bool** |  | [optional]
**xaaResourceEnabled** | **bool** |  | [optional]
**progressiveProfiling** | [**\LumoAuth\ApiClient\Model\AuthenticationSettingsProgressiveProfiling**](AuthenticationSettingsProgressiveProfiling.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
