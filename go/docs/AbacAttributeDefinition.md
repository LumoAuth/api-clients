# AbacAttributeDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Slug** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **NullableString** |  | [optional] 
**AttributeType** | Pointer to **string** |  | [optional] 
**DataType** | Pointer to **string** |  | [optional] 
**ValidationRules** | Pointer to **map[string]interface{}** |  | [optional] 
**DefaultValue** | Pointer to **interface{}** |  | [optional] 
**IsRequired** | Pointer to **bool** |  | [optional] 
**IsSystem** | Pointer to **bool** |  | [optional] 
**CreatedAt** | Pointer to **time.Time** |  | [optional] 
**UpdatedAt** | Pointer to **NullableTime** |  | [optional] 

## Methods

### NewAbacAttributeDefinition

`func NewAbacAttributeDefinition() *AbacAttributeDefinition`

NewAbacAttributeDefinition instantiates a new AbacAttributeDefinition object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAbacAttributeDefinitionWithDefaults

`func NewAbacAttributeDefinitionWithDefaults() *AbacAttributeDefinition`

NewAbacAttributeDefinitionWithDefaults instantiates a new AbacAttributeDefinition object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *AbacAttributeDefinition) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *AbacAttributeDefinition) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *AbacAttributeDefinition) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *AbacAttributeDefinition) HasId() bool`

HasId returns a boolean if a field has been set.

### GetName

`func (o *AbacAttributeDefinition) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AbacAttributeDefinition) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AbacAttributeDefinition) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *AbacAttributeDefinition) HasName() bool`

HasName returns a boolean if a field has been set.

### GetSlug

`func (o *AbacAttributeDefinition) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *AbacAttributeDefinition) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *AbacAttributeDefinition) SetSlug(v string)`

SetSlug sets Slug field to given value.

### HasSlug

`func (o *AbacAttributeDefinition) HasSlug() bool`

HasSlug returns a boolean if a field has been set.

### GetDescription

`func (o *AbacAttributeDefinition) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *AbacAttributeDefinition) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *AbacAttributeDefinition) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *AbacAttributeDefinition) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *AbacAttributeDefinition) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *AbacAttributeDefinition) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetAttributeType

`func (o *AbacAttributeDefinition) GetAttributeType() string`

GetAttributeType returns the AttributeType field if non-nil, zero value otherwise.

### GetAttributeTypeOk

`func (o *AbacAttributeDefinition) GetAttributeTypeOk() (*string, bool)`

GetAttributeTypeOk returns a tuple with the AttributeType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttributeType

`func (o *AbacAttributeDefinition) SetAttributeType(v string)`

SetAttributeType sets AttributeType field to given value.

### HasAttributeType

`func (o *AbacAttributeDefinition) HasAttributeType() bool`

HasAttributeType returns a boolean if a field has been set.

### GetDataType

`func (o *AbacAttributeDefinition) GetDataType() string`

GetDataType returns the DataType field if non-nil, zero value otherwise.

### GetDataTypeOk

`func (o *AbacAttributeDefinition) GetDataTypeOk() (*string, bool)`

GetDataTypeOk returns a tuple with the DataType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDataType

`func (o *AbacAttributeDefinition) SetDataType(v string)`

SetDataType sets DataType field to given value.

### HasDataType

`func (o *AbacAttributeDefinition) HasDataType() bool`

HasDataType returns a boolean if a field has been set.

### GetValidationRules

`func (o *AbacAttributeDefinition) GetValidationRules() map[string]interface{}`

GetValidationRules returns the ValidationRules field if non-nil, zero value otherwise.

### GetValidationRulesOk

`func (o *AbacAttributeDefinition) GetValidationRulesOk() (*map[string]interface{}, bool)`

GetValidationRulesOk returns a tuple with the ValidationRules field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValidationRules

`func (o *AbacAttributeDefinition) SetValidationRules(v map[string]interface{})`

SetValidationRules sets ValidationRules field to given value.

### HasValidationRules

`func (o *AbacAttributeDefinition) HasValidationRules() bool`

HasValidationRules returns a boolean if a field has been set.

### SetValidationRulesNil

`func (o *AbacAttributeDefinition) SetValidationRulesNil(b bool)`

 SetValidationRulesNil sets the value for ValidationRules to be an explicit nil

### UnsetValidationRules
`func (o *AbacAttributeDefinition) UnsetValidationRules()`

UnsetValidationRules ensures that no value is present for ValidationRules, not even an explicit nil
### GetDefaultValue

`func (o *AbacAttributeDefinition) GetDefaultValue() interface{}`

GetDefaultValue returns the DefaultValue field if non-nil, zero value otherwise.

### GetDefaultValueOk

`func (o *AbacAttributeDefinition) GetDefaultValueOk() (*interface{}, bool)`

GetDefaultValueOk returns a tuple with the DefaultValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefaultValue

`func (o *AbacAttributeDefinition) SetDefaultValue(v interface{})`

SetDefaultValue sets DefaultValue field to given value.

### HasDefaultValue

`func (o *AbacAttributeDefinition) HasDefaultValue() bool`

HasDefaultValue returns a boolean if a field has been set.

### SetDefaultValueNil

`func (o *AbacAttributeDefinition) SetDefaultValueNil(b bool)`

 SetDefaultValueNil sets the value for DefaultValue to be an explicit nil

### UnsetDefaultValue
`func (o *AbacAttributeDefinition) UnsetDefaultValue()`

UnsetDefaultValue ensures that no value is present for DefaultValue, not even an explicit nil
### GetIsRequired

`func (o *AbacAttributeDefinition) GetIsRequired() bool`

GetIsRequired returns the IsRequired field if non-nil, zero value otherwise.

### GetIsRequiredOk

`func (o *AbacAttributeDefinition) GetIsRequiredOk() (*bool, bool)`

GetIsRequiredOk returns a tuple with the IsRequired field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsRequired

`func (o *AbacAttributeDefinition) SetIsRequired(v bool)`

SetIsRequired sets IsRequired field to given value.

### HasIsRequired

`func (o *AbacAttributeDefinition) HasIsRequired() bool`

HasIsRequired returns a boolean if a field has been set.

### GetIsSystem

`func (o *AbacAttributeDefinition) GetIsSystem() bool`

GetIsSystem returns the IsSystem field if non-nil, zero value otherwise.

### GetIsSystemOk

`func (o *AbacAttributeDefinition) GetIsSystemOk() (*bool, bool)`

GetIsSystemOk returns a tuple with the IsSystem field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsSystem

`func (o *AbacAttributeDefinition) SetIsSystem(v bool)`

SetIsSystem sets IsSystem field to given value.

### HasIsSystem

`func (o *AbacAttributeDefinition) HasIsSystem() bool`

HasIsSystem returns a boolean if a field has been set.

### GetCreatedAt

`func (o *AbacAttributeDefinition) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *AbacAttributeDefinition) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *AbacAttributeDefinition) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *AbacAttributeDefinition) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *AbacAttributeDefinition) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *AbacAttributeDefinition) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *AbacAttributeDefinition) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *AbacAttributeDefinition) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### SetUpdatedAtNil

`func (o *AbacAttributeDefinition) SetUpdatedAtNil(b bool)`

 SetUpdatedAtNil sets the value for UpdatedAt to be an explicit nil

### UnsetUpdatedAt
`func (o *AbacAttributeDefinition) UnsetUpdatedAt()`

UnsetUpdatedAt ensures that no value is present for UpdatedAt, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


