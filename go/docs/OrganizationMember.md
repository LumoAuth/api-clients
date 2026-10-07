# OrganizationMember

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**User** | Pointer to [**UserRef**](UserRef.md) |  | [optional] 
**Role** | Pointer to [**NullableOrganizationMemberRole**](OrganizationMemberRole.md) |  | [optional] 
**Status** | Pointer to **string** |  | [optional] 
**JoinedAt** | Pointer to **time.Time** |  | [optional] 

## Methods

### NewOrganizationMember

`func NewOrganizationMember() *OrganizationMember`

NewOrganizationMember instantiates a new OrganizationMember object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOrganizationMemberWithDefaults

`func NewOrganizationMemberWithDefaults() *OrganizationMember`

NewOrganizationMemberWithDefaults instantiates a new OrganizationMember object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *OrganizationMember) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *OrganizationMember) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *OrganizationMember) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *OrganizationMember) HasId() bool`

HasId returns a boolean if a field has been set.

### GetUser

`func (o *OrganizationMember) GetUser() UserRef`

GetUser returns the User field if non-nil, zero value otherwise.

### GetUserOk

`func (o *OrganizationMember) GetUserOk() (*UserRef, bool)`

GetUserOk returns a tuple with the User field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUser

`func (o *OrganizationMember) SetUser(v UserRef)`

SetUser sets User field to given value.

### HasUser

`func (o *OrganizationMember) HasUser() bool`

HasUser returns a boolean if a field has been set.

### GetRole

`func (o *OrganizationMember) GetRole() OrganizationMemberRole`

GetRole returns the Role field if non-nil, zero value otherwise.

### GetRoleOk

`func (o *OrganizationMember) GetRoleOk() (*OrganizationMemberRole, bool)`

GetRoleOk returns a tuple with the Role field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRole

`func (o *OrganizationMember) SetRole(v OrganizationMemberRole)`

SetRole sets Role field to given value.

### HasRole

`func (o *OrganizationMember) HasRole() bool`

HasRole returns a boolean if a field has been set.

### SetRoleNil

`func (o *OrganizationMember) SetRoleNil(b bool)`

 SetRoleNil sets the value for Role to be an explicit nil

### UnsetRole
`func (o *OrganizationMember) UnsetRole()`

UnsetRole ensures that no value is present for Role, not even an explicit nil
### GetStatus

`func (o *OrganizationMember) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *OrganizationMember) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *OrganizationMember) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *OrganizationMember) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetJoinedAt

`func (o *OrganizationMember) GetJoinedAt() time.Time`

GetJoinedAt returns the JoinedAt field if non-nil, zero value otherwise.

### GetJoinedAtOk

`func (o *OrganizationMember) GetJoinedAtOk() (*time.Time, bool)`

GetJoinedAtOk returns a tuple with the JoinedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJoinedAt

`func (o *OrganizationMember) SetJoinedAt(v time.Time)`

SetJoinedAt sets JoinedAt field to given value.

### HasJoinedAt

`func (o *OrganizationMember) HasJoinedAt() bool`

HasJoinedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


