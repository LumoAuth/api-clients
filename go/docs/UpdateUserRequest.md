# UpdateUserRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Email** | Pointer to **string** | A change needs a caller who outranks the user (and a fresh sign-in for a person). | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**GivenName** | Pointer to **string** |  | [optional] 
**FamilyName** | Pointer to **string** |  | [optional] 
**PhoneNumber** | Pointer to **string** |  | [optional] 
**Picture** | Pointer to **string** |  | [optional] 
**Locale** | Pointer to **string** |  | [optional] 
**Zoneinfo** | Pointer to **string** |  | [optional] 
**EmailVerified** | Pointer to **bool** |  | [optional] 
**IsActive** | Pointer to **bool** |  | [optional] 
**Staff** | Pointer to **bool** |  | [optional] 
**Metadata** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewUpdateUserRequest

`func NewUpdateUserRequest() *UpdateUserRequest`

NewUpdateUserRequest instantiates a new UpdateUserRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUpdateUserRequestWithDefaults

`func NewUpdateUserRequestWithDefaults() *UpdateUserRequest`

NewUpdateUserRequestWithDefaults instantiates a new UpdateUserRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEmail

`func (o *UpdateUserRequest) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *UpdateUserRequest) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *UpdateUserRequest) SetEmail(v string)`

SetEmail sets Email field to given value.

### HasEmail

`func (o *UpdateUserRequest) HasEmail() bool`

HasEmail returns a boolean if a field has been set.

### GetName

`func (o *UpdateUserRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *UpdateUserRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *UpdateUserRequest) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *UpdateUserRequest) HasName() bool`

HasName returns a boolean if a field has been set.

### GetGivenName

`func (o *UpdateUserRequest) GetGivenName() string`

GetGivenName returns the GivenName field if non-nil, zero value otherwise.

### GetGivenNameOk

`func (o *UpdateUserRequest) GetGivenNameOk() (*string, bool)`

GetGivenNameOk returns a tuple with the GivenName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGivenName

`func (o *UpdateUserRequest) SetGivenName(v string)`

SetGivenName sets GivenName field to given value.

### HasGivenName

`func (o *UpdateUserRequest) HasGivenName() bool`

HasGivenName returns a boolean if a field has been set.

### GetFamilyName

`func (o *UpdateUserRequest) GetFamilyName() string`

GetFamilyName returns the FamilyName field if non-nil, zero value otherwise.

### GetFamilyNameOk

`func (o *UpdateUserRequest) GetFamilyNameOk() (*string, bool)`

GetFamilyNameOk returns a tuple with the FamilyName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFamilyName

`func (o *UpdateUserRequest) SetFamilyName(v string)`

SetFamilyName sets FamilyName field to given value.

### HasFamilyName

`func (o *UpdateUserRequest) HasFamilyName() bool`

HasFamilyName returns a boolean if a field has been set.

### GetPhoneNumber

`func (o *UpdateUserRequest) GetPhoneNumber() string`

GetPhoneNumber returns the PhoneNumber field if non-nil, zero value otherwise.

### GetPhoneNumberOk

`func (o *UpdateUserRequest) GetPhoneNumberOk() (*string, bool)`

GetPhoneNumberOk returns a tuple with the PhoneNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPhoneNumber

`func (o *UpdateUserRequest) SetPhoneNumber(v string)`

SetPhoneNumber sets PhoneNumber field to given value.

### HasPhoneNumber

`func (o *UpdateUserRequest) HasPhoneNumber() bool`

HasPhoneNumber returns a boolean if a field has been set.

### GetPicture

`func (o *UpdateUserRequest) GetPicture() string`

GetPicture returns the Picture field if non-nil, zero value otherwise.

### GetPictureOk

`func (o *UpdateUserRequest) GetPictureOk() (*string, bool)`

GetPictureOk returns a tuple with the Picture field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPicture

`func (o *UpdateUserRequest) SetPicture(v string)`

SetPicture sets Picture field to given value.

### HasPicture

`func (o *UpdateUserRequest) HasPicture() bool`

HasPicture returns a boolean if a field has been set.

### GetLocale

`func (o *UpdateUserRequest) GetLocale() string`

GetLocale returns the Locale field if non-nil, zero value otherwise.

### GetLocaleOk

`func (o *UpdateUserRequest) GetLocaleOk() (*string, bool)`

GetLocaleOk returns a tuple with the Locale field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocale

`func (o *UpdateUserRequest) SetLocale(v string)`

SetLocale sets Locale field to given value.

### HasLocale

`func (o *UpdateUserRequest) HasLocale() bool`

HasLocale returns a boolean if a field has been set.

### GetZoneinfo

`func (o *UpdateUserRequest) GetZoneinfo() string`

GetZoneinfo returns the Zoneinfo field if non-nil, zero value otherwise.

### GetZoneinfoOk

`func (o *UpdateUserRequest) GetZoneinfoOk() (*string, bool)`

GetZoneinfoOk returns a tuple with the Zoneinfo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetZoneinfo

`func (o *UpdateUserRequest) SetZoneinfo(v string)`

SetZoneinfo sets Zoneinfo field to given value.

### HasZoneinfo

`func (o *UpdateUserRequest) HasZoneinfo() bool`

HasZoneinfo returns a boolean if a field has been set.

### GetEmailVerified

`func (o *UpdateUserRequest) GetEmailVerified() bool`

GetEmailVerified returns the EmailVerified field if non-nil, zero value otherwise.

### GetEmailVerifiedOk

`func (o *UpdateUserRequest) GetEmailVerifiedOk() (*bool, bool)`

GetEmailVerifiedOk returns a tuple with the EmailVerified field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmailVerified

`func (o *UpdateUserRequest) SetEmailVerified(v bool)`

SetEmailVerified sets EmailVerified field to given value.

### HasEmailVerified

`func (o *UpdateUserRequest) HasEmailVerified() bool`

HasEmailVerified returns a boolean if a field has been set.

### GetIsActive

`func (o *UpdateUserRequest) GetIsActive() bool`

GetIsActive returns the IsActive field if non-nil, zero value otherwise.

### GetIsActiveOk

`func (o *UpdateUserRequest) GetIsActiveOk() (*bool, bool)`

GetIsActiveOk returns a tuple with the IsActive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsActive

`func (o *UpdateUserRequest) SetIsActive(v bool)`

SetIsActive sets IsActive field to given value.

### HasIsActive

`func (o *UpdateUserRequest) HasIsActive() bool`

HasIsActive returns a boolean if a field has been set.

### GetStaff

`func (o *UpdateUserRequest) GetStaff() bool`

GetStaff returns the Staff field if non-nil, zero value otherwise.

### GetStaffOk

`func (o *UpdateUserRequest) GetStaffOk() (*bool, bool)`

GetStaffOk returns a tuple with the Staff field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStaff

`func (o *UpdateUserRequest) SetStaff(v bool)`

SetStaff sets Staff field to given value.

### HasStaff

`func (o *UpdateUserRequest) HasStaff() bool`

HasStaff returns a boolean if a field has been set.

### GetMetadata

`func (o *UpdateUserRequest) GetMetadata() map[string]interface{}`

GetMetadata returns the Metadata field if non-nil, zero value otherwise.

### GetMetadataOk

`func (o *UpdateUserRequest) GetMetadataOk() (*map[string]interface{}, bool)`

GetMetadataOk returns a tuple with the Metadata field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMetadata

`func (o *UpdateUserRequest) SetMetadata(v map[string]interface{})`

SetMetadata sets Metadata field to given value.

### HasMetadata

`func (o *UpdateUserRequest) HasMetadata() bool`

HasMetadata returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


