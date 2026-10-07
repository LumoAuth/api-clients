# AbacPolicy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Slug** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **NullableString** |  | [optional] 
**ResourceType** | Pointer to **string** |  | [optional] 
**Action** | Pointer to **string** |  | [optional] 
**Effect** | Pointer to **string** |  | [optional] 
**Priority** | Pointer to **int32** |  | [optional] 
**Conditions** | Pointer to **map[string]interface{}** |  | [optional] 
**IsActive** | Pointer to **bool** |  | [optional] 
**IsSystem** | Pointer to **bool** |  | [optional] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] 

## Methods

### NewAbacPolicy

`func NewAbacPolicy() *AbacPolicy`

NewAbacPolicy instantiates a new AbacPolicy object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAbacPolicyWithDefaults

`func NewAbacPolicyWithDefaults() *AbacPolicy`

NewAbacPolicyWithDefaults instantiates a new AbacPolicy object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *AbacPolicy) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *AbacPolicy) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *AbacPolicy) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *AbacPolicy) HasId() bool`

HasId returns a boolean if a field has been set.

### GetName

`func (o *AbacPolicy) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AbacPolicy) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AbacPolicy) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *AbacPolicy) HasName() bool`

HasName returns a boolean if a field has been set.

### GetSlug

`func (o *AbacPolicy) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *AbacPolicy) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *AbacPolicy) SetSlug(v string)`

SetSlug sets Slug field to given value.

### HasSlug

`func (o *AbacPolicy) HasSlug() bool`

HasSlug returns a boolean if a field has been set.

### GetDescription

`func (o *AbacPolicy) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *AbacPolicy) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *AbacPolicy) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *AbacPolicy) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *AbacPolicy) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *AbacPolicy) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetResourceType

`func (o *AbacPolicy) GetResourceType() string`

GetResourceType returns the ResourceType field if non-nil, zero value otherwise.

### GetResourceTypeOk

`func (o *AbacPolicy) GetResourceTypeOk() (*string, bool)`

GetResourceTypeOk returns a tuple with the ResourceType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceType

`func (o *AbacPolicy) SetResourceType(v string)`

SetResourceType sets ResourceType field to given value.

### HasResourceType

`func (o *AbacPolicy) HasResourceType() bool`

HasResourceType returns a boolean if a field has been set.

### GetAction

`func (o *AbacPolicy) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *AbacPolicy) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *AbacPolicy) SetAction(v string)`

SetAction sets Action field to given value.

### HasAction

`func (o *AbacPolicy) HasAction() bool`

HasAction returns a boolean if a field has been set.

### GetEffect

`func (o *AbacPolicy) GetEffect() string`

GetEffect returns the Effect field if non-nil, zero value otherwise.

### GetEffectOk

`func (o *AbacPolicy) GetEffectOk() (*string, bool)`

GetEffectOk returns a tuple with the Effect field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEffect

`func (o *AbacPolicy) SetEffect(v string)`

SetEffect sets Effect field to given value.

### HasEffect

`func (o *AbacPolicy) HasEffect() bool`

HasEffect returns a boolean if a field has been set.

### GetPriority

`func (o *AbacPolicy) GetPriority() int32`

GetPriority returns the Priority field if non-nil, zero value otherwise.

### GetPriorityOk

`func (o *AbacPolicy) GetPriorityOk() (*int32, bool)`

GetPriorityOk returns a tuple with the Priority field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriority

`func (o *AbacPolicy) SetPriority(v int32)`

SetPriority sets Priority field to given value.

### HasPriority

`func (o *AbacPolicy) HasPriority() bool`

HasPriority returns a boolean if a field has been set.

### GetConditions

`func (o *AbacPolicy) GetConditions() map[string]interface{}`

GetConditions returns the Conditions field if non-nil, zero value otherwise.

### GetConditionsOk

`func (o *AbacPolicy) GetConditionsOk() (*map[string]interface{}, bool)`

GetConditionsOk returns a tuple with the Conditions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConditions

`func (o *AbacPolicy) SetConditions(v map[string]interface{})`

SetConditions sets Conditions field to given value.

### HasConditions

`func (o *AbacPolicy) HasConditions() bool`

HasConditions returns a boolean if a field has been set.

### GetIsActive

`func (o *AbacPolicy) GetIsActive() bool`

GetIsActive returns the IsActive field if non-nil, zero value otherwise.

### GetIsActiveOk

`func (o *AbacPolicy) GetIsActiveOk() (*bool, bool)`

GetIsActiveOk returns a tuple with the IsActive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsActive

`func (o *AbacPolicy) SetIsActive(v bool)`

SetIsActive sets IsActive field to given value.

### HasIsActive

`func (o *AbacPolicy) HasIsActive() bool`

HasIsActive returns a boolean if a field has been set.

### GetIsSystem

`func (o *AbacPolicy) GetIsSystem() bool`

GetIsSystem returns the IsSystem field if non-nil, zero value otherwise.

### GetIsSystemOk

`func (o *AbacPolicy) GetIsSystemOk() (*bool, bool)`

GetIsSystemOk returns a tuple with the IsSystem field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsSystem

`func (o *AbacPolicy) SetIsSystem(v bool)`

SetIsSystem sets IsSystem field to given value.

### HasIsSystem

`func (o *AbacPolicy) HasIsSystem() bool`

HasIsSystem returns a boolean if a field has been set.

### GetCreatedAt

`func (o *AbacPolicy) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *AbacPolicy) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *AbacPolicy) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *AbacPolicy) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *AbacPolicy) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *AbacPolicy) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *AbacPolicy) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *AbacPolicy) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *AbacPolicy) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *AbacPolicy) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


