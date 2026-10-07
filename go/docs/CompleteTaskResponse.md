# CompleteTaskResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TaskId** | Pointer to **string** |  | [optional] 
**Status** | Pointer to **string** |  | [optional] 
**CompletedAt** | Pointer to **time.Time** |  | [optional] 

## Methods

### NewCompleteTaskResponse

`func NewCompleteTaskResponse() *CompleteTaskResponse`

NewCompleteTaskResponse instantiates a new CompleteTaskResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCompleteTaskResponseWithDefaults

`func NewCompleteTaskResponseWithDefaults() *CompleteTaskResponse`

NewCompleteTaskResponseWithDefaults instantiates a new CompleteTaskResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTaskId

`func (o *CompleteTaskResponse) GetTaskId() string`

GetTaskId returns the TaskId field if non-nil, zero value otherwise.

### GetTaskIdOk

`func (o *CompleteTaskResponse) GetTaskIdOk() (*string, bool)`

GetTaskIdOk returns a tuple with the TaskId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTaskId

`func (o *CompleteTaskResponse) SetTaskId(v string)`

SetTaskId sets TaskId field to given value.

### HasTaskId

`func (o *CompleteTaskResponse) HasTaskId() bool`

HasTaskId returns a boolean if a field has been set.

### GetStatus

`func (o *CompleteTaskResponse) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *CompleteTaskResponse) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *CompleteTaskResponse) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *CompleteTaskResponse) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetCompletedAt

`func (o *CompleteTaskResponse) GetCompletedAt() time.Time`

GetCompletedAt returns the CompletedAt field if non-nil, zero value otherwise.

### GetCompletedAtOk

`func (o *CompleteTaskResponse) GetCompletedAtOk() (*time.Time, bool)`

GetCompletedAtOk returns a tuple with the CompletedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCompletedAt

`func (o *CompleteTaskResponse) SetCompletedAt(v time.Time)`

SetCompletedAt sets CompletedAt field to given value.

### HasCompletedAt

`func (o *CompleteTaskResponse) HasCompletedAt() bool`

HasCompletedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


