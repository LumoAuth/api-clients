# AdminPermissionsCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** |  | 
**Slug** | **string** | Lowercase letters, digits, dots, hyphens and underscores (for example invoices.approve). Built-in and reserved slugs are refused. | 
**Description** | Pointer to **NullableString** |  | [optional] 
**Resource** | Pointer to **NullableString** |  | [optional] 
**Action** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewAdminPermissionsCreateRequest

`func NewAdminPermissionsCreateRequest(name string, slug string, ) *AdminPermissionsCreateRequest`

NewAdminPermissionsCreateRequest instantiates a new AdminPermissionsCreateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminPermissionsCreateRequestWithDefaults

`func NewAdminPermissionsCreateRequestWithDefaults() *AdminPermissionsCreateRequest`

NewAdminPermissionsCreateRequestWithDefaults instantiates a new AdminPermissionsCreateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *AdminPermissionsCreateRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AdminPermissionsCreateRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AdminPermissionsCreateRequest) SetName(v string)`

SetName sets Name field to given value.


### GetSlug

`func (o *AdminPermissionsCreateRequest) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *AdminPermissionsCreateRequest) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *AdminPermissionsCreateRequest) SetSlug(v string)`

SetSlug sets Slug field to given value.


### GetDescription

`func (o *AdminPermissionsCreateRequest) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *AdminPermissionsCreateRequest) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *AdminPermissionsCreateRequest) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *AdminPermissionsCreateRequest) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *AdminPermissionsCreateRequest) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *AdminPermissionsCreateRequest) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetResource

`func (o *AdminPermissionsCreateRequest) GetResource() string`

GetResource returns the Resource field if non-nil, zero value otherwise.

### GetResourceOk

`func (o *AdminPermissionsCreateRequest) GetResourceOk() (*string, bool)`

GetResourceOk returns a tuple with the Resource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResource

`func (o *AdminPermissionsCreateRequest) SetResource(v string)`

SetResource sets Resource field to given value.

### HasResource

`func (o *AdminPermissionsCreateRequest) HasResource() bool`

HasResource returns a boolean if a field has been set.

### SetResourceNil

`func (o *AdminPermissionsCreateRequest) SetResourceNil(b bool)`

 SetResourceNil sets the value for Resource to be an explicit nil

### UnsetResource
`func (o *AdminPermissionsCreateRequest) UnsetResource()`

UnsetResource ensures that no value is present for Resource, not even an explicit nil
### GetAction

`func (o *AdminPermissionsCreateRequest) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *AdminPermissionsCreateRequest) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *AdminPermissionsCreateRequest) SetAction(v string)`

SetAction sets Action field to given value.

### HasAction

`func (o *AdminPermissionsCreateRequest) HasAction() bool`

HasAction returns a boolean if a field has been set.

### SetActionNil

`func (o *AdminPermissionsCreateRequest) SetActionNil(b bool)`

 SetActionNil sets the value for Action to be an explicit nil

### UnsetAction
`func (o *AdminPermissionsCreateRequest) UnsetAction()`

UnsetAction ensures that no value is present for Action, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


