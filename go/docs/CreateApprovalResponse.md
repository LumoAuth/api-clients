# CreateApprovalResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApprovalToken** | Pointer to **string** |  | [optional] 
**Status** | Pointer to **string** |  | [optional] 
**ExpiresAt** | Pointer to **time.Time** |  | [optional] 
**TaskId** | Pointer to **string** |  | [optional] 
**Impact** | Pointer to **string** |  | [optional] 

## Methods

### NewCreateApprovalResponse

`func NewCreateApprovalResponse() *CreateApprovalResponse`

NewCreateApprovalResponse instantiates a new CreateApprovalResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCreateApprovalResponseWithDefaults

`func NewCreateApprovalResponseWithDefaults() *CreateApprovalResponse`

NewCreateApprovalResponseWithDefaults instantiates a new CreateApprovalResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetApprovalToken

`func (o *CreateApprovalResponse) GetApprovalToken() string`

GetApprovalToken returns the ApprovalToken field if non-nil, zero value otherwise.

### GetApprovalTokenOk

`func (o *CreateApprovalResponse) GetApprovalTokenOk() (*string, bool)`

GetApprovalTokenOk returns a tuple with the ApprovalToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApprovalToken

`func (o *CreateApprovalResponse) SetApprovalToken(v string)`

SetApprovalToken sets ApprovalToken field to given value.

### HasApprovalToken

`func (o *CreateApprovalResponse) HasApprovalToken() bool`

HasApprovalToken returns a boolean if a field has been set.

### GetStatus

`func (o *CreateApprovalResponse) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *CreateApprovalResponse) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *CreateApprovalResponse) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *CreateApprovalResponse) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetExpiresAt

`func (o *CreateApprovalResponse) GetExpiresAt() time.Time`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *CreateApprovalResponse) GetExpiresAtOk() (*time.Time, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *CreateApprovalResponse) SetExpiresAt(v time.Time)`

SetExpiresAt sets ExpiresAt field to given value.

### HasExpiresAt

`func (o *CreateApprovalResponse) HasExpiresAt() bool`

HasExpiresAt returns a boolean if a field has been set.

### GetTaskId

`func (o *CreateApprovalResponse) GetTaskId() string`

GetTaskId returns the TaskId field if non-nil, zero value otherwise.

### GetTaskIdOk

`func (o *CreateApprovalResponse) GetTaskIdOk() (*string, bool)`

GetTaskIdOk returns a tuple with the TaskId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTaskId

`func (o *CreateApprovalResponse) SetTaskId(v string)`

SetTaskId sets TaskId field to given value.

### HasTaskId

`func (o *CreateApprovalResponse) HasTaskId() bool`

HasTaskId returns a boolean if a field has been set.

### GetImpact

`func (o *CreateApprovalResponse) GetImpact() string`

GetImpact returns the Impact field if non-nil, zero value otherwise.

### GetImpactOk

`func (o *CreateApprovalResponse) GetImpactOk() (*string, bool)`

GetImpactOk returns a tuple with the Impact field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImpact

`func (o *CreateApprovalResponse) SetImpact(v string)`

SetImpact sets Impact field to given value.

### HasImpact

`func (o *CreateApprovalResponse) HasImpact() bool`

HasImpact returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


