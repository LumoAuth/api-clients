# EvaluateBatchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | Pointer to **map[string]interface{}** | Default for every evaluation. | [optional] 
**Action** | Pointer to **map[string]interface{}** |  | [optional] 
**Resource** | Pointer to **map[string]interface{}** |  | [optional] 
**Context** | Pointer to **map[string]interface{}** |  | [optional] 
**Evaluations** | **[]map[string]interface{}** | Evaluation requests; each member overrides the defaults. | 

## Methods

### NewEvaluateBatchRequest

`func NewEvaluateBatchRequest(evaluations []map[string]interface{}, ) *EvaluateBatchRequest`

NewEvaluateBatchRequest instantiates a new EvaluateBatchRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEvaluateBatchRequestWithDefaults

`func NewEvaluateBatchRequestWithDefaults() *EvaluateBatchRequest`

NewEvaluateBatchRequestWithDefaults instantiates a new EvaluateBatchRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSubject

`func (o *EvaluateBatchRequest) GetSubject() map[string]interface{}`

GetSubject returns the Subject field if non-nil, zero value otherwise.

### GetSubjectOk

`func (o *EvaluateBatchRequest) GetSubjectOk() (*map[string]interface{}, bool)`

GetSubjectOk returns a tuple with the Subject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubject

`func (o *EvaluateBatchRequest) SetSubject(v map[string]interface{})`

SetSubject sets Subject field to given value.

### HasSubject

`func (o *EvaluateBatchRequest) HasSubject() bool`

HasSubject returns a boolean if a field has been set.

### GetAction

`func (o *EvaluateBatchRequest) GetAction() map[string]interface{}`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *EvaluateBatchRequest) GetActionOk() (*map[string]interface{}, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *EvaluateBatchRequest) SetAction(v map[string]interface{})`

SetAction sets Action field to given value.

### HasAction

`func (o *EvaluateBatchRequest) HasAction() bool`

HasAction returns a boolean if a field has been set.

### GetResource

`func (o *EvaluateBatchRequest) GetResource() map[string]interface{}`

GetResource returns the Resource field if non-nil, zero value otherwise.

### GetResourceOk

`func (o *EvaluateBatchRequest) GetResourceOk() (*map[string]interface{}, bool)`

GetResourceOk returns a tuple with the Resource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResource

`func (o *EvaluateBatchRequest) SetResource(v map[string]interface{})`

SetResource sets Resource field to given value.

### HasResource

`func (o *EvaluateBatchRequest) HasResource() bool`

HasResource returns a boolean if a field has been set.

### GetContext

`func (o *EvaluateBatchRequest) GetContext() map[string]interface{}`

GetContext returns the Context field if non-nil, zero value otherwise.

### GetContextOk

`func (o *EvaluateBatchRequest) GetContextOk() (*map[string]interface{}, bool)`

GetContextOk returns a tuple with the Context field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContext

`func (o *EvaluateBatchRequest) SetContext(v map[string]interface{})`

SetContext sets Context field to given value.

### HasContext

`func (o *EvaluateBatchRequest) HasContext() bool`

HasContext returns a boolean if a field has been set.

### GetEvaluations

`func (o *EvaluateBatchRequest) GetEvaluations() []map[string]interface{}`

GetEvaluations returns the Evaluations field if non-nil, zero value otherwise.

### GetEvaluationsOk

`func (o *EvaluateBatchRequest) GetEvaluationsOk() (*[]map[string]interface{}, bool)`

GetEvaluationsOk returns a tuple with the Evaluations field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvaluations

`func (o *EvaluateBatchRequest) SetEvaluations(v []map[string]interface{})`

SetEvaluations sets Evaluations field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


