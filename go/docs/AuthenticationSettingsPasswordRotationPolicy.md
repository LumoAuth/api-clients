# AuthenticationSettingsPasswordRotationPolicy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | Pointer to **bool** |  | [optional] 
**MaxAgeDays** | Pointer to **int32** |  | [optional] 

## Methods

### NewAuthenticationSettingsPasswordRotationPolicy

`func NewAuthenticationSettingsPasswordRotationPolicy() *AuthenticationSettingsPasswordRotationPolicy`

NewAuthenticationSettingsPasswordRotationPolicy instantiates a new AuthenticationSettingsPasswordRotationPolicy object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAuthenticationSettingsPasswordRotationPolicyWithDefaults

`func NewAuthenticationSettingsPasswordRotationPolicyWithDefaults() *AuthenticationSettingsPasswordRotationPolicy`

NewAuthenticationSettingsPasswordRotationPolicyWithDefaults instantiates a new AuthenticationSettingsPasswordRotationPolicy object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEnabled

`func (o *AuthenticationSettingsPasswordRotationPolicy) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *AuthenticationSettingsPasswordRotationPolicy) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *AuthenticationSettingsPasswordRotationPolicy) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.

### HasEnabled

`func (o *AuthenticationSettingsPasswordRotationPolicy) HasEnabled() bool`

HasEnabled returns a boolean if a field has been set.

### GetMaxAgeDays

`func (o *AuthenticationSettingsPasswordRotationPolicy) GetMaxAgeDays() int32`

GetMaxAgeDays returns the MaxAgeDays field if non-nil, zero value otherwise.

### GetMaxAgeDaysOk

`func (o *AuthenticationSettingsPasswordRotationPolicy) GetMaxAgeDaysOk() (*int32, bool)`

GetMaxAgeDaysOk returns a tuple with the MaxAgeDays field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxAgeDays

`func (o *AuthenticationSettingsPasswordRotationPolicy) SetMaxAgeDays(v int32)`

SetMaxAgeDays sets MaxAgeDays field to given value.

### HasMaxAgeDays

`func (o *AuthenticationSettingsPasswordRotationPolicy) HasMaxAgeDays() bool`

HasMaxAgeDays returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


