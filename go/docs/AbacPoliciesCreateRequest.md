# AbacPoliciesCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** |  | 
**Slug** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **NullableString** |  | [optional] 
**ResourceType** | **string** |  | 
**Action** | **string** | One action, a comma-separated list of actions, or *. | 
**Effect** | **string** |  | 
**Priority** | Pointer to **int32** |  | [optional] 
**Conditions** | **map[string]interface{}** | A condition group: {\&quot;operator\&quot;: \&quot;AND\&quot;|\&quot;OR\&quot;, \&quot;conditions\&quot;: [...]}. | 

## Methods

### NewAbacPoliciesCreateRequest

`func NewAbacPoliciesCreateRequest(name string, resourceType string, action string, effect string, conditions map[string]interface{}, ) *AbacPoliciesCreateRequest`

NewAbacPoliciesCreateRequest instantiates a new AbacPoliciesCreateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAbacPoliciesCreateRequestWithDefaults

`func NewAbacPoliciesCreateRequestWithDefaults() *AbacPoliciesCreateRequest`

NewAbacPoliciesCreateRequestWithDefaults instantiates a new AbacPoliciesCreateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *AbacPoliciesCreateRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *AbacPoliciesCreateRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *AbacPoliciesCreateRequest) SetName(v string)`

SetName sets Name field to given value.


### GetSlug

`func (o *AbacPoliciesCreateRequest) GetSlug() string`

GetSlug returns the Slug field if non-nil, zero value otherwise.

### GetSlugOk

`func (o *AbacPoliciesCreateRequest) GetSlugOk() (*string, bool)`

GetSlugOk returns a tuple with the Slug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlug

`func (o *AbacPoliciesCreateRequest) SetSlug(v string)`

SetSlug sets Slug field to given value.

### HasSlug

`func (o *AbacPoliciesCreateRequest) HasSlug() bool`

HasSlug returns a boolean if a field has been set.

### GetDescription

`func (o *AbacPoliciesCreateRequest) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *AbacPoliciesCreateRequest) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *AbacPoliciesCreateRequest) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *AbacPoliciesCreateRequest) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *AbacPoliciesCreateRequest) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *AbacPoliciesCreateRequest) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetResourceType

`func (o *AbacPoliciesCreateRequest) GetResourceType() string`

GetResourceType returns the ResourceType field if non-nil, zero value otherwise.

### GetResourceTypeOk

`func (o *AbacPoliciesCreateRequest) GetResourceTypeOk() (*string, bool)`

GetResourceTypeOk returns a tuple with the ResourceType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResourceType

`func (o *AbacPoliciesCreateRequest) SetResourceType(v string)`

SetResourceType sets ResourceType field to given value.


### GetAction

`func (o *AbacPoliciesCreateRequest) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *AbacPoliciesCreateRequest) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *AbacPoliciesCreateRequest) SetAction(v string)`

SetAction sets Action field to given value.


### GetEffect

`func (o *AbacPoliciesCreateRequest) GetEffect() string`

GetEffect returns the Effect field if non-nil, zero value otherwise.

### GetEffectOk

`func (o *AbacPoliciesCreateRequest) GetEffectOk() (*string, bool)`

GetEffectOk returns a tuple with the Effect field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEffect

`func (o *AbacPoliciesCreateRequest) SetEffect(v string)`

SetEffect sets Effect field to given value.


### GetPriority

`func (o *AbacPoliciesCreateRequest) GetPriority() int32`

GetPriority returns the Priority field if non-nil, zero value otherwise.

### GetPriorityOk

`func (o *AbacPoliciesCreateRequest) GetPriorityOk() (*int32, bool)`

GetPriorityOk returns a tuple with the Priority field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriority

`func (o *AbacPoliciesCreateRequest) SetPriority(v int32)`

SetPriority sets Priority field to given value.

### HasPriority

`func (o *AbacPoliciesCreateRequest) HasPriority() bool`

HasPriority returns a boolean if a field has been set.

### GetConditions

`func (o *AbacPoliciesCreateRequest) GetConditions() map[string]interface{}`

GetConditions returns the Conditions field if non-nil, zero value otherwise.

### GetConditionsOk

`func (o *AbacPoliciesCreateRequest) GetConditionsOk() (*map[string]interface{}, bool)`

GetConditionsOk returns a tuple with the Conditions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConditions

`func (o *AbacPoliciesCreateRequest) SetConditions(v map[string]interface{})`

SetConditions sets Conditions field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


