# PutAbacAttributesUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **NullableString** |  | [optional] 
**DefaultValue** | Pointer to **interface{}** |  | [optional] 
**ValidationRules** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewPutAbacAttributesUpdateRequest

`func NewPutAbacAttributesUpdateRequest() *PutAbacAttributesUpdateRequest`

NewPutAbacAttributesUpdateRequest instantiates a new PutAbacAttributesUpdateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPutAbacAttributesUpdateRequestWithDefaults

`func NewPutAbacAttributesUpdateRequestWithDefaults() *PutAbacAttributesUpdateRequest`

NewPutAbacAttributesUpdateRequestWithDefaults instantiates a new PutAbacAttributesUpdateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *PutAbacAttributesUpdateRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *PutAbacAttributesUpdateRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *PutAbacAttributesUpdateRequest) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *PutAbacAttributesUpdateRequest) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDescription

`func (o *PutAbacAttributesUpdateRequest) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *PutAbacAttributesUpdateRequest) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *PutAbacAttributesUpdateRequest) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *PutAbacAttributesUpdateRequest) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *PutAbacAttributesUpdateRequest) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *PutAbacAttributesUpdateRequest) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetDefaultValue

`func (o *PutAbacAttributesUpdateRequest) GetDefaultValue() interface{}`

GetDefaultValue returns the DefaultValue field if non-nil, zero value otherwise.

### GetDefaultValueOk

`func (o *PutAbacAttributesUpdateRequest) GetDefaultValueOk() (*interface{}, bool)`

GetDefaultValueOk returns a tuple with the DefaultValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefaultValue

`func (o *PutAbacAttributesUpdateRequest) SetDefaultValue(v interface{})`

SetDefaultValue sets DefaultValue field to given value.

### HasDefaultValue

`func (o *PutAbacAttributesUpdateRequest) HasDefaultValue() bool`

HasDefaultValue returns a boolean if a field has been set.

### SetDefaultValueNil

`func (o *PutAbacAttributesUpdateRequest) SetDefaultValueNil(b bool)`

 SetDefaultValueNil sets the value for DefaultValue to be an explicit nil

### UnsetDefaultValue
`func (o *PutAbacAttributesUpdateRequest) UnsetDefaultValue()`

UnsetDefaultValue ensures that no value is present for DefaultValue, not even an explicit nil
### GetValidationRules

`func (o *PutAbacAttributesUpdateRequest) GetValidationRules() map[string]interface{}`

GetValidationRules returns the ValidationRules field if non-nil, zero value otherwise.

### GetValidationRulesOk

`func (o *PutAbacAttributesUpdateRequest) GetValidationRulesOk() (*map[string]interface{}, bool)`

GetValidationRulesOk returns a tuple with the ValidationRules field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValidationRules

`func (o *PutAbacAttributesUpdateRequest) SetValidationRules(v map[string]interface{})`

SetValidationRules sets ValidationRules field to given value.

### HasValidationRules

`func (o *PutAbacAttributesUpdateRequest) HasValidationRules() bool`

HasValidationRules returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


