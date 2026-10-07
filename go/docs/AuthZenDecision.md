# AuthZenDecision

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Decision** | Pointer to **bool** |  | [optional] 
**Context** | Pointer to [**EvaluateResponseContext**](EvaluateResponseContext.md) |  | [optional] 

## Methods

### NewAuthZenDecision

`func NewAuthZenDecision() *AuthZenDecision`

NewAuthZenDecision instantiates a new AuthZenDecision object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAuthZenDecisionWithDefaults

`func NewAuthZenDecisionWithDefaults() *AuthZenDecision`

NewAuthZenDecisionWithDefaults instantiates a new AuthZenDecision object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDecision

`func (o *AuthZenDecision) GetDecision() bool`

GetDecision returns the Decision field if non-nil, zero value otherwise.

### GetDecisionOk

`func (o *AuthZenDecision) GetDecisionOk() (*bool, bool)`

GetDecisionOk returns a tuple with the Decision field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDecision

`func (o *AuthZenDecision) SetDecision(v bool)`

SetDecision sets Decision field to given value.

### HasDecision

`func (o *AuthZenDecision) HasDecision() bool`

HasDecision returns a boolean if a field has been set.

### GetContext

`func (o *AuthZenDecision) GetContext() EvaluateResponseContext`

GetContext returns the Context field if non-nil, zero value otherwise.

### GetContextOk

`func (o *AuthZenDecision) GetContextOk() (*EvaluateResponseContext, bool)`

GetContextOk returns a tuple with the Context field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContext

`func (o *AuthZenDecision) SetContext(v EvaluateResponseContext)`

SetContext sets Context field to given value.

### HasContext

`func (o *AuthZenDecision) HasContext() bool`

HasContext returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


