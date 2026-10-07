# User

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Email** | **string** |  | 
**Username** | Pointer to **NullableString** |  | [optional] 
**Name** | Pointer to **NullableString** |  | [optional] 
**GivenName** | Pointer to **NullableString** |  | [optional] 
**FamilyName** | Pointer to **NullableString** |  | [optional] 
**Picture** | Pointer to **NullableString** |  | [optional] 
**EmailVerified** | **bool** |  | 
**PhoneNumber** | Pointer to **NullableString** |  | [optional] 
**PhoneNumberVerified** | Pointer to **bool** |  | [optional] 
**IsActive** | **bool** |  | 
**Blocked** | **bool** |  | 
**MfaEnabled** | **bool** |  | 
**IsAdmin** | **bool** |  | 
**CreatedAt** | **time.Time** |  | 
**LastLoginAt** | Pointer to **NullableTime** |  | [optional] 
**LoginCount** | **int32** |  | 
**Roles** | Pointer to [**[]RoleRef**](RoleRef.md) | Detailed (single-user) responses only | [optional] 
**Groups** | Pointer to [**[]GroupRef**](GroupRef.md) | Detailed responses only | [optional] 
**Locale** | Pointer to **NullableString** | Detailed responses only | [optional] 
**Zoneinfo** | Pointer to **NullableString** | Detailed responses only | [optional] 
**UpdatedAt** | Pointer to **NullableTime** | Detailed responses only | [optional] 
**BlockedAt** | Pointer to **NullableTime** | Detailed responses only | [optional] 
**IsJitProvisioned** | Pointer to **bool** | Detailed responses only | [optional] 
**JitProvisionedBy** | Pointer to **NullableString** | Detailed responses only | [optional] 
**SocialProvider** | Pointer to **NullableString** | Detailed responses only | [optional] 

## Methods

### NewUser

`func NewUser(id string, email string, emailVerified bool, isActive bool, blocked bool, mfaEnabled bool, isAdmin bool, createdAt time.Time, loginCount int32, ) *User`

NewUser instantiates a new User object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUserWithDefaults

`func NewUserWithDefaults() *User`

NewUserWithDefaults instantiates a new User object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *User) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *User) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *User) SetId(v string)`

SetId sets Id field to given value.


### GetEmail

`func (o *User) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *User) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *User) SetEmail(v string)`

SetEmail sets Email field to given value.


### GetUsername

`func (o *User) GetUsername() string`

GetUsername returns the Username field if non-nil, zero value otherwise.

### GetUsernameOk

`func (o *User) GetUsernameOk() (*string, bool)`

GetUsernameOk returns a tuple with the Username field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUsername

`func (o *User) SetUsername(v string)`

SetUsername sets Username field to given value.

### HasUsername

`func (o *User) HasUsername() bool`

HasUsername returns a boolean if a field has been set.

### SetUsernameNil

`func (o *User) SetUsernameNil(b bool)`

 SetUsernameNil sets the value for Username to be an explicit nil

### UnsetUsername
`func (o *User) UnsetUsername()`

UnsetUsername ensures that no value is present for Username, not even an explicit nil
### GetName

`func (o *User) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *User) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *User) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *User) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *User) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *User) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetGivenName

`func (o *User) GetGivenName() string`

GetGivenName returns the GivenName field if non-nil, zero value otherwise.

### GetGivenNameOk

`func (o *User) GetGivenNameOk() (*string, bool)`

GetGivenNameOk returns a tuple with the GivenName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGivenName

`func (o *User) SetGivenName(v string)`

SetGivenName sets GivenName field to given value.

### HasGivenName

`func (o *User) HasGivenName() bool`

HasGivenName returns a boolean if a field has been set.

### SetGivenNameNil

`func (o *User) SetGivenNameNil(b bool)`

 SetGivenNameNil sets the value for GivenName to be an explicit nil

### UnsetGivenName
`func (o *User) UnsetGivenName()`

UnsetGivenName ensures that no value is present for GivenName, not even an explicit nil
### GetFamilyName

`func (o *User) GetFamilyName() string`

GetFamilyName returns the FamilyName field if non-nil, zero value otherwise.

### GetFamilyNameOk

`func (o *User) GetFamilyNameOk() (*string, bool)`

GetFamilyNameOk returns a tuple with the FamilyName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFamilyName

`func (o *User) SetFamilyName(v string)`

SetFamilyName sets FamilyName field to given value.

### HasFamilyName

`func (o *User) HasFamilyName() bool`

HasFamilyName returns a boolean if a field has been set.

### SetFamilyNameNil

`func (o *User) SetFamilyNameNil(b bool)`

 SetFamilyNameNil sets the value for FamilyName to be an explicit nil

### UnsetFamilyName
`func (o *User) UnsetFamilyName()`

UnsetFamilyName ensures that no value is present for FamilyName, not even an explicit nil
### GetPicture

`func (o *User) GetPicture() string`

GetPicture returns the Picture field if non-nil, zero value otherwise.

### GetPictureOk

`func (o *User) GetPictureOk() (*string, bool)`

GetPictureOk returns a tuple with the Picture field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPicture

`func (o *User) SetPicture(v string)`

SetPicture sets Picture field to given value.

### HasPicture

`func (o *User) HasPicture() bool`

HasPicture returns a boolean if a field has been set.

### SetPictureNil

`func (o *User) SetPictureNil(b bool)`

 SetPictureNil sets the value for Picture to be an explicit nil

### UnsetPicture
`func (o *User) UnsetPicture()`

UnsetPicture ensures that no value is present for Picture, not even an explicit nil
### GetEmailVerified

`func (o *User) GetEmailVerified() bool`

GetEmailVerified returns the EmailVerified field if non-nil, zero value otherwise.

### GetEmailVerifiedOk

`func (o *User) GetEmailVerifiedOk() (*bool, bool)`

GetEmailVerifiedOk returns a tuple with the EmailVerified field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmailVerified

`func (o *User) SetEmailVerified(v bool)`

SetEmailVerified sets EmailVerified field to given value.


### GetPhoneNumber

`func (o *User) GetPhoneNumber() string`

GetPhoneNumber returns the PhoneNumber field if non-nil, zero value otherwise.

### GetPhoneNumberOk

`func (o *User) GetPhoneNumberOk() (*string, bool)`

GetPhoneNumberOk returns a tuple with the PhoneNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhoneNumber

`func (o *User) SetPhoneNumber(v string)`

SetPhoneNumber sets PhoneNumber field to given value.

### HasPhoneNumber

`func (o *User) HasPhoneNumber() bool`

HasPhoneNumber returns a boolean if a field has been set.

### SetPhoneNumberNil

`func (o *User) SetPhoneNumberNil(b bool)`

 SetPhoneNumberNil sets the value for PhoneNumber to be an explicit nil

### UnsetPhoneNumber
`func (o *User) UnsetPhoneNumber()`

UnsetPhoneNumber ensures that no value is present for PhoneNumber, not even an explicit nil
### GetPhoneNumberVerified

`func (o *User) GetPhoneNumberVerified() bool`

GetPhoneNumberVerified returns the PhoneNumberVerified field if non-nil, zero value otherwise.

### GetPhoneNumberVerifiedOk

`func (o *User) GetPhoneNumberVerifiedOk() (*bool, bool)`

GetPhoneNumberVerifiedOk returns a tuple with the PhoneNumberVerified field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhoneNumberVerified

`func (o *User) SetPhoneNumberVerified(v bool)`

SetPhoneNumberVerified sets PhoneNumberVerified field to given value.

### HasPhoneNumberVerified

`func (o *User) HasPhoneNumberVerified() bool`

HasPhoneNumberVerified returns a boolean if a field has been set.

### GetIsActive

`func (o *User) GetIsActive() bool`

GetIsActive returns the IsActive field if non-nil, zero value otherwise.

### GetIsActiveOk

`func (o *User) GetIsActiveOk() (*bool, bool)`

GetIsActiveOk returns a tuple with the IsActive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsActive

`func (o *User) SetIsActive(v bool)`

SetIsActive sets IsActive field to given value.


### GetBlocked

`func (o *User) GetBlocked() bool`

GetBlocked returns the Blocked field if non-nil, zero value otherwise.

### GetBlockedOk

`func (o *User) GetBlockedOk() (*bool, bool)`

GetBlockedOk returns a tuple with the Blocked field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlocked

`func (o *User) SetBlocked(v bool)`

SetBlocked sets Blocked field to given value.


### GetMfaEnabled

`func (o *User) GetMfaEnabled() bool`

GetMfaEnabled returns the MfaEnabled field if non-nil, zero value otherwise.

### GetMfaEnabledOk

`func (o *User) GetMfaEnabledOk() (*bool, bool)`

GetMfaEnabledOk returns a tuple with the MfaEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMfaEnabled

`func (o *User) SetMfaEnabled(v bool)`

SetMfaEnabled sets MfaEnabled field to given value.


### GetIsAdmin

`func (o *User) GetIsAdmin() bool`

GetIsAdmin returns the IsAdmin field if non-nil, zero value otherwise.

### GetIsAdminOk

`func (o *User) GetIsAdminOk() (*bool, bool)`

GetIsAdminOk returns a tuple with the IsAdmin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsAdmin

`func (o *User) SetIsAdmin(v bool)`

SetIsAdmin sets IsAdmin field to given value.


### GetCreatedAt

`func (o *User) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *User) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *User) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.


### GetLastLoginAt

`func (o *User) GetLastLoginAt() time.Time`

GetLastLoginAt returns the LastLoginAt field if non-nil, zero value otherwise.

### GetLastLoginAtOk

`func (o *User) GetLastLoginAtOk() (*time.Time, bool)`

GetLastLoginAtOk returns a tuple with the LastLoginAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastLoginAt

`func (o *User) SetLastLoginAt(v time.Time)`

SetLastLoginAt sets LastLoginAt field to given value.

### HasLastLoginAt

`func (o *User) HasLastLoginAt() bool`

HasLastLoginAt returns a boolean if a field has been set.

### SetLastLoginAtNil

`func (o *User) SetLastLoginAtNil(b bool)`

 SetLastLoginAtNil sets the value for LastLoginAt to be an explicit nil

### UnsetLastLoginAt
`func (o *User) UnsetLastLoginAt()`

UnsetLastLoginAt ensures that no value is present for LastLoginAt, not even an explicit nil
### GetLoginCount

`func (o *User) GetLoginCount() int32`

GetLoginCount returns the LoginCount field if non-nil, zero value otherwise.

### GetLoginCountOk

`func (o *User) GetLoginCountOk() (*int32, bool)`

GetLoginCountOk returns a tuple with the LoginCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLoginCount

`func (o *User) SetLoginCount(v int32)`

SetLoginCount sets LoginCount field to given value.


### GetRoles

`func (o *User) GetRoles() []RoleRef`

GetRoles returns the Roles field if non-nil, zero value otherwise.

### GetRolesOk

`func (o *User) GetRolesOk() (*[]RoleRef, bool)`

GetRolesOk returns a tuple with the Roles field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoles

`func (o *User) SetRoles(v []RoleRef)`

SetRoles sets Roles field to given value.

### HasRoles

`func (o *User) HasRoles() bool`

HasRoles returns a boolean if a field has been set.

### GetGroups

`func (o *User) GetGroups() []GroupRef`

GetGroups returns the Groups field if non-nil, zero value otherwise.

### GetGroupsOk

`func (o *User) GetGroupsOk() (*[]GroupRef, bool)`

GetGroupsOk returns a tuple with the Groups field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGroups

`func (o *User) SetGroups(v []GroupRef)`

SetGroups sets Groups field to given value.

### HasGroups

`func (o *User) HasGroups() bool`

HasGroups returns a boolean if a field has been set.

### GetLocale

`func (o *User) GetLocale() string`

GetLocale returns the Locale field if non-nil, zero value otherwise.

### GetLocaleOk

`func (o *User) GetLocaleOk() (*string, bool)`

GetLocaleOk returns a tuple with the Locale field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocale

`func (o *User) SetLocale(v string)`

SetLocale sets Locale field to given value.

### HasLocale

`func (o *User) HasLocale() bool`

HasLocale returns a boolean if a field has been set.

### SetLocaleNil

`func (o *User) SetLocaleNil(b bool)`

 SetLocaleNil sets the value for Locale to be an explicit nil

### UnsetLocale
`func (o *User) UnsetLocale()`

UnsetLocale ensures that no value is present for Locale, not even an explicit nil
### GetZoneinfo

`func (o *User) GetZoneinfo() string`

GetZoneinfo returns the Zoneinfo field if non-nil, zero value otherwise.

### GetZoneinfoOk

`func (o *User) GetZoneinfoOk() (*string, bool)`

GetZoneinfoOk returns a tuple with the Zoneinfo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetZoneinfo

`func (o *User) SetZoneinfo(v string)`

SetZoneinfo sets Zoneinfo field to given value.

### HasZoneinfo

`func (o *User) HasZoneinfo() bool`

HasZoneinfo returns a boolean if a field has been set.

### SetZoneinfoNil

`func (o *User) SetZoneinfoNil(b bool)`

 SetZoneinfoNil sets the value for Zoneinfo to be an explicit nil

### UnsetZoneinfo
`func (o *User) UnsetZoneinfo()`

UnsetZoneinfo ensures that no value is present for Zoneinfo, not even an explicit nil
### GetUpdatedAt

`func (o *User) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *User) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *User) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *User) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *User) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *User) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil
### GetBlockedAt

`func (o *User) GetBlockedAt() time.Time`

GetBlockedAt returns the BlockedAt field if non-nil, zero value otherwise.

### GetBlockedAtOk

`func (o *User) GetBlockedAtOk() (*time.Time, bool)`

GetBlockedAtOk returns a tuple with the BlockedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlockedAt

`func (o *User) SetBlockedAt(v time.Time)`

SetBlockedAt sets BlockedAt field to given value.

### HasBlockedAt

`func (o *User) HasBlockedAt() bool`

HasBlockedAt returns a boolean if a field has been set.

### SetBlockedAtNil

`func (o *User) SetBlockedAtNil(b bool)`

 SetBlockedAtNil sets the value for BlockedAt to be an explicit nil

### UnsetBlockedAt
`func (o *User) UnsetBlockedAt()`

UnsetBlockedAt ensures that no value is present for BlockedAt, not even an explicit nil
### GetIsJitProvisioned

`func (o *User) GetIsJitProvisioned() bool`

GetIsJitProvisioned returns the IsJitProvisioned field if non-nil, zero value otherwise.

### GetIsJitProvisionedOk

`func (o *User) GetIsJitProvisionedOk() (*bool, bool)`

GetIsJitProvisionedOk returns a tuple with the IsJitProvisioned field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsJitProvisioned

`func (o *User) SetIsJitProvisioned(v bool)`

SetIsJitProvisioned sets IsJitProvisioned field to given value.

### HasIsJitProvisioned

`func (o *User) HasIsJitProvisioned() bool`

HasIsJitProvisioned returns a boolean if a field has been set.

### GetJitProvisionedBy

`func (o *User) GetJitProvisionedBy() string`

GetJitProvisionedBy returns the JitProvisionedBy field if non-nil, zero value otherwise.

### GetJitProvisionedByOk

`func (o *User) GetJitProvisionedByOk() (*string, bool)`

GetJitProvisionedByOk returns a tuple with the JitProvisionedBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJitProvisionedBy

`func (o *User) SetJitProvisionedBy(v string)`

SetJitProvisionedBy sets JitProvisionedBy field to given value.

### HasJitProvisionedBy

`func (o *User) HasJitProvisionedBy() bool`

HasJitProvisionedBy returns a boolean if a field has been set.

### SetJitProvisionedByNil

`func (o *User) SetJitProvisionedByNil(b bool)`

 SetJitProvisionedByNil sets the value for JitProvisionedBy to be an explicit nil

### UnsetJitProvisionedBy
`func (o *User) UnsetJitProvisionedBy()`

UnsetJitProvisionedBy ensures that no value is present for JitProvisionedBy, not even an explicit nil
### GetSocialProvider

`func (o *User) GetSocialProvider() string`

GetSocialProvider returns the SocialProvider field if non-nil, zero value otherwise.

### GetSocialProviderOk

`func (o *User) GetSocialProviderOk() (*string, bool)`

GetSocialProviderOk returns a tuple with the SocialProvider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSocialProvider

`func (o *User) SetSocialProvider(v string)`

SetSocialProvider sets SocialProvider field to given value.

### HasSocialProvider

`func (o *User) HasSocialProvider() bool`

HasSocialProvider returns a boolean if a field has been set.

### SetSocialProviderNil

`func (o *User) SetSocialProviderNil(b bool)`

 SetSocialProviderNil sets the value for SocialProvider to be an explicit nil

### UnsetSocialProvider
`func (o *User) UnsetSocialProvider()`

UnsetSocialProvider ensures that no value is present for SocialProvider, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


