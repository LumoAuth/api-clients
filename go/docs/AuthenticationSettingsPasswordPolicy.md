# AuthenticationSettingsPasswordPolicy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Template** | Pointer to **string** |  | [optional] 
**MinLength** | Pointer to **int32** |  | [optional] 
**RequireSpecial** | Pointer to **bool** |  | [optional] 
**RequireNumbers** | Pointer to **bool** |  | [optional] 
**RequireUppercase** | Pointer to **bool** |  | [optional] 
**RequireLowercase** | Pointer to **bool** |  | [optional] 
**RejectBreachedPasswords** | Pointer to **bool** |  | [optional] 
**BreachedPasswordMinCount** | Pointer to **int32** |  | [optional] 
**CheckBreachedOnLogin** | Pointer to **bool** |  | [optional] 

## Methods

### NewAuthenticationSettingsPasswordPolicy

`func NewAuthenticationSettingsPasswordPolicy() *AuthenticationSettingsPasswordPolicy`

NewAuthenticationSettingsPasswordPolicy instantiates a new AuthenticationSettingsPasswordPolicy object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAuthenticationSettingsPasswordPolicyWithDefaults

`func NewAuthenticationSettingsPasswordPolicyWithDefaults() *AuthenticationSettingsPasswordPolicy`

NewAuthenticationSettingsPasswordPolicyWithDefaults instantiates a new AuthenticationSettingsPasswordPolicy object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTemplate

`func (o *AuthenticationSettingsPasswordPolicy) GetTemplate() string`

GetTemplate returns the Template field if non-nil, zero value otherwise.

### GetTemplateOk

`func (o *AuthenticationSettingsPasswordPolicy) GetTemplateOk() (*string, bool)`

GetTemplateOk returns a tuple with the Template field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTemplate

`func (o *AuthenticationSettingsPasswordPolicy) SetTemplate(v string)`

SetTemplate sets Template field to given value.

### HasTemplate

`func (o *AuthenticationSettingsPasswordPolicy) HasTemplate() bool`

HasTemplate returns a boolean if a field has been set.

### GetMinLength

`func (o *AuthenticationSettingsPasswordPolicy) GetMinLength() int32`

GetMinLength returns the MinLength field if non-nil, zero value otherwise.

### GetMinLengthOk

`func (o *AuthenticationSettingsPasswordPolicy) GetMinLengthOk() (*int32, bool)`

GetMinLengthOk returns a tuple with the MinLength field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinLength

`func (o *AuthenticationSettingsPasswordPolicy) SetMinLength(v int32)`

SetMinLength sets MinLength field to given value.

### HasMinLength

`func (o *AuthenticationSettingsPasswordPolicy) HasMinLength() bool`

HasMinLength returns a boolean if a field has been set.

### GetRequireSpecial

`func (o *AuthenticationSettingsPasswordPolicy) GetRequireSpecial() bool`

GetRequireSpecial returns the RequireSpecial field if non-nil, zero value otherwise.

### GetRequireSpecialOk

`func (o *AuthenticationSettingsPasswordPolicy) GetRequireSpecialOk() (*bool, bool)`

GetRequireSpecialOk returns a tuple with the RequireSpecial field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequireSpecial

`func (o *AuthenticationSettingsPasswordPolicy) SetRequireSpecial(v bool)`

SetRequireSpecial sets RequireSpecial field to given value.

### HasRequireSpecial

`func (o *AuthenticationSettingsPasswordPolicy) HasRequireSpecial() bool`

HasRequireSpecial returns a boolean if a field has been set.

### GetRequireNumbers

`func (o *AuthenticationSettingsPasswordPolicy) GetRequireNumbers() bool`

GetRequireNumbers returns the RequireNumbers field if non-nil, zero value otherwise.

### GetRequireNumbersOk

`func (o *AuthenticationSettingsPasswordPolicy) GetRequireNumbersOk() (*bool, bool)`

GetRequireNumbersOk returns a tuple with the RequireNumbers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequireNumbers

`func (o *AuthenticationSettingsPasswordPolicy) SetRequireNumbers(v bool)`

SetRequireNumbers sets RequireNumbers field to given value.

### HasRequireNumbers

`func (o *AuthenticationSettingsPasswordPolicy) HasRequireNumbers() bool`

HasRequireNumbers returns a boolean if a field has been set.

### GetRequireUppercase

`func (o *AuthenticationSettingsPasswordPolicy) GetRequireUppercase() bool`

GetRequireUppercase returns the RequireUppercase field if non-nil, zero value otherwise.

### GetRequireUppercaseOk

`func (o *AuthenticationSettingsPasswordPolicy) GetRequireUppercaseOk() (*bool, bool)`

GetRequireUppercaseOk returns a tuple with the RequireUppercase field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequireUppercase

`func (o *AuthenticationSettingsPasswordPolicy) SetRequireUppercase(v bool)`

SetRequireUppercase sets RequireUppercase field to given value.

### HasRequireUppercase

`func (o *AuthenticationSettingsPasswordPolicy) HasRequireUppercase() bool`

HasRequireUppercase returns a boolean if a field has been set.

### GetRequireLowercase

`func (o *AuthenticationSettingsPasswordPolicy) GetRequireLowercase() bool`

GetRequireLowercase returns the RequireLowercase field if non-nil, zero value otherwise.

### GetRequireLowercaseOk

`func (o *AuthenticationSettingsPasswordPolicy) GetRequireLowercaseOk() (*bool, bool)`

GetRequireLowercaseOk returns a tuple with the RequireLowercase field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequireLowercase

`func (o *AuthenticationSettingsPasswordPolicy) SetRequireLowercase(v bool)`

SetRequireLowercase sets RequireLowercase field to given value.

### HasRequireLowercase

`func (o *AuthenticationSettingsPasswordPolicy) HasRequireLowercase() bool`

HasRequireLowercase returns a boolean if a field has been set.

### GetRejectBreachedPasswords

`func (o *AuthenticationSettingsPasswordPolicy) GetRejectBreachedPasswords() bool`

GetRejectBreachedPasswords returns the RejectBreachedPasswords field if non-nil, zero value otherwise.

### GetRejectBreachedPasswordsOk

`func (o *AuthenticationSettingsPasswordPolicy) GetRejectBreachedPasswordsOk() (*bool, bool)`

GetRejectBreachedPasswordsOk returns a tuple with the RejectBreachedPasswords field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRejectBreachedPasswords

`func (o *AuthenticationSettingsPasswordPolicy) SetRejectBreachedPasswords(v bool)`

SetRejectBreachedPasswords sets RejectBreachedPasswords field to given value.

### HasRejectBreachedPasswords

`func (o *AuthenticationSettingsPasswordPolicy) HasRejectBreachedPasswords() bool`

HasRejectBreachedPasswords returns a boolean if a field has been set.

### GetBreachedPasswordMinCount

`func (o *AuthenticationSettingsPasswordPolicy) GetBreachedPasswordMinCount() int32`

GetBreachedPasswordMinCount returns the BreachedPasswordMinCount field if non-nil, zero value otherwise.

### GetBreachedPasswordMinCountOk

`func (o *AuthenticationSettingsPasswordPolicy) GetBreachedPasswordMinCountOk() (*int32, bool)`

GetBreachedPasswordMinCountOk returns a tuple with the BreachedPasswordMinCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBreachedPasswordMinCount

`func (o *AuthenticationSettingsPasswordPolicy) SetBreachedPasswordMinCount(v int32)`

SetBreachedPasswordMinCount sets BreachedPasswordMinCount field to given value.

### HasBreachedPasswordMinCount

`func (o *AuthenticationSettingsPasswordPolicy) HasBreachedPasswordMinCount() bool`

HasBreachedPasswordMinCount returns a boolean if a field has been set.

### GetCheckBreachedOnLogin

`func (o *AuthenticationSettingsPasswordPolicy) GetCheckBreachedOnLogin() bool`

GetCheckBreachedOnLogin returns the CheckBreachedOnLogin field if non-nil, zero value otherwise.

### GetCheckBreachedOnLoginOk

`func (o *AuthenticationSettingsPasswordPolicy) GetCheckBreachedOnLoginOk() (*bool, bool)`

GetCheckBreachedOnLoginOk returns a tuple with the CheckBreachedOnLogin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCheckBreachedOnLogin

`func (o *AuthenticationSettingsPasswordPolicy) SetCheckBreachedOnLogin(v bool)`

SetCheckBreachedOnLogin sets CheckBreachedOnLogin field to given value.

### HasCheckBreachedOnLogin

`func (o *AuthenticationSettingsPasswordPolicy) HasCheckBreachedOnLogin() bool`

HasCheckBreachedOnLogin returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


