# MfaPolicy

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

### NewMfaPolicy

`func NewMfaPolicy() *MfaPolicy`

NewMfaPolicy instantiates a new MfaPolicy object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMfaPolicyWithDefaults

`func NewMfaPolicyWithDefaults() *MfaPolicy`

NewMfaPolicyWithDefaults instantiates a new MfaPolicy object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRequirement

`func (o *MfaPolicy) GetRequirement() string`

GetRequirement returns the Requirement field if non-nil, zero value otherwise.

### GetRequirementOk

`func (o *MfaPolicy) GetRequirementOk() (*string, bool)`

GetRequirementOk returns a tuple with the Requirement field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequirement

`func (o *MfaPolicy) SetRequirement(v string)`

SetRequirement sets Requirement field to given value.

### HasRequirement

`func (o *MfaPolicy) HasRequirement() bool`

HasRequirement returns a boolean if a field has been set.

### GetAllowedFactors

`func (o *MfaPolicy) GetAllowedFactors() []string`

GetAllowedFactors returns the AllowedFactors field if non-nil, zero value otherwise.

### GetAllowedFactorsOk

`func (o *MfaPolicy) GetAllowedFactorsOk() (*[]string, bool)`

GetAllowedFactorsOk returns a tuple with the AllowedFactors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowedFactors

`func (o *MfaPolicy) SetAllowedFactors(v []string)`

SetAllowedFactors sets AllowedFactors field to given value.

### HasAllowedFactors

`func (o *MfaPolicy) HasAllowedFactors() bool`

HasAllowedFactors returns a boolean if a field has been set.

### GetMinTierLogin

`func (o *MfaPolicy) GetMinTierLogin() int32`

GetMinTierLogin returns the MinTierLogin field if non-nil, zero value otherwise.

### GetMinTierLoginOk

`func (o *MfaPolicy) GetMinTierLoginOk() (*int32, bool)`

GetMinTierLoginOk returns a tuple with the MinTierLogin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinTierLogin

`func (o *MfaPolicy) SetMinTierLogin(v int32)`

SetMinTierLogin sets MinTierLogin field to given value.

### HasMinTierLogin

`func (o *MfaPolicy) HasMinTierLogin() bool`

HasMinTierLogin returns a boolean if a field has been set.

### GetMinTierStepUp

`func (o *MfaPolicy) GetMinTierStepUp() int32`

GetMinTierStepUp returns the MinTierStepUp field if non-nil, zero value otherwise.

### GetMinTierStepUpOk

`func (o *MfaPolicy) GetMinTierStepUpOk() (*int32, bool)`

GetMinTierStepUpOk returns a tuple with the MinTierStepUp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinTierStepUp

`func (o *MfaPolicy) SetMinTierStepUp(v int32)`

SetMinTierStepUp sets MinTierStepUp field to given value.

### HasMinTierStepUp

`func (o *MfaPolicy) HasMinTierStepUp() bool`

HasMinTierStepUp returns a boolean if a field has been set.

### GetPasswordlessPasskey

`func (o *MfaPolicy) GetPasswordlessPasskey() bool`

GetPasswordlessPasskey returns the PasswordlessPasskey field if non-nil, zero value otherwise.

### GetPasswordlessPasskeyOk

`func (o *MfaPolicy) GetPasswordlessPasskeyOk() (*bool, bool)`

GetPasswordlessPasskeyOk returns a tuple with the PasswordlessPasskey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPasswordlessPasskey

`func (o *MfaPolicy) SetPasswordlessPasskey(v bool)`

SetPasswordlessPasskey sets PasswordlessPasskey field to given value.

### HasPasswordlessPasskey

`func (o *MfaPolicy) HasPasswordlessPasskey() bool`

HasPasswordlessPasskey returns a boolean if a field has been set.

### GetRequiredFactorCount

`func (o *MfaPolicy) GetRequiredFactorCount() int32`

GetRequiredFactorCount returns the RequiredFactorCount field if non-nil, zero value otherwise.

### GetRequiredFactorCountOk

`func (o *MfaPolicy) GetRequiredFactorCountOk() (*int32, bool)`

GetRequiredFactorCountOk returns a tuple with the RequiredFactorCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequiredFactorCount

`func (o *MfaPolicy) SetRequiredFactorCount(v int32)`

SetRequiredFactorCount sets RequiredFactorCount field to given value.

### HasRequiredFactorCount

`func (o *MfaPolicy) HasRequiredFactorCount() bool`

HasRequiredFactorCount returns a boolean if a field has been set.

### GetGracePeriodDays

`func (o *MfaPolicy) GetGracePeriodDays() int32`

GetGracePeriodDays returns the GracePeriodDays field if non-nil, zero value otherwise.

### GetGracePeriodDaysOk

`func (o *MfaPolicy) GetGracePeriodDaysOk() (*int32, bool)`

GetGracePeriodDaysOk returns a tuple with the GracePeriodDays field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGracePeriodDays

`func (o *MfaPolicy) SetGracePeriodDays(v int32)`

SetGracePeriodDays sets GracePeriodDays field to given value.

### HasGracePeriodDays

`func (o *MfaPolicy) HasGracePeriodDays() bool`

HasGracePeriodDays returns a boolean if a field has been set.

### GetRemindIntervalDays

`func (o *MfaPolicy) GetRemindIntervalDays() int32`

GetRemindIntervalDays returns the RemindIntervalDays field if non-nil, zero value otherwise.

### GetRemindIntervalDaysOk

`func (o *MfaPolicy) GetRemindIntervalDaysOk() (*int32, bool)`

GetRemindIntervalDaysOk returns a tuple with the RemindIntervalDays field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRemindIntervalDays

`func (o *MfaPolicy) SetRemindIntervalDays(v int32)`

SetRemindIntervalDays sets RemindIntervalDays field to given value.

### HasRemindIntervalDays

`func (o *MfaPolicy) HasRemindIntervalDays() bool`

HasRemindIntervalDays returns a boolean if a field has been set.

### GetTrustedDeviceDays

`func (o *MfaPolicy) GetTrustedDeviceDays() int32`

GetTrustedDeviceDays returns the TrustedDeviceDays field if non-nil, zero value otherwise.

### GetTrustedDeviceDaysOk

`func (o *MfaPolicy) GetTrustedDeviceDaysOk() (*int32, bool)`

GetTrustedDeviceDaysOk returns a tuple with the TrustedDeviceDays field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTrustedDeviceDays

`func (o *MfaPolicy) SetTrustedDeviceDays(v int32)`

SetTrustedDeviceDays sets TrustedDeviceDays field to given value.

### HasTrustedDeviceDays

`func (o *MfaPolicy) HasTrustedDeviceDays() bool`

HasTrustedDeviceDays returns a boolean if a field has been set.

### GetEmailOtpCountsAsMfa

`func (o *MfaPolicy) GetEmailOtpCountsAsMfa() bool`

GetEmailOtpCountsAsMfa returns the EmailOtpCountsAsMfa field if non-nil, zero value otherwise.

### GetEmailOtpCountsAsMfaOk

`func (o *MfaPolicy) GetEmailOtpCountsAsMfaOk() (*bool, bool)`

GetEmailOtpCountsAsMfaOk returns a tuple with the EmailOtpCountsAsMfa field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmailOtpCountsAsMfa

`func (o *MfaPolicy) SetEmailOtpCountsAsMfa(v bool)`

SetEmailOtpCountsAsMfa sets EmailOtpCountsAsMfa field to given value.

### HasEmailOtpCountsAsMfa

`func (o *MfaPolicy) HasEmailOtpCountsAsMfa() bool`

HasEmailOtpCountsAsMfa returns a boolean if a field has been set.

### GetSmsBlockVoip

`func (o *MfaPolicy) GetSmsBlockVoip() bool`

GetSmsBlockVoip returns the SmsBlockVoip field if non-nil, zero value otherwise.

### GetSmsBlockVoipOk

`func (o *MfaPolicy) GetSmsBlockVoipOk() (*bool, bool)`

GetSmsBlockVoipOk returns a tuple with the SmsBlockVoip field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSmsBlockVoip

`func (o *MfaPolicy) SetSmsBlockVoip(v bool)`

SetSmsBlockVoip sets SmsBlockVoip field to given value.

### HasSmsBlockVoip

`func (o *MfaPolicy) HasSmsBlockVoip() bool`

HasSmsBlockVoip returns a boolean if a field has been set.

### GetSmsCountryAllowlist

`func (o *MfaPolicy) GetSmsCountryAllowlist() []string`

GetSmsCountryAllowlist returns the SmsCountryAllowlist field if non-nil, zero value otherwise.

### GetSmsCountryAllowlistOk

`func (o *MfaPolicy) GetSmsCountryAllowlistOk() (*[]string, bool)`

GetSmsCountryAllowlistOk returns a tuple with the SmsCountryAllowlist field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSmsCountryAllowlist

`func (o *MfaPolicy) SetSmsCountryAllowlist(v []string)`

SetSmsCountryAllowlist sets SmsCountryAllowlist field to given value.

### HasSmsCountryAllowlist

`func (o *MfaPolicy) HasSmsCountryAllowlist() bool`

HasSmsCountryAllowlist returns a boolean if a field has been set.

### GetSmsCountryDenylist

`func (o *MfaPolicy) GetSmsCountryDenylist() []string`

GetSmsCountryDenylist returns the SmsCountryDenylist field if non-nil, zero value otherwise.

### GetSmsCountryDenylistOk

`func (o *MfaPolicy) GetSmsCountryDenylistOk() (*[]string, bool)`

GetSmsCountryDenylistOk returns a tuple with the SmsCountryDenylist field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSmsCountryDenylist

`func (o *MfaPolicy) SetSmsCountryDenylist(v []string)`

SetSmsCountryDenylist sets SmsCountryDenylist field to given value.

### HasSmsCountryDenylist

`func (o *MfaPolicy) HasSmsCountryDenylist() bool`

HasSmsCountryDenylist returns a boolean if a field has been set.

### GetNudgeIntervalDays

`func (o *MfaPolicy) GetNudgeIntervalDays() int32`

GetNudgeIntervalDays returns the NudgeIntervalDays field if non-nil, zero value otherwise.

### GetNudgeIntervalDaysOk

`func (o *MfaPolicy) GetNudgeIntervalDaysOk() (*int32, bool)`

GetNudgeIntervalDaysOk returns a tuple with the NudgeIntervalDays field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNudgeIntervalDays

`func (o *MfaPolicy) SetNudgeIntervalDays(v int32)`

SetNudgeIntervalDays sets NudgeIntervalDays field to given value.

### HasNudgeIntervalDays

`func (o *MfaPolicy) HasNudgeIntervalDays() bool`

HasNudgeIntervalDays returns a boolean if a field has been set.

### GetStepUpMaxAgeSeconds

`func (o *MfaPolicy) GetStepUpMaxAgeSeconds() int32`

GetStepUpMaxAgeSeconds returns the StepUpMaxAgeSeconds field if non-nil, zero value otherwise.

### GetStepUpMaxAgeSecondsOk

`func (o *MfaPolicy) GetStepUpMaxAgeSecondsOk() (*int32, bool)`

GetStepUpMaxAgeSecondsOk returns a tuple with the StepUpMaxAgeSeconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStepUpMaxAgeSeconds

`func (o *MfaPolicy) SetStepUpMaxAgeSeconds(v int32)`

SetStepUpMaxAgeSeconds sets StepUpMaxAgeSeconds field to given value.

### HasStepUpMaxAgeSeconds

`func (o *MfaPolicy) HasStepUpMaxAgeSeconds() bool`

HasStepUpMaxAgeSeconds returns a boolean if a field has been set.

### GetRequiredSince

`func (o *MfaPolicy) GetRequiredSince() int32`

GetRequiredSince returns the RequiredSince field if non-nil, zero value otherwise.

### GetRequiredSinceOk

`func (o *MfaPolicy) GetRequiredSinceOk() (*int32, bool)`

GetRequiredSinceOk returns a tuple with the RequiredSince field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequiredSince

`func (o *MfaPolicy) SetRequiredSince(v int32)`

SetRequiredSince sets RequiredSince field to given value.

### HasRequiredSince

`func (o *MfaPolicy) HasRequiredSince() bool`

HasRequiredSince returns a boolean if a field has been set.

### SetRequiredSinceNil

`func (o *MfaPolicy) SetRequiredSinceNil(b bool)`

 SetRequiredSinceNil sets the value for RequiredSince to be an explicit nil

### UnsetRequiredSince
`func (o *MfaPolicy) UnsetRequiredSince()`

UnsetRequiredSince ensures that no value is present for RequiredSince, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


