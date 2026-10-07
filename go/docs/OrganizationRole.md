# OrganizationRole

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**Slug** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **NullableString** |  | [optional] 
**IsDefault** | Pointer to **bool** |  | [optional] 
**IsOwner** | Pointer to **bool** |  | [optional] 
**IsSystem** | Pointer to **bool** |  | [optional] 

## Methods

### NewOrganizationRole

`func NewOrganizationRole() *OrganizationRole`

NewOrganizationRole instantiates a new OrganizationRole object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOrganizationRoleWithDefaults

`func NewOrganizationRoleWithDefaults() *OrganizationRole`

NewOrganizationRoleWithDefaults instantiates a new OrganizationRole object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *OrganizationRole) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *OrganizationRole) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *OrganizationRole) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *OrganizationRole) HasId() bool`

HasId returns a boolean if a field has been set.

### GetSlug

`func (o *OrganizationRole) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *OrganizationRole) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *OrganizationRole) SetSlug(v string)`

SetSlug sets Slug field to given value.

### HasSlug

`func (o *OrganizationRole) HasSlug() bool`

HasSlug returns a boolean if a field has been set.

### GetName

`func (o *OrganizationRole) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *OrganizationRole) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *OrganizationRole) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *OrganizationRole) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDescription

`func (o *OrganizationRole) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *OrganizationRole) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *OrganizationRole) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *OrganizationRole) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *OrganizationRole) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *OrganizationRole) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetIsDefault

`func (o *OrganizationRole) GetIsDefault() bool`

GetIsDefault returns the IsDefault field if non-nil, zero value otherwise.

### GetIsDefaultOk

`func (o *OrganizationRole) GetIsDefaultOk() (*bool, bool)`

GetIsDefaultOk returns a tuple with the IsDefault field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsDefault

`func (o *OrganizationRole) SetIsDefault(v bool)`

SetIsDefault sets IsDefault field to given value.

### HasIsDefault

`func (o *OrganizationRole) HasIsDefault() bool`

HasIsDefault returns a boolean if a field has been set.

### GetIsOwner

`func (o *OrganizationRole) GetIsOwner() bool`

GetIsOwner returns the IsOwner field if non-nil, zero value otherwise.

### GetIsOwnerOk

`func (o *OrganizationRole) GetIsOwnerOk() (*bool, bool)`

GetIsOwnerOk returns a tuple with the IsOwner field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsOwner

`func (o *OrganizationRole) SetIsOwner(v bool)`

SetIsOwner sets IsOwner field to given value.

### HasIsOwner

`func (o *OrganizationRole) HasIsOwner() bool`

HasIsOwner returns a boolean if a field has been set.

### GetIsSystem

`func (o *OrganizationRole) GetIsSystem() bool`

GetIsSystem returns the IsSystem field if non-nil, zero value otherwise.

### GetIsSystemOk

`func (o *OrganizationRole) GetIsSystemOk() (*bool, bool)`

GetIsSystemOk returns a tuple with the IsSystem field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsSystem

`func (o *OrganizationRole) SetIsSystem(v bool)`

SetIsSystem sets IsSystem field to given value.

### HasIsSystem

`func (o *OrganizationRole) HasIsSystem() bool`

HasIsSystem returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


