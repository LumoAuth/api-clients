# AdminGroupsCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** |  | 
**Slug** | Pointer to **string** | Optional; derived from the name when left out. | [optional] 
**Description** | Pointer to **NullableString** |  | [optional] 
**Roles** | Pointer to **[]string** | Optional role slugs. | [optional] 

## Methods

### NewAdminGroupsCreateRequest

`func NewAdminGroupsCreateRequest(name string, ) *AdminGroupsCreateRequest`

NewAdminGroupsCreateRequest instantiates a new AdminGroupsCreateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminGroupsCreateRequestWithDefaults

`func NewAdminGroupsCreateRequestWithDefaults() *AdminGroupsCreateRequest`

NewAdminGroupsCreateRequestWithDefaults instantiates a new AdminGroupsCreateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *AdminGroupsCreateRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AdminGroupsCreateRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AdminGroupsCreateRequest) SetName(v string)`

SetName sets Name field to given value.


### GetSlug

`func (o *AdminGroupsCreateRequest) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *AdminGroupsCreateRequest) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *AdminGroupsCreateRequest) SetSlug(v string)`

SetSlug sets Slug field to given value.

### HasSlug

`func (o *AdminGroupsCreateRequest) HasSlug() bool`

HasSlug returns a boolean if a field has been set.

### GetDescription

`func (o *AdminGroupsCreateRequest) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *AdminGroupsCreateRequest) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *AdminGroupsCreateRequest) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *AdminGroupsCreateRequest) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *AdminGroupsCreateRequest) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *AdminGroupsCreateRequest) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetRoles

`func (o *AdminGroupsCreateRequest) GetRoles() []string`

GetRoles returns the Roles field if non-nil, zero value otherwise.

### GetRolesOk

`func (o *AdminGroupsCreateRequest) GetRolesOk() (*[]string, bool)`

GetRolesOk returns a tuple with the Roles field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoles

`func (o *AdminGroupsCreateRequest) SetRoles(v []string)`

SetRoles sets Roles field to given value.

### HasRoles

`func (o *AdminGroupsCreateRequest) HasRoles() bool`

HasRoles returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


