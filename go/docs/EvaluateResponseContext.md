# EvaluateResponseContext

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**ReasonAdmin** | Pointer to [**EvaluateResponseContextReasonAdmin**](EvaluateResponseContextReasonAdmin.md) |  | [optional] 

## Methods

### NewEvaluateResponseContext

`func NewEvaluateResponseContext() *EvaluateResponseContext`

NewEvaluateResponseContext instantiates a new EvaluateResponseContext object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEvaluateResponseContextWithDefaults

`func NewEvaluateResponseContextWithDefaults() *EvaluateResponseContext`

NewEvaluateResponseContextWithDefaults instantiates a new EvaluateResponseContext object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *EvaluateResponseContext) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *EvaluateResponseContext) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *EvaluateResponseContext) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *EvaluateResponseContext) HasId() bool`

HasId returns a boolean if a field has been set.

### GetReasonAdmin

`func (o *EvaluateResponseContext) GetReasonAdmin() EvaluateResponseContextReasonAdmin`

GetReasonAdmin returns the ReasonAdmin field if non-nil, zero value otherwise.

### GetReasonAdminOk

`func (o *EvaluateResponseContext) GetReasonAdminOk() (*EvaluateResponseContextReasonAdmin, bool)`

GetReasonAdminOk returns a tuple with the ReasonAdmin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReasonAdmin

`func (o *EvaluateResponseContext) SetReasonAdmin(v EvaluateResponseContextReasonAdmin)`

SetReasonAdmin sets ReasonAdmin field to given value.

### HasReasonAdmin

`func (o *EvaluateResponseContext) HasReasonAdmin() bool`

HasReasonAdmin returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


