# Permission

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** |  | 
**Name** | **string** |  | 
**Slug** | **string** |  | 
**Description** | Pointer to **NullableString** |  | [optional] 
**Resource** | Pointer to **NullableString** |  | [optional] 
**Action** | Pointer to **NullableString** |  | [optional] 
**IsSystem** | **bool** |  | 
**IsCustom** | **bool** |  | 
**CreatedAt** | **time.Time** |  | 
**RoleCount** | Pointer to **int32** | Detailed responses only | [optional] 

## Methods

### NewPermission

`func NewPermission(id int32, name string, slug string, isSystem bool, isCustom bool, createdAt time.Time, ) *Permission`

NewPermission instantiates a new Permission object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPermissionWithDefaults

`func NewPermissionWithDefaults() *Permission`

NewPermissionWithDefaults instantiates a new Permission object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *Permission) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Permission) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Permission) SetId(v int32)`

SetId sets Id field to given value.


### GetName

`func (o *Permission) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Permission) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Permission) SetName(v string)`

SetName sets Name field to given value.


### GetSlug

`func (o *Permission) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *Permission) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *Permission) SetSlug(v string)`

SetSlug sets Slug field to given value.


### GetDescription

`func (o *Permission) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *Permission) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *Permission) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *Permission) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *Permission) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *Permission) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetResource

`func (o *Permission) GetResource() string`

GetResource returns the Resource field if non-nil, zero value otherwise.

### GetResourceOk

`func (o *Permission) GetResourceOk() (*string, bool)`

GetResourceOk returns a tuple with the Resource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResource

`func (o *Permission) SetResource(v string)`

SetResource sets Resource field to given value.

### HasResource

`func (o *Permission) HasResource() bool`

HasResource returns a boolean if a field has been set.

### SetResourceNil

`func (o *Permission) SetResourceNil(b bool)`

 SetResourceNil sets the value for Resource to be an explicit nil

### UnsetResource
`func (o *Permission) UnsetResource()`

UnsetResource ensures that no value is present for Resource, not even an explicit nil
### GetAction

`func (o *Permission) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *Permission) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *Permission) SetAction(v string)`

SetAction sets Action field to given value.

### HasAction

`func (o *Permission) HasAction() bool`

HasAction returns a boolean if a field has been set.

### SetActionNil

`func (o *Permission) SetActionNil(b bool)`

 SetActionNil sets the value for Action to be an explicit nil

### UnsetAction
`func (o *Permission) UnsetAction()`

UnsetAction ensures that no value is present for Action, not even an explicit nil
### GetIsSystem

`func (o *Permission) GetIsSystem() bool`

GetIsSystem returns the IsSystem field if non-nil, zero value otherwise.

### GetIsSystemOk

`func (o *Permission) GetIsSystemOk() (*bool, bool)`

GetIsSystemOk returns a tuple with the IsSystem field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsSystem

`func (o *Permission) SetIsSystem(v bool)`

SetIsSystem sets IsSystem field to given value.


### GetIsCustom

`func (o *Permission) GetIsCustom() bool`

GetIsCustom returns the IsCustom field if non-nil, zero value otherwise.

### GetIsCustomOk

`func (o *Permission) GetIsCustomOk() (*bool, bool)`

GetIsCustomOk returns a tuple with the IsCustom field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsCustom

`func (o *Permission) SetIsCustom(v bool)`

SetIsCustom sets IsCustom field to given value.


### GetCreatedAt

`func (o *Permission) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *Permission) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *Permission) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.


### GetRoleCount

`func (o *Permission) GetRoleCount() int32`

GetRoleCount returns the RoleCount field if non-nil, zero value otherwise.

### GetRoleCountOk

`func (o *Permission) GetRoleCountOk() (*int32, bool)`

GetRoleCountOk returns a tuple with the RoleCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoleCount

`func (o *Permission) SetRoleCount(v int32)`

SetRoleCount sets RoleCount field to given value.

### HasRoleCount

`func (o *Permission) HasRoleCount() bool`

HasRoleCount returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


