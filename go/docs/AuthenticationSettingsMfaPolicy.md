# AuthenticationSettingsMfaPolicy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Requirement** | Pointer to **string** |  | [optional] [default to "risk_based"]
**AllowedFactors** | Pointer to **[]string** |  | [optional] 
**MinTierLogin** | Pointer to **int32** |  | [optional] [default to 4]
**MinTierStepUp** | Pointer to **int32** |  | [optional] [default to 3]
**PasswordlessPasskey** | Pointer to **bool** |  | [optional] [default to true]
**RequiredFactorCount** | Pointer to **int32** |  | [optional] [default to 1]
**GracePeriodDays** | Pointer to **int32** |  | [optional] [default to 14]
**RemindIntervalDays** | Pointer to **int32** |  | [optional] [default to 7]
**TrustedDeviceDays** | Pointer to **int32** |  | [optional] [default to 30]
**EmailOtpCountsAsMfa** | Pointer to **bool** |  | [optional] [default to false]
**SmsBlockVoip** | Pointer to **bool** |  | [optional] [default to false]
**SmsCountryAllowlist** | Pointer to **[]string** |  | [optional] 
**SmsCountryDenylist** | Pointer to **[]string** |  | [optional] 
**NudgeIntervalDays** | Pointer to **int32** |  | [optional] [default to 30]
**StepUpMaxAgeSeconds** | Pointer to **int32** |  | [optional] [default to 600]
**RequiredSince** | Pointer to **NullableInt32** |  | [optional] [readonly] 

## Methods

### NewAuthenticationSettingsMfaPolicy

`func NewAuthenticationSettingsMfaPolicy() *AuthenticationSettingsMfaPolicy`

NewAuthenticationSettingsMfaPolicy instantiates a new AuthenticationSettingsMfaPolicy object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAuthenticationSettingsMfaPolicyWithDefaults

`func NewAuthenticationSettingsMfaPolicyWithDefaults() *AuthenticationSettingsMfaPolicy`

NewAuthenticationSettingsMfaPolicyWithDefaults instantiates a new AuthenticationSettingsMfaPolicy object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRequirement

`func (o *AuthenticationSettingsMfaPolicy) GetRequirement() string`

GetRequirement returns the Requirement field if non-nil, zero value otherwise.

### GetRequirementOk

`func (o *AuthenticationSettingsMfaPolicy) GetRequirementOk() (*string, bool)`

GetRequirementOk returns a tuple with the Requirement field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequirement

`func (o *AuthenticationSettingsMfaPolicy) SetRequirement(v string)`

SetRequirement sets Requirement field to given value.

### HasRequirement

`func (o *AuthenticationSettingsMfaPolicy) HasRequirement() bool`

HasRequirement returns a boolean if a field has been set.

### GetAllowedFactors

`func (o *AuthenticationSettingsMfaPolicy) GetAllowedFactors() []string`

GetAllowedFactors returns the AllowedFactors field if non-nil, zero value otherwise.

### GetAllowedFactorsOk

`func (o *AuthenticationSettingsMfaPolicy) GetAllowedFactorsOk() (*[]string, bool)`

GetAllowedFactorsOk returns a tuple with the AllowedFactors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowedFactors

`func (o *AuthenticationSettingsMfaPolicy) SetAllowedFactors(v []string)`

SetAllowedFactors sets AllowedFactors field to given value.

### HasAllowedFactors

`func (o *AuthenticationSettingsMfaPolicy) HasAllowedFactors() bool`

HasAllowedFactors returns a boolean if a field has been set.

### GetMinTierLogin

`func (o *AuthenticationSettingsMfaPolicy) GetMinTierLogin() int32`

GetMinTierLogin returns the MinTierLogin field if non-nil, zero value otherwise.

### GetMinTierLoginOk

`func (o *AuthenticationSettingsMfaPolicy) GetMinTierLoginOk() (*int32, bool)`

GetMinTierLoginOk returns a tuple with the MinTierLogin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinTierLogin

`func (o *AuthenticationSettingsMfaPolicy) SetMinTierLogin(v int32)`

SetMinTierLogin sets MinTierLogin field to given value.

### HasMinTierLogin

`func (o *AuthenticationSettingsMfaPolicy) HasMinTierLogin() bool`

HasMinTierLogin returns a boolean if a field has been set.

### GetMinTierStepUp

`func (o *AuthenticationSettingsMfaPolicy) GetMinTierStepUp() int32`

GetMinTierStepUp returns the MinTierStepUp field if non-nil, zero value otherwise.

### GetMinTierStepUpOk

`func (o *AuthenticationSettingsMfaPolicy) GetMinTierStepUpOk() (*int32, bool)`

GetMinTierStepUpOk returns a tuple with the MinTierStepUp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinTierStepUp

`func (o *AuthenticationSettingsMfaPolicy) SetMinTierStepUp(v int32)`

SetMinTierStepUp sets MinTierStepUp field to given value.

### HasMinTierStepUp

`func (o *AuthenticationSettingsMfaPolicy) HasMinTierStepUp() bool`

HasMinTierStepUp returns a boolean if a field has been set.

### GetPasswordlessPasskey

`func (o *AuthenticationSettingsMfaPolicy) GetPasswordlessPasskey() bool`

GetPasswordlessPasskey returns the PasswordlessPasskey field if non-nil, zero value otherwise.

### GetPasswordlessPasskeyOk

`func (o *AuthenticationSettingsMfaPolicy) GetPasswordlessPasskeyOk() (*bool, bool)`

GetPasswordlessPasskeyOk returns a tuple with the PasswordlessPasskey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPasswordlessPasskey

`func (o *AuthenticationSettingsMfaPolicy) SetPasswordlessPasskey(v bool)`

SetPasswordlessPasskey sets PasswordlessPasskey field to given value.

### HasPasswordlessPasskey

`func (o *AuthenticationSettingsMfaPolicy) HasPasswordlessPasskey() bool`

HasPasswordlessPasskey returns a boolean if a field has been set.

### GetRequiredFactorCount

`func (o *AuthenticationSettingsMfaPolicy) GetRequiredFactorCount() int32`

GetRequiredFactorCount returns the RequiredFactorCount field if non-nil, zero value otherwise.

### GetRequiredFactorCountOk

`func (o *AuthenticationSettingsMfaPolicy) GetRequiredFactorCountOk() (*int32, bool)`

GetRequiredFactorCountOk returns a tuple with the RequiredFactorCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequiredFactorCount

`func (o *AuthenticationSettingsMfaPolicy) SetRequiredFactorCount(v int32)`

SetRequiredFactorCount sets RequiredFactorCount field to given value.

### HasRequiredFactorCount

`func (o *AuthenticationSettingsMfaPolicy) HasRequiredFactorCount() bool`

HasRequiredFactorCount returns a boolean if a field has been set.

### GetGracePeriodDays

`func (o *AuthenticationSettingsMfaPolicy) GetGracePeriodDays() int32`

GetGracePeriodDays returns the GracePeriodDays field if non-nil, zero value otherwise.

### GetGracePeriodDaysOk

`func (o *AuthenticationSettingsMfaPolicy) GetGracePeriodDaysOk() (*int32, bool)`

GetGracePeriodDaysOk returns a tuple with the GracePeriodDays field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGracePeriodDays

`func (o *AuthenticationSettingsMfaPolicy) SetGracePeriodDays(v int32)`

SetGracePeriodDays sets GracePeriodDays field to given value.

### HasGracePeriodDays

`func (o *AuthenticationSettingsMfaPolicy) HasGracePeriodDays() bool`

HasGracePeriodDays returns a boolean if a field has been set.

### GetRemindIntervalDays

`func (o *AuthenticationSettingsMfaPolicy) GetRemindIntervalDays() int32`

GetRemindIntervalDays returns the RemindIntervalDays field if non-nil, zero value otherwise.

### GetRemindIntervalDaysOk

`func (o *AuthenticationSettingsMfaPolicy) GetRemindIntervalDaysOk() (*int32, bool)`

GetRemindIntervalDaysOk returns a tuple with the RemindIntervalDays field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRemindIntervalDays

`func (o *AuthenticationSettingsMfaPolicy) SetRemindIntervalDays(v int32)`

SetRemindIntervalDays sets RemindIntervalDays field to given value.

### HasRemindIntervalDays

`func (o *AuthenticationSettingsMfaPolicy) HasRemindIntervalDays() bool`

HasRemindIntervalDays returns a boolean if a field has been set.

### GetTrustedDeviceDays

`func (o *AuthenticationSettingsMfaPolicy) GetTrustedDeviceDays() int32`

GetTrustedDeviceDays returns the TrustedDeviceDays field if non-nil, zero value otherwise.

### GetTrustedDeviceDaysOk

`func (o *AuthenticationSettingsMfaPolicy) GetTrustedDeviceDaysOk() (*int32, bool)`

GetTrustedDeviceDaysOk returns a tuple with the TrustedDeviceDays field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTrustedDeviceDays

`func (o *AuthenticationSettingsMfaPolicy) SetTrustedDeviceDays(v int32)`

SetTrustedDeviceDays sets TrustedDeviceDays field to given value.

### HasTrustedDeviceDays

`func (o *AuthenticationSettingsMfaPolicy) HasTrustedDeviceDays() bool`

HasTrustedDeviceDays returns a boolean if a field has been set.

### GetEmailOtpCountsAsMfa

`func (o *AuthenticationSettingsMfaPolicy) GetEmailOtpCountsAsMfa() bool`

GetEmailOtpCountsAsMfa returns the EmailOtpCountsAsMfa field if non-nil, zero value otherwise.

### GetEmailOtpCountsAsMfaOk

`func (o *AuthenticationSettingsMfaPolicy) GetEmailOtpCountsAsMfaOk() (*bool, bool)`

GetEmailOtpCountsAsMfaOk returns a tuple with the EmailOtpCountsAsMfa field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmailOtpCountsAsMfa

`func (o *AuthenticationSettingsMfaPolicy) SetEmailOtpCountsAsMfa(v bool)`

SetEmailOtpCountsAsMfa sets EmailOtpCountsAsMfa field to given value.

### HasEmailOtpCountsAsMfa

`func (o *AuthenticationSettingsMfaPolicy) HasEmailOtpCountsAsMfa() bool`

HasEmailOtpCountsAsMfa returns a boolean if a field has been set.

### GetSmsBlockVoip

`func (o *AuthenticationSettingsMfaPolicy) GetSmsBlockVoip() bool`

GetSmsBlockVoip returns the SmsBlockVoip field if non-nil, zero value otherwise.

### GetSmsBlockVoipOk

`func (o *AuthenticationSettingsMfaPolicy) GetSmsBlockVoipOk() (*bool, bool)`

GetSmsBlockVoipOk returns a tuple with the SmsBlockVoip field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSmsBlockVoip

`func (o *AuthenticationSettingsMfaPolicy) SetSmsBlockVoip(v bool)`

SetSmsBlockVoip sets SmsBlockVoip field to given value.

### HasSmsBlockVoip

`func (o *AuthenticationSettingsMfaPolicy) HasSmsBlockVoip() bool`

HasSmsBlockVoip returns a boolean if a field has been set.

### GetSmsCountryAllowlist

`func (o *AuthenticationSettingsMfaPolicy) GetSmsCountryAllowlist() []string`

GetSmsCountryAllowlist returns the SmsCountryAllowlist field if non-nil, zero value otherwise.

### GetSmsCountryAllowlistOk

`func (o *AuthenticationSettingsMfaPolicy) GetSmsCountryAllowlistOk() (*[]string, bool)`

GetSmsCountryAllowlistOk returns a tuple with the SmsCountryAllowlist field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSmsCountryAllowlist

`func (o *AuthenticationSettingsMfaPolicy) SetSmsCountryAllowlist(v []string)`

SetSmsCountryAllowlist sets SmsCountryAllowlist field to given value.

### HasSmsCountryAllowlist

`func (o *AuthenticationSettingsMfaPolicy) HasSmsCountryAllowlist() bool`

HasSmsCountryAllowlist returns a boolean if a field has been set.

### GetSmsCountryDenylist

`func (o *AuthenticationSettingsMfaPolicy) GetSmsCountryDenylist() []string`

GetSmsCountryDenylist returns the SmsCountryDenylist field if non-nil, zero value otherwise.

### GetSmsCountryDenylistOk

`func (o *AuthenticationSettingsMfaPolicy) GetSmsCountryDenylistOk() (*[]string, bool)`

GetSmsCountryDenylistOk returns a tuple with the SmsCountryDenylist field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSmsCountryDenylist

`func (o *AuthenticationSettingsMfaPolicy) SetSmsCountryDenylist(v []string)`

SetSmsCountryDenylist sets SmsCountryDenylist field to given value.

### HasSmsCountryDenylist

`func (o *AuthenticationSettingsMfaPolicy) HasSmsCountryDenylist() bool`

HasSmsCountryDenylist returns a boolean if a field has been set.

### GetNudgeIntervalDays

`func (o *AuthenticationSettingsMfaPolicy) GetNudgeIntervalDays() int32`

GetNudgeIntervalDays returns the NudgeIntervalDays field if non-nil, zero value otherwise.

### GetNudgeIntervalDaysOk

`func (o *AuthenticationSettingsMfaPolicy) GetNudgeIntervalDaysOk() (*int32, bool)`

GetNudgeIntervalDaysOk returns a tuple with the NudgeIntervalDays field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNudgeIntervalDays

`func (o *AuthenticationSettingsMfaPolicy) SetNudgeIntervalDays(v int32)`

SetNudgeIntervalDays sets NudgeIntervalDays field to given value.

### HasNudgeIntervalDays

`func (o *AuthenticationSettingsMfaPolicy) HasNudgeIntervalDays() bool`

HasNudgeIntervalDays returns a boolean if a field has been set.

### GetStepUpMaxAgeSeconds

`func (o *AuthenticationSettingsMfaPolicy) GetStepUpMaxAgeSeconds() int32`

GetStepUpMaxAgeSeconds returns the StepUpMaxAgeSeconds field if non-nil, zero value otherwise.

### GetStepUpMaxAgeSecondsOk

`func (o *AuthenticationSettingsMfaPolicy) GetStepUpMaxAgeSecondsOk() (*int32, bool)`

GetStepUpMaxAgeSecondsOk returns a tuple with the StepUpMaxAgeSeconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStepUpMaxAgeSeconds

`func (o *AuthenticationSettingsMfaPolicy) SetStepUpMaxAgeSeconds(v int32)`

SetStepUpMaxAgeSeconds sets StepUpMaxAgeSeconds field to given value.

### HasStepUpMaxAgeSeconds

`func (o *AuthenticationSettingsMfaPolicy) HasStepUpMaxAgeSeconds() bool`

HasStepUpMaxAgeSeconds returns a boolean if a field has been set.

### GetRequiredSince

`func (o *AuthenticationSettingsMfaPolicy) GetRequiredSince() int32`

GetRequiredSince returns the RequiredSince field if non-nil, zero value otherwise.

### GetRequiredSinceOk

`func (o *AuthenticationSettingsMfaPolicy) GetRequiredSinceOk() (*int32, bool)`

GetRequiredSinceOk returns a tuple with the RequiredSince field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequiredSince

`func (o *AuthenticationSettingsMfaPolicy) SetRequiredSince(v int32)`

SetRequiredSince sets RequiredSince field to given value.

### HasRequiredSince

`func (o *AuthenticationSettingsMfaPolicy) HasRequiredSince() bool`

HasRequiredSince returns a boolean if a field has been set.

### SetRequiredSinceNil

`func (o *AuthenticationSettingsMfaPolicy) SetRequiredSinceNil(b bool)`

 SetRequiredSinceNil sets the value for RequiredSince to be an explicit nil

### UnsetRequiredSince
`func (o *AuthenticationSettingsMfaPolicy) UnsetRequiredSince()`

UnsetRequiredSince ensures that no value is present for RequiredSince, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


