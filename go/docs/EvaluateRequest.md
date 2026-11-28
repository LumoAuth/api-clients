# EvaluateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **map[string]interface{}** | {\&quot;type\&quot;, \&quot;id\&quot;, \&quot;properties\&quot;} | 
**Action** | **map[string]interface{}** | {\&quot;name\&quot;, \&quot;properties\&quot;} | 
**Resource** | **map[string]interface{}** | {\&quot;type\&quot;, \&quot;id\&quot;, \&quot;properties\&quot;} | 
**Context** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewEvaluateRequest

`func NewEvaluateRequest(subject map[string]interface{}, action map[string]interface{}, resource map[string]interface{}, ) *EvaluateRequest`

NewEvaluateRequest instantiates a new EvaluateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEvaluateRequestWithDefaults

`func NewEvaluateRequestWithDefaults() *EvaluateRequest`

NewEvaluateRequestWithDefaults instantiates a new EvaluateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSubject

`func (o *EvaluateRequest) GetSubject() map[string]interface{}`

GetSubject returns the Subject field if non-nil, zero value otherwise.

### GetSubjectOk

`func (o *EvaluateRequest) GetSubjectOk() (*map[string]interface{}, bool)`

GetSubjectOk returns a tuple with the Subject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubject

`func (o *EvaluateRequest) SetSubject(v map[string]interface{})`

SetSubject sets Subject field to given value.


### GetAction

`func (o *EvaluateRequest) GetAction() map[string]interface{}`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *EvaluateRequest) GetActionOk() (*map[string]interface{}, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *EvaluateRequest) SetAction(v map[string]interface{})`

SetAction sets Action field to given value.


### GetResource

`func (o *EvaluateRequest) GetResource() map[string]interface{}`

GetResource returns the Resource field if non-nil, zero value otherwise.

### GetResourceOk

`func (o *EvaluateRequest) GetResourceOk() (*map[string]interface{}, bool)`

GetResourceOk returns a tuple with the Resource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResource

`func (o *EvaluateRequest) SetResource(v map[string]interface{})`

SetResource sets Resource field to given value.


### GetContext

`func (o *EvaluateRequest) GetContext() map[string]interface{}`

GetContext returns the Context field if non-nil, zero value otherwise.

### GetContextOk

`func (o *EvaluateRequest) GetContextOk() (*map[string]interface{}, bool)`

GetContextOk returns a tuple with the Context field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContext

`func (o *EvaluateRequest) SetContext(v map[string]interface{})`

SetContext sets Context field to given value.

### HasContext

`func (o *EvaluateRequest) HasContext() bool`

HasContext returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


