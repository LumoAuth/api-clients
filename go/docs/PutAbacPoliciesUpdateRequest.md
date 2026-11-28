# PutAbacPoliciesUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **NullableString** |  | [optional] 
**ResourceType** | Pointer to **string** |  | [optional] 
**Action** | Pointer to **string** |  | [optional] 
**Effect** | Pointer to **string** |  | [optional] 
**Priority** | Pointer to **int32** |  | [optional] 
**Conditions** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewPutAbacPoliciesUpdateRequest

`func NewPutAbacPoliciesUpdateRequest() *PutAbacPoliciesUpdateRequest`

NewPutAbacPoliciesUpdateRequest instantiates a new PutAbacPoliciesUpdateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPutAbacPoliciesUpdateRequestWithDefaults

`func NewPutAbacPoliciesUpdateRequestWithDefaults() *PutAbacPoliciesUpdateRequest`

NewPutAbacPoliciesUpdateRequestWithDefaults instantiates a new PutAbacPoliciesUpdateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *PutAbacPoliciesUpdateRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *PutAbacPoliciesUpdateRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *PutAbacPoliciesUpdateRequest) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *PutAbacPoliciesUpdateRequest) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDescription

`func (o *PutAbacPoliciesUpdateRequest) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *PutAbacPoliciesUpdateRequest) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *PutAbacPoliciesUpdateRequest) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *PutAbacPoliciesUpdateRequest) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *PutAbacPoliciesUpdateRequest) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *PutAbacPoliciesUpdateRequest) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetResourceType

`func (o *PutAbacPoliciesUpdateRequest) GetResourceType() string`

GetResourceType returns the ResourceType field if non-nil, zero value otherwise.

### GetResourceTypeOk

`func (o *PutAbacPoliciesUpdateRequest) GetResourceTypeOk() (*string, bool)`

GetResourceTypeOk returns a tuple with the ResourceType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceType

`func (o *PutAbacPoliciesUpdateRequest) SetResourceType(v string)`

SetResourceType sets ResourceType field to given value.

### HasResourceType

`func (o *PutAbacPoliciesUpdateRequest) HasResourceType() bool`

HasResourceType returns a boolean if a field has been set.

### GetAction

`func (o *PutAbacPoliciesUpdateRequest) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *PutAbacPoliciesUpdateRequest) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *PutAbacPoliciesUpdateRequest) SetAction(v string)`

SetAction sets Action field to given value.

### HasAction

`func (o *PutAbacPoliciesUpdateRequest) HasAction() bool`

HasAction returns a boolean if a field has been set.

### GetEffect

`func (o *PutAbacPoliciesUpdateRequest) GetEffect() string`

GetEffect returns the Effect field if non-nil, zero value otherwise.

### GetEffectOk

`func (o *PutAbacPoliciesUpdateRequest) GetEffectOk() (*string, bool)`

GetEffectOk returns a tuple with the Effect field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEffect

`func (o *PutAbacPoliciesUpdateRequest) SetEffect(v string)`

SetEffect sets Effect field to given value.

### HasEffect

`func (o *PutAbacPoliciesUpdateRequest) HasEffect() bool`

HasEffect returns a boolean if a field has been set.

### GetPriority

`func (o *PutAbacPoliciesUpdateRequest) GetPriority() int32`

GetPriority returns the Priority field if non-nil, zero value otherwise.

### GetPriorityOk

`func (o *PutAbacPoliciesUpdateRequest) GetPriorityOk() (*int32, bool)`

GetPriorityOk returns a tuple with the Priority field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriority

`func (o *PutAbacPoliciesUpdateRequest) SetPriority(v int32)`

SetPriority sets Priority field to given value.

### HasPriority

`func (o *PutAbacPoliciesUpdateRequest) HasPriority() bool`

HasPriority returns a boolean if a field has been set.

### GetConditions

`func (o *PutAbacPoliciesUpdateRequest) GetConditions() map[string]interface{}`

GetConditions returns the Conditions field if non-nil, zero value otherwise.

### GetConditionsOk

`func (o *PutAbacPoliciesUpdateRequest) GetConditionsOk() (*map[string]interface{}, bool)`

GetConditionsOk returns a tuple with the Conditions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConditions

`func (o *PutAbacPoliciesUpdateRequest) SetConditions(v map[string]interface{})`

SetConditions sets Conditions field to given value.

### HasConditions

`func (o *PutAbacPoliciesUpdateRequest) HasConditions() bool`

HasConditions returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


