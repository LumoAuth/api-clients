# AbacAttributesCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** |  | 
**Slug** | **string** |  | 
**AttributeType** | **string** | Also accepted as attribute_type. | 
**DataType** | **string** | Also accepted as data_type. | 
**Description** | Pointer to **NullableString** |  | [optional] 
**DefaultValue** | Pointer to **interface{}** |  | [optional] 
**ValidationRules** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewAbacAttributesCreateRequest

`func NewAbacAttributesCreateRequest(name string, slug string, attributeType string, dataType string, ) *AbacAttributesCreateRequest`

NewAbacAttributesCreateRequest instantiates a new AbacAttributesCreateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAbacAttributesCreateRequestWithDefaults

`func NewAbacAttributesCreateRequestWithDefaults() *AbacAttributesCreateRequest`

NewAbacAttributesCreateRequestWithDefaults instantiates a new AbacAttributesCreateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *AbacAttributesCreateRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AbacAttributesCreateRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AbacAttributesCreateRequest) SetName(v string)`

SetName sets Name field to given value.


### GetSlug

`func (o *AbacAttributesCreateRequest) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *AbacAttributesCreateRequest) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *AbacAttributesCreateRequest) SetSlug(v string)`

SetSlug sets Slug field to given value.


### GetAttributeType

`func (o *AbacAttributesCreateRequest) GetAttributeType() string`

GetAttributeType returns the AttributeType field if non-nil, zero value otherwise.

### GetAttributeTypeOk

`func (o *AbacAttributesCreateRequest) GetAttributeTypeOk() (*string, bool)`

GetAttributeTypeOk returns a tuple with the AttributeType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttributeType

`func (o *AbacAttributesCreateRequest) SetAttributeType(v string)`

SetAttributeType sets AttributeType field to given value.


### GetDataType

`func (o *AbacAttributesCreateRequest) GetDataType() string`

GetDataType returns the DataType field if non-nil, zero value otherwise.

### GetDataTypeOk

`func (o *AbacAttributesCreateRequest) GetDataTypeOk() (*string, bool)`

GetDataTypeOk returns a tuple with the DataType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataType

`func (o *AbacAttributesCreateRequest) SetDataType(v string)`

SetDataType sets DataType field to given value.


### GetDescription

`func (o *AbacAttributesCreateRequest) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *AbacAttributesCreateRequest) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *AbacAttributesCreateRequest) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *AbacAttributesCreateRequest) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *AbacAttributesCreateRequest) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *AbacAttributesCreateRequest) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetDefaultValue

`func (o *AbacAttributesCreateRequest) GetDefaultValue() interface{}`

GetDefaultValue returns the DefaultValue field if non-nil, zero value otherwise.

### GetDefaultValueOk

`func (o *AbacAttributesCreateRequest) GetDefaultValueOk() (*interface{}, bool)`

GetDefaultValueOk returns a tuple with the DefaultValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefaultValue

`func (o *AbacAttributesCreateRequest) SetDefaultValue(v interface{})`

SetDefaultValue sets DefaultValue field to given value.

### HasDefaultValue

`func (o *AbacAttributesCreateRequest) HasDefaultValue() bool`

HasDefaultValue returns a boolean if a field has been set.

### SetDefaultValueNil

`func (o *AbacAttributesCreateRequest) SetDefaultValueNil(b bool)`

 SetDefaultValueNil sets the value for DefaultValue to be an explicit nil

### UnsetDefaultValue
`func (o *AbacAttributesCreateRequest) UnsetDefaultValue()`

UnsetDefaultValue ensures that no value is present for DefaultValue, not even an explicit nil
### GetValidationRules

`func (o *AbacAttributesCreateRequest) GetValidationRules() map[string]interface{}`

GetValidationRules returns the ValidationRules field if non-nil, zero value otherwise.

### GetValidationRulesOk

`func (o *AbacAttributesCreateRequest) GetValidationRulesOk() (*map[string]interface{}, bool)`

GetValidationRulesOk returns a tuple with the ValidationRules field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValidationRules

`func (o *AbacAttributesCreateRequest) SetValidationRules(v map[string]interface{})`

SetValidationRules sets ValidationRules field to given value.

### HasValidationRules

`func (o *AbacAttributesCreateRequest) HasValidationRules() bool`

HasValidationRules returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


