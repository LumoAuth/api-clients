# Group

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Name** | **string** |  | 
**Slug** | **string** |  | 
**Description** | Pointer to **NullableString** |  | [optional] 
**IsSystem** | **bool** |  | 
**MemberCount** | **int32** |  | 
**RoleCount** | **int32** |  | 
**CreatedAt** | **time.Time** |  | 
**Roles** | Pointer to [**[]RoleRef**](RoleRef.md) | Detailed responses only | [optional] 
**Members** | Pointer to [**[]UserRef**](UserRef.md) | Detailed responses only | [optional] 
**UpdatedAt** | Pointer to **NullableTime** | Detailed responses only | [optional] 

## Methods

### NewGroup

`func NewGroup(id string, name string, slug string, isSystem bool, memberCount int32, roleCount int32, createdAt time.Time, ) *Group`

NewGroup instantiates a new Group object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGroupWithDefaults

`func NewGroupWithDefaults() *Group`

NewGroupWithDefaults instantiates a new Group object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *Group) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Group) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Group) SetId(v string)`

SetId sets Id field to given value.


### GetName

`func (o *Group) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Group) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Group) SetName(v string)`

SetName sets Name field to given value.


### GetSlug

`func (o *Group) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *Group) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *Group) SetSlug(v string)`

SetSlug sets Slug field to given value.


### GetDescription

`func (o *Group) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *Group) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *Group) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *Group) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *Group) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *Group) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetIsSystem

`func (o *Group) GetIsSystem() bool`

GetIsSystem returns the IsSystem field if non-nil, zero value otherwise.

### GetIsSystemOk

`func (o *Group) GetIsSystemOk() (*bool, bool)`

GetIsSystemOk returns a tuple with the IsSystem field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsSystem

`func (o *Group) SetIsSystem(v bool)`

SetIsSystem sets IsSystem field to given value.


### GetMemberCount

`func (o *Group) GetMemberCount() int32`

GetMemberCount returns the MemberCount field if non-nil, zero value otherwise.

### GetMemberCountOk

`func (o *Group) GetMemberCountOk() (*int32, bool)`

GetMemberCountOk returns a tuple with the MemberCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMemberCount

`func (o *Group) SetMemberCount(v int32)`

SetMemberCount sets MemberCount field to given value.


### GetRoleCount

`func (o *Group) GetRoleCount() int32`

GetRoleCount returns the RoleCount field if non-nil, zero value otherwise.

### GetRoleCountOk

`func (o *Group) GetRoleCountOk() (*int32, bool)`

GetRoleCountOk returns a tuple with the RoleCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoleCount

`func (o *Group) SetRoleCount(v int32)`

SetRoleCount sets RoleCount field to given value.


### GetCreatedAt

`func (o *Group) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *Group) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *Group) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.


### GetRoles

`func (o *Group) GetRoles() []RoleRef`

GetRoles returns the Roles field if non-nil, zero value otherwise.

### GetRolesOk

`func (o *Group) GetRolesOk() (*[]RoleRef, bool)`

GetRolesOk returns a tuple with the Roles field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoles

`func (o *Group) SetRoles(v []RoleRef)`

SetRoles sets Roles field to given value.

### HasRoles

`func (o *Group) HasRoles() bool`

HasRoles returns a boolean if a field has been set.

### GetMembers

`func (o *Group) GetMembers() []UserRef`

GetMembers returns the Members field if non-nil, zero value otherwise.

### GetMembersOk

`func (o *Group) GetMembersOk() (*[]UserRef, bool)`

GetMembersOk returns a tuple with the Members field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMembers

`func (o *Group) SetMembers(v []UserRef)`

SetMembers sets Members field to given value.

### HasMembers

`func (o *Group) HasMembers() bool`

HasMembers returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *Group) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *Group) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *Group) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *Group) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *Group) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *Group) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


