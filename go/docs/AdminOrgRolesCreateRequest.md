# AdminOrgRolesCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** |  | 
**Slug** | Pointer to **string** | Optional; derived from the name when left out. | [optional] 
**Description** | Pointer to **NullableString** |  | [optional] 
**IsDefault** | Pointer to **bool** | The role that new members get. | [optional] [default to false]

## Methods

### NewAdminOrgRolesCreateRequest

`func NewAdminOrgRolesCreateRequest(name string, ) *AdminOrgRolesCreateRequest`

NewAdminOrgRolesCreateRequest instantiates a new AdminOrgRolesCreateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminOrgRolesCreateRequestWithDefaults

`func NewAdminOrgRolesCreateRequestWithDefaults() *AdminOrgRolesCreateRequest`

NewAdminOrgRolesCreateRequestWithDefaults instantiates a new AdminOrgRolesCreateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *AdminOrgRolesCreateRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AdminOrgRolesCreateRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AdminOrgRolesCreateRequest) SetName(v string)`

SetName sets Name field to given value.


### GetSlug

`func (o *AdminOrgRolesCreateRequest) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *AdminOrgRolesCreateRequest) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *AdminOrgRolesCreateRequest) SetSlug(v string)`

SetSlug sets Slug field to given value.

### HasSlug

`func (o *AdminOrgRolesCreateRequest) HasSlug() bool`

HasSlug returns a boolean if a field has been set.

### GetDescription

`func (o *AdminOrgRolesCreateRequest) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *AdminOrgRolesCreateRequest) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *AdminOrgRolesCreateRequest) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *AdminOrgRolesCreateRequest) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *AdminOrgRolesCreateRequest) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *AdminOrgRolesCreateRequest) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetIsDefault

`func (o *AdminOrgRolesCreateRequest) GetIsDefault() bool`

GetIsDefault returns the IsDefault field if non-nil, zero value otherwise.

### GetIsDefaultOk

`func (o *AdminOrgRolesCreateRequest) GetIsDefaultOk() (*bool, bool)`

GetIsDefaultOk returns a tuple with the IsDefault field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsDefault

`func (o *AdminOrgRolesCreateRequest) SetIsDefault(v bool)`

SetIsDefault sets IsDefault field to given value.

### HasIsDefault

`func (o *AdminOrgRolesCreateRequest) HasIsDefault() bool`

HasIsDefault returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


