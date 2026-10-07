# OrganizationInvitation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**Email** | Pointer to **string** |  | [optional] 
**Role** | Pointer to [**NullableOrganizationInvitationRole**](OrganizationInvitationRole.md) |  | [optional] 
**Status** | Pointer to **string** |  | [optional] 
**InvitedBy** | Pointer to **NullableString** |  | [optional] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] 
**ExpiresAt** | Pointer to **time.Time** |  | [optional] 

## Methods

### NewOrganizationInvitation

`func NewOrganizationInvitation() *OrganizationInvitation`

NewOrganizationInvitation instantiates a new OrganizationInvitation object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOrganizationInvitationWithDefaults

`func NewOrganizationInvitationWithDefaults() *OrganizationInvitation`

NewOrganizationInvitationWithDefaults instantiates a new OrganizationInvitation object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *OrganizationInvitation) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *OrganizationInvitation) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *OrganizationInvitation) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *OrganizationInvitation) HasId() bool`

HasId returns a boolean if a field has been set.

### GetEmail

`func (o *OrganizationInvitation) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *OrganizationInvitation) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *OrganizationInvitation) SetEmail(v string)`

SetEmail sets Email field to given value.

### HasEmail

`func (o *OrganizationInvitation) HasEmail() bool`

HasEmail returns a boolean if a field has been set.

### GetRole

`func (o *OrganizationInvitation) GetRole() OrganizationInvitationRole`

GetRole returns the Role field if non-nil, zero value otherwise.

### GetRoleOk

`func (o *OrganizationInvitation) GetRoleOk() (*OrganizationInvitationRole, bool)`

GetRoleOk returns a tuple with the Role field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRole

`func (o *OrganizationInvitation) SetRole(v OrganizationInvitationRole)`

SetRole sets Role field to given value.

### HasRole

`func (o *OrganizationInvitation) HasRole() bool`

HasRole returns a boolean if a field has been set.

### SetRoleNil

`func (o *OrganizationInvitation) SetRoleNil(b bool)`

 SetRoleNil sets the value for Role to be an explicit nil

### UnsetRole
`func (o *OrganizationInvitation) UnsetRole()`

UnsetRole ensures that no value is present for Role, not even an explicit nil
### GetStatus

`func (o *OrganizationInvitation) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *OrganizationInvitation) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *OrganizationInvitation) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *OrganizationInvitation) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetInvitedBy

`func (o *OrganizationInvitation) GetInvitedBy() string`

GetInvitedBy returns the InvitedBy field if non-nil, zero value otherwise.

### GetInvitedByOk

`func (o *OrganizationInvitation) GetInvitedByOk() (*string, bool)`

GetInvitedByOk returns a tuple with the InvitedBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInvitedBy

`func (o *OrganizationInvitation) SetInvitedBy(v string)`

SetInvitedBy sets InvitedBy field to given value.

### HasInvitedBy

`func (o *OrganizationInvitation) HasInvitedBy() bool`

HasInvitedBy returns a boolean if a field has been set.

### SetInvitedByNil

`func (o *OrganizationInvitation) SetInvitedByNil(b bool)`

 SetInvitedByNil sets the value for InvitedBy to be an explicit nil

### UnsetInvitedBy
`func (o *OrganizationInvitation) UnsetInvitedBy()`

UnsetInvitedBy ensures that no value is present for InvitedBy, not even an explicit nil
### GetCreatedAt

`func (o *OrganizationInvitation) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *OrganizationInvitation) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *OrganizationInvitation) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *OrganizationInvitation) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetExpiresAt

`func (o *OrganizationInvitation) GetExpiresAt() time.Time`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *OrganizationInvitation) GetExpiresAtOk() (*time.Time, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *OrganizationInvitation) SetExpiresAt(v time.Time)`

SetExpiresAt sets ExpiresAt field to given value.

### HasExpiresAt

`func (o *OrganizationInvitation) HasExpiresAt() bool`

HasExpiresAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


