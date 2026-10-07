# AbacResourceAttribute

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**ResourceType** | Pointer to **string** |  | [optional] 
**ResourceId** | Pointer to **string** |  | [optional] 
**AttributeSlug** | Pointer to **string** |  | [optional] 
**AttributeName** | Pointer to **string** |  | [optional] 
**Value** | Pointer to **interface{}** |  | [optional] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] 

## Methods

### NewAbacResourceAttribute

`func NewAbacResourceAttribute() *AbacResourceAttribute`

NewAbacResourceAttribute instantiates a new AbacResourceAttribute object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAbacResourceAttributeWithDefaults

`func NewAbacResourceAttributeWithDefaults() *AbacResourceAttribute`

NewAbacResourceAttributeWithDefaults instantiates a new AbacResourceAttribute object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *AbacResourceAttribute) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *AbacResourceAttribute) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *AbacResourceAttribute) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *AbacResourceAttribute) HasId() bool`

HasId returns a boolean if a field has been set.

### GetResourceType

`func (o *AbacResourceAttribute) GetResourceType() string`

GetResourceType returns the ResourceType field if non-nil, zero value otherwise.

### GetResourceTypeOk

`func (o *AbacResourceAttribute) GetResourceTypeOk() (*string, bool)`

GetResourceTypeOk returns a tuple with the ResourceType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceType

`func (o *AbacResourceAttribute) SetResourceType(v string)`

SetResourceType sets ResourceType field to given value.

### HasResourceType

`func (o *AbacResourceAttribute) HasResourceType() bool`

HasResourceType returns a boolean if a field has been set.

### GetResourceId

`func (o *AbacResourceAttribute) GetResourceId() string`

GetResourceId returns the ResourceId field if non-nil, zero value otherwise.

### GetResourceIdOk

`func (o *AbacResourceAttribute) GetResourceIdOk() (*string, bool)`

GetResourceIdOk returns a tuple with the ResourceId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceId

`func (o *AbacResourceAttribute) SetResourceId(v string)`

SetResourceId sets ResourceId field to given value.

### HasResourceId

`func (o *AbacResourceAttribute) HasResourceId() bool`

HasResourceId returns a boolean if a field has been set.

### GetAttributeSlug

`func (o *AbacResourceAttribute) GetAttributeSlug() string`

GetAttributeSlug returns the AttributeSlug field if non-nil, zero value otherwise.

### GetAttributeSlugOk

`func (o *AbacResourceAttribute) GetAttributeSlugOk() (*string, bool)`

GetAttributeSlugOk returns a tuple with the AttributeSlug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttributeSlug

`func (o *AbacResourceAttribute) SetAttributeSlug(v string)`

SetAttributeSlug sets AttributeSlug field to given value.

### HasAttributeSlug

`func (o *AbacResourceAttribute) HasAttributeSlug() bool`

HasAttributeSlug returns a boolean if a field has been set.

### GetAttributeName

`func (o *AbacResourceAttribute) GetAttributeName() string`

GetAttributeName returns the AttributeName field if non-nil, zero value otherwise.

### GetAttributeNameOk

`func (o *AbacResourceAttribute) GetAttributeNameOk() (*string, bool)`

GetAttributeNameOk returns a tuple with the AttributeName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttributeName

`func (o *AbacResourceAttribute) SetAttributeName(v string)`

SetAttributeName sets AttributeName field to given value.

### HasAttributeName

`func (o *AbacResourceAttribute) HasAttributeName() bool`

HasAttributeName returns a boolean if a field has been set.

### GetValue

`func (o *AbacResourceAttribute) GetValue() interface{}`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *AbacResourceAttribute) GetValueOk() (*interface{}, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *AbacResourceAttribute) SetValue(v interface{})`

SetValue sets Value field to given value.

### HasValue

`func (o *AbacResourceAttribute) HasValue() bool`

HasValue returns a boolean if a field has been set.

### SetValueNil

`func (o *AbacResourceAttribute) SetValueNil(b bool)`

 SetValueNil sets the value for Value to be an explicit nil

### UnsetValue
`func (o *AbacResourceAttribute) UnsetValue()`

UnsetValue ensures that no value is present for Value, not even an explicit nil
### GetCreatedAt

`func (o *AbacResourceAttribute) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *AbacResourceAttribute) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *AbacResourceAttribute) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *AbacResourceAttribute) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *AbacResourceAttribute) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *AbacResourceAttribute) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *AbacResourceAttribute) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *AbacResourceAttribute) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *AbacResourceAttribute) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *AbacResourceAttribute) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


