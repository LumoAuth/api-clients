# CreateTaskRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** | Optional human-readable task name. | [optional] 
**Type** | Pointer to **string** | Optional task type for categorization. | [optional] 
**ParentTaskId** | Pointer to **string** | Optional parent task id for nested agent chains. | [optional] 
**OnBehalfOf** | Pointer to **string** | Optional delegation user email (requires delegation permission). | [optional] 

## Methods

### NewCreateTaskRequest

`func NewCreateTaskRequest() *CreateTaskRequest`

NewCreateTaskRequest instantiates a new CreateTaskRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCreateTaskRequestWithDefaults

`func NewCreateTaskRequestWithDefaults() *CreateTaskRequest`

NewCreateTaskRequestWithDefaults instantiates a new CreateTaskRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *CreateTaskRequest) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *CreateTaskRequest) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *CreateTaskRequest) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *CreateTaskRequest) HasName() bool`

HasName returns a boolean if a field has been set.

### GetType

`func (o *CreateTaskRequest) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *CreateTaskRequest) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *CreateTaskRequest) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *CreateTaskRequest) HasType() bool`

HasType returns a boolean if a field has been set.

### GetParentTaskId

`func (o *CreateTaskRequest) GetParentTaskId() string`

GetParentTaskId returns the ParentTaskId field if non-nil, zero value otherwise.

### GetParentTaskIdOk

`func (o *CreateTaskRequest) GetParentTaskIdOk() (*string, bool)`

GetParentTaskIdOk returns a tuple with the ParentTaskId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParentTaskId

`func (o *CreateTaskRequest) SetParentTaskId(v string)`

SetParentTaskId sets ParentTaskId field to given value.

### HasParentTaskId

`func (o *CreateTaskRequest) HasParentTaskId() bool`

HasParentTaskId returns a boolean if a field has been set.

### GetOnBehalfOf

`func (o *CreateTaskRequest) GetOnBehalfOf() string`

GetOnBehalfOf returns the OnBehalfOf field if non-nil, zero value otherwise.

### GetOnBehalfOfOk

`func (o *CreateTaskRequest) GetOnBehalfOfOk() (*string, bool)`

GetOnBehalfOfOk returns a tuple with the OnBehalfOf field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOnBehalfOf

`func (o *CreateTaskRequest) SetOnBehalfOf(v string)`

SetOnBehalfOf sets OnBehalfOf field to given value.

### HasOnBehalfOf

`func (o *CreateTaskRequest) HasOnBehalfOf() bool`

HasOnBehalfOf returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


