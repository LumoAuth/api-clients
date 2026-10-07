# CreateTaskResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TaskId** | Pointer to **string** |  | [optional] 
**CaepSessionId** | Pointer to **string** |  | [optional] 
**ExpiresAt** | Pointer to **time.Time** |  | [optional] 
**AgentId** | Pointer to **string** |  | [optional] 
**Agent** | Pointer to **map[string]interface{}** |  | [optional] 
**OnBehalfOf** | Pointer to **string** |  | [optional] 

## Methods

### NewCreateTaskResponse

`func NewCreateTaskResponse() *CreateTaskResponse`

NewCreateTaskResponse instantiates a new CreateTaskResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCreateTaskResponseWithDefaults

`func NewCreateTaskResponseWithDefaults() *CreateTaskResponse`

NewCreateTaskResponseWithDefaults instantiates a new CreateTaskResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTaskId

`func (o *CreateTaskResponse) GetTaskId() string`

GetTaskId returns the TaskId field if non-nil, zero value otherwise.

### GetTaskIdOk

`func (o *CreateTaskResponse) GetTaskIdOk() (*string, bool)`

GetTaskIdOk returns a tuple with the TaskId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTaskId

`func (o *CreateTaskResponse) SetTaskId(v string)`

SetTaskId sets TaskId field to given value.

### HasTaskId

`func (o *CreateTaskResponse) HasTaskId() bool`

HasTaskId returns a boolean if a field has been set.

### GetCaepSessionId

`func (o *CreateTaskResponse) GetCaepSessionId() string`

GetCaepSessionId returns the CaepSessionId field if non-nil, zero value otherwise.

### GetCaepSessionIdOk

`func (o *CreateTaskResponse) GetCaepSessionIdOk() (*string, bool)`

GetCaepSessionIdOk returns a tuple with the CaepSessionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCaepSessionId

`func (o *CreateTaskResponse) SetCaepSessionId(v string)`

SetCaepSessionId sets CaepSessionId field to given value.

### HasCaepSessionId

`func (o *CreateTaskResponse) HasCaepSessionId() bool`

HasCaepSessionId returns a boolean if a field has been set.

### GetExpiresAt

`func (o *CreateTaskResponse) GetExpiresAt() time.Time`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *CreateTaskResponse) GetExpiresAtOk() (*time.Time, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *CreateTaskResponse) SetExpiresAt(v time.Time)`

SetExpiresAt sets ExpiresAt field to given value.

### HasExpiresAt

`func (o *CreateTaskResponse) HasExpiresAt() bool`

HasExpiresAt returns a boolean if a field has been set.

### GetAgentId

`func (o *CreateTaskResponse) GetAgentId() string`

GetAgentId returns the AgentId field if non-nil, zero value otherwise.

### GetAgentIdOk

`func (o *CreateTaskResponse) GetAgentIdOk() (*string, bool)`

GetAgentIdOk returns a tuple with the AgentId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentId

`func (o *CreateTaskResponse) SetAgentId(v string)`

SetAgentId sets AgentId field to given value.

### HasAgentId

`func (o *CreateTaskResponse) HasAgentId() bool`

HasAgentId returns a boolean if a field has been set.

### GetAgent

`func (o *CreateTaskResponse) GetAgent() map[string]interface{}`

GetAgent returns the Agent field if non-nil, zero value otherwise.

### GetAgentOk

`func (o *CreateTaskResponse) GetAgentOk() (*map[string]interface{}, bool)`

GetAgentOk returns a tuple with the Agent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgent

`func (o *CreateTaskResponse) SetAgent(v map[string]interface{})`

SetAgent sets Agent field to given value.

### HasAgent

`func (o *CreateTaskResponse) HasAgent() bool`

HasAgent returns a boolean if a field has been set.

### GetOnBehalfOf

`func (o *CreateTaskResponse) GetOnBehalfOf() string`

GetOnBehalfOf returns the OnBehalfOf field if non-nil, zero value otherwise.

### GetOnBehalfOfOk

`func (o *CreateTaskResponse) GetOnBehalfOfOk() (*string, bool)`

GetOnBehalfOfOk returns a tuple with the OnBehalfOf field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOnBehalfOf

`func (o *CreateTaskResponse) SetOnBehalfOf(v string)`

SetOnBehalfOf sets OnBehalfOf field to given value.

### HasOnBehalfOf

`func (o *CreateTaskResponse) HasOnBehalfOf() bool`

HasOnBehalfOf returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


