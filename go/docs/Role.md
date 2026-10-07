# Role

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Name** | **string** |  | 
**Slug** | **string** |  | 
**Description** | Pointer to **NullableString** |  | [optional] 
**IsSystem** | **bool** |  | 
**UserCount** | **int32** |  | 
**CreatedAt** | **time.Time** |  | 
**Permissions** | Pointer to [**[]RolePermissionsInner**](RolePermissionsInner.md) | Detailed responses only | [optional] 
**UpdatedAt** | Pointer to **NullableTime** | Detailed responses only | [optional] 

## Methods

### NewRole

`func NewRole(id string, name string, slug string, isSystem bool, userCount int32, createdAt time.Time, ) *Role`

NewRole instantiates a new Role object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRoleWithDefaults

`func NewRoleWithDefaults() *Role`

NewRoleWithDefaults instantiates a new Role object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *Role) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Role) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Role) SetId(v string)`

SetId sets Id field to given value.


### GetName

`func (o *Role) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Role) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Role) SetName(v string)`

SetName sets Name field to given value.


### GetSlug

`func (o *Role) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *Role) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *Role) SetSlug(v string)`

SetSlug sets Slug field to given value.


### GetDescription

`func (o *Role) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *Role) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *Role) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *Role) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *Role) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *Role) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetIsSystem

`func (o *Role) GetIsSystem() bool`

GetIsSystem returns the IsSystem field if non-nil, zero value otherwise.

### GetIsSystemOk

`func (o *Role) GetIsSystemOk() (*bool, bool)`

GetIsSystemOk returns a tuple with the IsSystem field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsSystem

`func (o *Role) SetIsSystem(v bool)`

SetIsSystem sets IsSystem field to given value.


### GetUserCount

`func (o *Role) GetUserCount() int32`

GetUserCount returns the UserCount field if non-nil, zero value otherwise.

### GetUserCountOk

`func (o *Role) GetUserCountOk() (*int32, bool)`

GetUserCountOk returns a tuple with the UserCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserCount

`func (o *Role) SetUserCount(v int32)`

SetUserCount sets UserCount field to given value.


### GetCreatedAt

`func (o *Role) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *Role) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *Role) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.


### GetPermissions

`func (o *Role) GetPermissions() []RolePermissionsInner`

GetPermissions returns the Permissions field if non-nil, zero value otherwise.

### GetPermissionsOk

`func (o *Role) GetPermissionsOk() (*[]RolePermissionsInner, bool)`

GetPermissionsOk returns a tuple with the Permissions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPermissions

`func (o *Role) SetPermissions(v []RolePermissionsInner)`

SetPermissions sets Permissions field to given value.

### HasPermissions

`func (o *Role) HasPermissions() bool`

HasPermissions returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *Role) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *Role) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *Role) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *Role) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *Role) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *Role) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


