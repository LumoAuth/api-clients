# PoppyTasksResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExcludedTasks** | Pointer to [**[]PoppyTasksResponseExcludedTasksInner**](PoppyTasksResponseExcludedTasksInner.md) |  | [optional] 
**SkillIndex** | Pointer to **map[string]interface{}** |  | [optional] 
**Feedback** | Pointer to [**PoppyDocumentTasks**](PoppyDocumentTasks.md) |  | [optional] 

## Methods

### NewPoppyTasksResponse

`func NewPoppyTasksResponse() *PoppyTasksResponse`

NewPoppyTasksResponse instantiates a new PoppyTasksResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPoppyTasksResponseWithDefaults

`func NewPoppyTasksResponseWithDefaults() *PoppyTasksResponse`

NewPoppyTasksResponseWithDefaults instantiates a new PoppyTasksResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetExcludedTasks

`func (o *PoppyTasksResponse) GetExcludedTasks() []PoppyTasksResponseExcludedTasksInner`

GetExcludedTasks returns the ExcludedTasks field if non-nil, zero value otherwise.

### GetExcludedTasksOk

`func (o *PoppyTasksResponse) GetExcludedTasksOk() (*[]PoppyTasksResponseExcludedTasksInner, bool)`

GetExcludedTasksOk returns a tuple with the ExcludedTasks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExcludedTasks

`func (o *PoppyTasksResponse) SetExcludedTasks(v []PoppyTasksResponseExcludedTasksInner)`

SetExcludedTasks sets ExcludedTasks field to given value.

### HasExcludedTasks

`func (o *PoppyTasksResponse) HasExcludedTasks() bool`

HasExcludedTasks returns a boolean if a field has been set.

### GetSkillIndex

`func (o *PoppyTasksResponse) GetSkillIndex() map[string]interface{}`

GetSkillIndex returns the SkillIndex field if non-nil, zero value otherwise.

### GetSkillIndexOk

`func (o *PoppyTasksResponse) GetSkillIndexOk() (*map[string]interface{}, bool)`

GetSkillIndexOk returns a tuple with the SkillIndex field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkillIndex

`func (o *PoppyTasksResponse) SetSkillIndex(v map[string]interface{})`

SetSkillIndex sets SkillIndex field to given value.

### HasSkillIndex

`func (o *PoppyTasksResponse) HasSkillIndex() bool`

HasSkillIndex returns a boolean if a field has been set.

### GetFeedback

`func (o *PoppyTasksResponse) GetFeedback() PoppyDocumentTasks`

GetFeedback returns the Feedback field if non-nil, zero value otherwise.

### GetFeedbackOk

`func (o *PoppyTasksResponse) GetFeedbackOk() (*PoppyDocumentTasks, bool)`

GetFeedbackOk returns a tuple with the Feedback field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeedback

`func (o *PoppyTasksResponse) SetFeedback(v PoppyDocumentTasks)`

SetFeedback sets Feedback field to given value.

### HasFeedback

`func (o *PoppyTasksResponse) HasFeedback() bool`

HasFeedback returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


