# AuthenticationSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PasskeyEnabled** | Pointer to **bool** |  | [optional] 
**BiometricEnabled** | Pointer to **bool** |  | [optional] 
**Passkeys** | Pointer to [**AuthenticationSettingsPasskeys**](AuthenticationSettingsPasskeys.md) |  | [optional] 
**MfaRequired** | Pointer to **bool** |  | [optional] 
**MfaMethods** | Pointer to **[]string** |  | [optional] 
**MfaSmsEnabled** | Pointer to **bool** |  | [optional] 
**MfaPolicy** | Pointer to [**AuthenticationSettingsMfaPolicy**](AuthenticationSettingsMfaPolicy.md) |  | [optional] 
**PushAuthRequired** | Pointer to **bool** |  | [optional] 
**PushAppName** | Pointer to **NullableString** |  | [optional] 
**SocialLoginEnabled** | Pointer to **bool** |  | [optional] 
**SocialProviders** | Pointer to **[]string** |  | [optional] 
**SocialConfigs** | Pointer to **map[string]map[string]interface{}** | Per-provider OAuth credentials keyed by provider (google, github, microsoft, facebook, apple, linkedin). Each value is a free-form object of provider fields (client_id, hosted_domain, tenant_id, team_id, key_id, ...); the secret fields client_secret and private_key are returned as the redaction marker {\&quot;configured\&quot;: true, \&quot;redacted\&quot;: true} when set, null otherwise. | [optional] 
**PasswordMinLength** | Pointer to **int32** | Legacy; mirrored by password_policy.min_length. | [optional] 
**PasswordRequireSpecial** | Pointer to **bool** | Legacy; mirrored by password_policy.require_special. | [optional] 
**PasswordPolicy** | Pointer to [**AuthenticationSettingsPasswordPolicy**](AuthenticationSettingsPasswordPolicy.md) |  | [optional] 
**PasswordRotationPolicy** | Pointer to [**AuthenticationSettingsPasswordRotationPolicy**](AuthenticationSettingsPasswordRotationPolicy.md) |  | [optional] 
**NoMfaAction** | Pointer to **string** |  | [optional] 
**SessionTimeout** | Pointer to **int32** | Seconds. | [optional] 
**EncryptClientSecrets** | Pointer to **bool** |  | [optional] 
**DynamicClientRegistrationEnabled** | Pointer to **bool** |  | [optional] 
**CimdEnabled** | Pointer to **bool** |  | [optional] 
**CimdAllowedDomains** | Pointer to **[]string** |  | [optional] 
**CimdLocalhostRedirectPolicy** | Pointer to **string** |  | [optional] 
**XaaIdpEnabled** | Pointer to **bool** |  | [optional] 
**XaaResourceEnabled** | Pointer to **bool** |  | [optional] 
**ProgressiveProfiling** | Pointer to [**AuthenticationSettingsProgressiveProfiling**](AuthenticationSettingsProgressiveProfiling.md) |  | [optional] 

## Methods

### NewAuthenticationSettings

`func NewAuthenticationSettings() *AuthenticationSettings`

NewAuthenticationSettings instantiates a new AuthenticationSettings object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAuthenticationSettingsWithDefaults

`func NewAuthenticationSettingsWithDefaults() *AuthenticationSettings`

NewAuthenticationSettingsWithDefaults instantiates a new AuthenticationSettings object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPasskeyEnabled

`func (o *AuthenticationSettings) GetPasskeyEnabled() bool`

GetPasskeyEnabled returns the PasskeyEnabled field if non-nil, zero value otherwise.

### GetPasskeyEnabledOk

`func (o *AuthenticationSettings) GetPasskeyEnabledOk() (*bool, bool)`

GetPasskeyEnabledOk returns a tuple with the PasskeyEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPasskeyEnabled

`func (o *AuthenticationSettings) SetPasskeyEnabled(v bool)`

SetPasskeyEnabled sets PasskeyEnabled field to given value.

### HasPasskeyEnabled

`func (o *AuthenticationSettings) HasPasskeyEnabled() bool`

HasPasskeyEnabled returns a boolean if a field has been set.

### GetBiometricEnabled

`func (o *AuthenticationSettings) GetBiometricEnabled() bool`

GetBiometricEnabled returns the BiometricEnabled field if non-nil, zero value otherwise.

### GetBiometricEnabledOk

`func (o *AuthenticationSettings) GetBiometricEnabledOk() (*bool, bool)`

GetBiometricEnabledOk returns a tuple with the BiometricEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBiometricEnabled

`func (o *AuthenticationSettings) SetBiometricEnabled(v bool)`

SetBiometricEnabled sets BiometricEnabled field to given value.

### HasBiometricEnabled

`func (o *AuthenticationSettings) HasBiometricEnabled() bool`

HasBiometricEnabled returns a boolean if a field has been set.

### GetPasskeys

`func (o *AuthenticationSettings) GetPasskeys() AuthenticationSettingsPasskeys`

GetPasskeys returns the Passkeys field if non-nil, zero value otherwise.

### GetPasskeysOk

`func (o *AuthenticationSettings) GetPasskeysOk() (*AuthenticationSettingsPasskeys, bool)`

GetPasskeysOk returns a tuple with the Passkeys field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPasskeys

`func (o *AuthenticationSettings) SetPasskeys(v AuthenticationSettingsPasskeys)`

SetPasskeys sets Passkeys field to given value.

### HasPasskeys

`func (o *AuthenticationSettings) HasPasskeys() bool`

HasPasskeys returns a boolean if a field has been set.

### GetMfaRequired

`func (o *AuthenticationSettings) GetMfaRequired() bool`

GetMfaRequired returns the MfaRequired field if non-nil, zero value otherwise.

### GetMfaRequiredOk

`func (o *AuthenticationSettings) GetMfaRequiredOk() (*bool, bool)`

GetMfaRequiredOk returns a tuple with the MfaRequired field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMfaRequired

`func (o *AuthenticationSettings) SetMfaRequired(v bool)`

SetMfaRequired sets MfaRequired field to given value.

### HasMfaRequired

`func (o *AuthenticationSettings) HasMfaRequired() bool`

HasMfaRequired returns a boolean if a field has been set.

### GetMfaMethods

`func (o *AuthenticationSettings) GetMfaMethods() []string`

GetMfaMethods returns the MfaMethods field if non-nil, zero value otherwise.

### GetMfaMethodsOk

`func (o *AuthenticationSettings) GetMfaMethodsOk() (*[]string, bool)`

GetMfaMethodsOk returns a tuple with the MfaMethods field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMfaMethods

`func (o *AuthenticationSettings) SetMfaMethods(v []string)`

SetMfaMethods sets MfaMethods field to given value.

### HasMfaMethods

`func (o *AuthenticationSettings) HasMfaMethods() bool`

HasMfaMethods returns a boolean if a field has been set.

### GetMfaSmsEnabled

`func (o *AuthenticationSettings) GetMfaSmsEnabled() bool`

GetMfaSmsEnabled returns the MfaSmsEnabled field if non-nil, zero value otherwise.

### GetMfaSmsEnabledOk

`func (o *AuthenticationSettings) GetMfaSmsEnabledOk() (*bool, bool)`

GetMfaSmsEnabledOk returns a tuple with the MfaSmsEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMfaSmsEnabled

`func (o *AuthenticationSettings) SetMfaSmsEnabled(v bool)`

SetMfaSmsEnabled sets MfaSmsEnabled field to given value.

### HasMfaSmsEnabled

`func (o *AuthenticationSettings) HasMfaSmsEnabled() bool`

HasMfaSmsEnabled returns a boolean if a field has been set.

### GetMfaPolicy

`func (o *AuthenticationSettings) GetMfaPolicy() AuthenticationSettingsMfaPolicy`

GetMfaPolicy returns the MfaPolicy field if non-nil, zero value otherwise.

### GetMfaPolicyOk

`func (o *AuthenticationSettings) GetMfaPolicyOk() (*AuthenticationSettingsMfaPolicy, bool)`

GetMfaPolicyOk returns a tuple with the MfaPolicy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMfaPolicy

`func (o *AuthenticationSettings) SetMfaPolicy(v AuthenticationSettingsMfaPolicy)`

SetMfaPolicy sets MfaPolicy field to given value.

### HasMfaPolicy

`func (o *AuthenticationSettings) HasMfaPolicy() bool`

HasMfaPolicy returns a boolean if a field has been set.

### GetPushAuthRequired

`func (o *AuthenticationSettings) GetPushAuthRequired() bool`

GetPushAuthRequired returns the PushAuthRequired field if non-nil, zero value otherwise.

### GetPushAuthRequiredOk

`func (o *AuthenticationSettings) GetPushAuthRequiredOk() (*bool, bool)`

GetPushAuthRequiredOk returns a tuple with the PushAuthRequired field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPushAuthRequired

`func (o *AuthenticationSettings) SetPushAuthRequired(v bool)`

SetPushAuthRequired sets PushAuthRequired field to given value.

### HasPushAuthRequired

`func (o *AuthenticationSettings) HasPushAuthRequired() bool`

HasPushAuthRequired returns a boolean if a field has been set.

### GetPushAppName

`func (o *AuthenticationSettings) GetPushAppName() string`

GetPushAppName returns the PushAppName field if non-nil, zero value otherwise.

### GetPushAppNameOk

`func (o *AuthenticationSettings) GetPushAppNameOk() (*string, bool)`

GetPushAppNameOk returns a tuple with the PushAppName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPushAppName

`func (o *AuthenticationSettings) SetPushAppName(v string)`

SetPushAppName sets PushAppName field to given value.

### HasPushAppName

`func (o *AuthenticationSettings) HasPushAppName() bool`

HasPushAppName returns a boolean if a field has been set.

### SetPushAppNameNil

`func (o *AuthenticationSettings) SetPushAppNameNil(b bool)`

 SetPushAppNameNil sets the value for PushAppName to be an explicit nil

### UnsetPushAppName
`func (o *AuthenticationSettings) UnsetPushAppName()`

UnsetPushAppName ensures that no value is present for PushAppName, not even an explicit nil
### GetSocialLoginEnabled

`func (o *AuthenticationSettings) GetSocialLoginEnabled() bool`

GetSocialLoginEnabled returns the SocialLoginEnabled field if non-nil, zero value otherwise.

### GetSocialLoginEnabledOk

`func (o *AuthenticationSettings) GetSocialLoginEnabledOk() (*bool, bool)`

GetSocialLoginEnabledOk returns a tuple with the SocialLoginEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSocialLoginEnabled

`func (o *AuthenticationSettings) SetSocialLoginEnabled(v bool)`

SetSocialLoginEnabled sets SocialLoginEnabled field to given value.

### HasSocialLoginEnabled

`func (o *AuthenticationSettings) HasSocialLoginEnabled() bool`

HasSocialLoginEnabled returns a boolean if a field has been set.

### GetSocialProviders

`func (o *AuthenticationSettings) GetSocialProviders() []string`

GetSocialProviders returns the SocialProviders field if non-nil, zero value otherwise.

### GetSocialProvidersOk

`func (o *AuthenticationSettings) GetSocialProvidersOk() (*[]string, bool)`

GetSocialProvidersOk returns a tuple with the SocialProviders field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSocialProviders

`func (o *AuthenticationSettings) SetSocialProviders(v []string)`

SetSocialProviders sets SocialProviders field to given value.

### HasSocialProviders

`func (o *AuthenticationSettings) HasSocialProviders() bool`

HasSocialProviders returns a boolean if a field has been set.

### GetSocialConfigs

`func (o *AuthenticationSettings) GetSocialConfigs() map[string]map[string]interface{}`

GetSocialConfigs returns the SocialConfigs field if non-nil, zero value otherwise.

### GetSocialConfigsOk

`func (o *AuthenticationSettings) GetSocialConfigsOk() (*map[string]map[string]interface{}, bool)`

GetSocialConfigsOk returns a tuple with the SocialConfigs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSocialConfigs

`func (o *AuthenticationSettings) SetSocialConfigs(v map[string]map[string]interface{})`

SetSocialConfigs sets SocialConfigs field to given value.

### HasSocialConfigs

`func (o *AuthenticationSettings) HasSocialConfigs() bool`

HasSocialConfigs returns a boolean if a field has been set.

### GetPasswordMinLength

`func (o *AuthenticationSettings) GetPasswordMinLength() int32`

GetPasswordMinLength returns the PasswordMinLength field if non-nil, zero value otherwise.

### GetPasswordMinLengthOk

`func (o *AuthenticationSettings) GetPasswordMinLengthOk() (*int32, bool)`

GetPasswordMinLengthOk returns a tuple with the PasswordMinLength field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPasswordMinLength

`func (o *AuthenticationSettings) SetPasswordMinLength(v int32)`

SetPasswordMinLength sets PasswordMinLength field to given value.

### HasPasswordMinLength

`func (o *AuthenticationSettings) HasPasswordMinLength() bool`

HasPasswordMinLength returns a boolean if a field has been set.

### GetPasswordRequireSpecial

`func (o *AuthenticationSettings) GetPasswordRequireSpecial() bool`

GetPasswordRequireSpecial returns the PasswordRequireSpecial field if non-nil, zero value otherwise.

### GetPasswordRequireSpecialOk

`func (o *AuthenticationSettings) GetPasswordRequireSpecialOk() (*bool, bool)`

GetPasswordRequireSpecialOk returns a tuple with the PasswordRequireSpecial field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPasswordRequireSpecial

`func (o *AuthenticationSettings) SetPasswordRequireSpecial(v bool)`

SetPasswordRequireSpecial sets PasswordRequireSpecial field to given value.

### HasPasswordRequireSpecial

`func (o *AuthenticationSettings) HasPasswordRequireSpecial() bool`

HasPasswordRequireSpecial returns a boolean if a field has been set.

### GetPasswordPolicy

`func (o *AuthenticationSettings) GetPasswordPolicy() AuthenticationSettingsPasswordPolicy`

GetPasswordPolicy returns the PasswordPolicy field if non-nil, zero value otherwise.

### GetPasswordPolicyOk

`func (o *AuthenticationSettings) GetPasswordPolicyOk() (*AuthenticationSettingsPasswordPolicy, bool)`

GetPasswordPolicyOk returns a tuple with the PasswordPolicy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPasswordPolicy

`func (o *AuthenticationSettings) SetPasswordPolicy(v AuthenticationSettingsPasswordPolicy)`

SetPasswordPolicy sets PasswordPolicy field to given value.

### HasPasswordPolicy

`func (o *AuthenticationSettings) HasPasswordPolicy() bool`

HasPasswordPolicy returns a boolean if a field has been set.

### GetPasswordRotationPolicy

`func (o *AuthenticationSettings) GetPasswordRotationPolicy() AuthenticationSettingsPasswordRotationPolicy`

GetPasswordRotationPolicy returns the PasswordRotationPolicy field if non-nil, zero value otherwise.

### GetPasswordRotationPolicyOk

`func (o *AuthenticationSettings) GetPasswordRotationPolicyOk() (*AuthenticationSettingsPasswordRotationPolicy, bool)`

GetPasswordRotationPolicyOk returns a tuple with the PasswordRotationPolicy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPasswordRotationPolicy

`func (o *AuthenticationSettings) SetPasswordRotationPolicy(v AuthenticationSettingsPasswordRotationPolicy)`

SetPasswordRotationPolicy sets PasswordRotationPolicy field to given value.

### HasPasswordRotationPolicy

`func (o *AuthenticationSettings) HasPasswordRotationPolicy() bool`

HasPasswordRotationPolicy returns a boolean if a field has been set.

### GetNoMfaAction

`func (o *AuthenticationSettings) GetNoMfaAction() string`

GetNoMfaAction returns the NoMfaAction field if non-nil, zero value otherwise.

### GetNoMfaActionOk

`func (o *AuthenticationSettings) GetNoMfaActionOk() (*string, bool)`

GetNoMfaActionOk returns a tuple with the NoMfaAction field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNoMfaAction

`func (o *AuthenticationSettings) SetNoMfaAction(v string)`

SetNoMfaAction sets NoMfaAction field to given value.

### HasNoMfaAction

`func (o *AuthenticationSettings) HasNoMfaAction() bool`

HasNoMfaAction returns a boolean if a field has been set.

### GetSessionTimeout

`func (o *AuthenticationSettings) GetSessionTimeout() int32`

GetSessionTimeout returns the SessionTimeout field if non-nil, zero value otherwise.

### GetSessionTimeoutOk

`func (o *AuthenticationSettings) GetSessionTimeoutOk() (*int32, bool)`

GetSessionTimeoutOk returns a tuple with the SessionTimeout field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSessionTimeout

`func (o *AuthenticationSettings) SetSessionTimeout(v int32)`

SetSessionTimeout sets SessionTimeout field to given value.

### HasSessionTimeout

`func (o *AuthenticationSettings) HasSessionTimeout() bool`

HasSessionTimeout returns a boolean if a field has been set.

### GetEncryptClientSecrets

`func (o *AuthenticationSettings) GetEncryptClientSecrets() bool`

GetEncryptClientSecrets returns the EncryptClientSecrets field if non-nil, zero value otherwise.

### GetEncryptClientSecretsOk

`func (o *AuthenticationSettings) GetEncryptClientSecretsOk() (*bool, bool)`

GetEncryptClientSecretsOk returns a tuple with the EncryptClientSecrets field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEncryptClientSecrets

`func (o *AuthenticationSettings) SetEncryptClientSecrets(v bool)`

SetEncryptClientSecrets sets EncryptClientSecrets field to given value.

### HasEncryptClientSecrets

`func (o *AuthenticationSettings) HasEncryptClientSecrets() bool`

HasEncryptClientSecrets returns a boolean if a field has been set.

### GetDynamicClientRegistrationEnabled

`func (o *AuthenticationSettings) GetDynamicClientRegistrationEnabled() bool`

GetDynamicClientRegistrationEnabled returns the DynamicClientRegistrationEnabled field if non-nil, zero value otherwise.

### GetDynamicClientRegistrationEnabledOk

`func (o *AuthenticationSettings) GetDynamicClientRegistrationEnabledOk() (*bool, bool)`

GetDynamicClientRegistrationEnabledOk returns a tuple with the DynamicClientRegistrationEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDynamicClientRegistrationEnabled

`func (o *AuthenticationSettings) SetDynamicClientRegistrationEnabled(v bool)`

SetDynamicClientRegistrationEnabled sets DynamicClientRegistrationEnabled field to given value.

### HasDynamicClientRegistrationEnabled

`func (o *AuthenticationSettings) HasDynamicClientRegistrationEnabled() bool`

HasDynamicClientRegistrationEnabled returns a boolean if a field has been set.

### GetCimdEnabled

`func (o *AuthenticationSettings) GetCimdEnabled() bool`

GetCimdEnabled returns the CimdEnabled field if non-nil, zero value otherwise.

### GetCimdEnabledOk

`func (o *AuthenticationSettings) GetCimdEnabledOk() (*bool, bool)`

GetCimdEnabledOk returns a tuple with the CimdEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCimdEnabled

`func (o *AuthenticationSettings) SetCimdEnabled(v bool)`

SetCimdEnabled sets CimdEnabled field to given value.

### HasCimdEnabled

`func (o *AuthenticationSettings) HasCimdEnabled() bool`

HasCimdEnabled returns a boolean if a field has been set.

### GetCimdAllowedDomains

`func (o *AuthenticationSettings) GetCimdAllowedDomains() []string`

GetCimdAllowedDomains returns the CimdAllowedDomains field if non-nil, zero value otherwise.

### GetCimdAllowedDomainsOk

`func (o *AuthenticationSettings) GetCimdAllowedDomainsOk() (*[]string, bool)`

GetCimdAllowedDomainsOk returns a tuple with the CimdAllowedDomains field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCimdAllowedDomains

`func (o *AuthenticationSettings) SetCimdAllowedDomains(v []string)`

SetCimdAllowedDomains sets CimdAllowedDomains field to given value.

### HasCimdAllowedDomains

`func (o *AuthenticationSettings) HasCimdAllowedDomains() bool`

HasCimdAllowedDomains returns a boolean if a field has been set.

### GetCimdLocalhostRedirectPolicy

`func (o *AuthenticationSettings) GetCimdLocalhostRedirectPolicy() string`

GetCimdLocalhostRedirectPolicy returns the CimdLocalhostRedirectPolicy field if non-nil, zero value otherwise.

### GetCimdLocalhostRedirectPolicyOk

`func (o *AuthenticationSettings) GetCimdLocalhostRedirectPolicyOk() (*string, bool)`

GetCimdLocalhostRedirectPolicyOk returns a tuple with the CimdLocalhostRedirectPolicy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCimdLocalhostRedirectPolicy

`func (o *AuthenticationSettings) SetCimdLocalhostRedirectPolicy(v string)`

SetCimdLocalhostRedirectPolicy sets CimdLocalhostRedirectPolicy field to given value.

### HasCimdLocalhostRedirectPolicy

`func (o *AuthenticationSettings) HasCimdLocalhostRedirectPolicy() bool`

HasCimdLocalhostRedirectPolicy returns a boolean if a field has been set.

### GetXaaIdpEnabled

`func (o *AuthenticationSettings) GetXaaIdpEnabled() bool`

GetXaaIdpEnabled returns the XaaIdpEnabled field if non-nil, zero value otherwise.

### GetXaaIdpEnabledOk

`func (o *AuthenticationSettings) GetXaaIdpEnabledOk() (*bool, bool)`

GetXaaIdpEnabledOk returns a tuple with the XaaIdpEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetXaaIdpEnabled

`func (o *AuthenticationSettings) SetXaaIdpEnabled(v bool)`

SetXaaIdpEnabled sets XaaIdpEnabled field to given value.

### HasXaaIdpEnabled

`func (o *AuthenticationSettings) HasXaaIdpEnabled() bool`

HasXaaIdpEnabled returns a boolean if a field has been set.

### GetXaaResourceEnabled

`func (o *AuthenticationSettings) GetXaaResourceEnabled() bool`

GetXaaResourceEnabled returns the XaaResourceEnabled field if non-nil, zero value otherwise.

### GetXaaResourceEnabledOk

`func (o *AuthenticationSettings) GetXaaResourceEnabledOk() (*bool, bool)`

GetXaaResourceEnabledOk returns a tuple with the XaaResourceEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetXaaResourceEnabled

`func (o *AuthenticationSettings) SetXaaResourceEnabled(v bool)`

SetXaaResourceEnabled sets XaaResourceEnabled field to given value.

### HasXaaResourceEnabled

`func (o *AuthenticationSettings) HasXaaResourceEnabled() bool`

HasXaaResourceEnabled returns a boolean if a field has been set.

### GetProgressiveProfiling

`func (o *AuthenticationSettings) GetProgressiveProfiling() AuthenticationSettingsProgressiveProfiling`

GetProgressiveProfiling returns the ProgressiveProfiling field if non-nil, zero value otherwise.

### GetProgressiveProfilingOk

`func (o *AuthenticationSettings) GetProgressiveProfilingOk() (*AuthenticationSettingsProgressiveProfiling, bool)`

GetProgressiveProfilingOk returns a tuple with the ProgressiveProfiling field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProgressiveProfiling

`func (o *AuthenticationSettings) SetProgressiveProfiling(v AuthenticationSettingsProgressiveProfiling)`

SetProgressiveProfiling sets ProgressiveProfiling field to given value.

### HasProgressiveProfiling

`func (o *AuthenticationSettings) HasProgressiveProfiling() bool`

HasProgressiveProfiling returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


