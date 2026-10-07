# GetApprovalStatusResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApprovalToken** | Pointer to **string** |  | [optional] 
**Status** | Pointer to **string** |  | [optional] 
**TaskId** | Pointer to **string** |  | [optional] 
**Impact** | Pointer to **string** |  | [optional] 
**Reason** | Pointer to **string** |  | [optional] 
**RespondedAt** | Pointer to **time.Time** |  | [optional] 
**ApprovedBy** | Pointer to [**GetApprovalStatusResponseApprovedBy**](GetApprovalStatusResponseApprovedBy.md) |  | [optional] 

## Methods

### NewGetApprovalStatusResponse

`func NewGetApprovalStatusResponse() *GetApprovalStatusResponse`

NewGetApprovalStatusResponse instantiates a new GetApprovalStatusResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetApprovalStatusResponseWithDefaults

`func NewGetApprovalStatusResponseWithDefaults() *GetApprovalStatusResponse`

NewGetApprovalStatusResponseWithDefaults instantiates a new GetApprovalStatusResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetApprovalToken

`func (o *GetApprovalStatusResponse) GetApprovalToken() string`

GetApprovalToken returns the ApprovalToken field if non-nil, zero value otherwise.

### GetApprovalTokenOk

`func (o *GetApprovalStatusResponse) GetApprovalTokenOk() (*string, bool)`

GetApprovalTokenOk returns a tuple with the ApprovalToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApprovalToken

`func (o *GetApprovalStatusResponse) SetApprovalToken(v string)`

SetApprovalToken sets ApprovalToken field to given value.

### HasApprovalToken

`func (o *GetApprovalStatusResponse) HasApprovalToken() bool`

HasApprovalToken returns a boolean if a field has been set.

### GetStatus

`func (o *GetApprovalStatusResponse) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *GetApprovalStatusResponse) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *GetApprovalStatusResponse) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *GetApprovalStatusResponse) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetTaskId

`func (o *GetApprovalStatusResponse) GetTaskId() string`

GetTaskId returns the TaskId field if non-nil, zero value otherwise.

### GetTaskIdOk

`func (o *GetApprovalStatusResponse) GetTaskIdOk() (*string, bool)`

GetTaskIdOk returns a tuple with the TaskId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTaskId

`func (o *GetApprovalStatusResponse) SetTaskId(v string)`

SetTaskId sets TaskId field to given value.

### HasTaskId

`func (o *GetApprovalStatusResponse) HasTaskId() bool`

HasTaskId returns a boolean if a field has been set.

### GetImpact

`func (o *GetApprovalStatusResponse) GetImpact() string`

GetImpact returns the Impact field if non-nil, zero value otherwise.

### GetImpactOk

`func (o *GetApprovalStatusResponse) GetImpactOk() (*string, bool)`

GetImpactOk returns a tuple with the Impact field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImpact

`func (o *GetApprovalStatusResponse) SetImpact(v string)`

SetImpact sets Impact field to given value.

### HasImpact

`func (o *GetApprovalStatusResponse) HasImpact() bool`

HasImpact returns a boolean if a field has been set.

### GetReason

`func (o *GetApprovalStatusResponse) GetReason() string`

GetReason returns the Reason field if non-nil, zero value otherwise.

### GetReasonOk

`func (o *GetApprovalStatusResponse) GetReasonOk() (*string, bool)`

GetReasonOk returns a tuple with the Reason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReason

`func (o *GetApprovalStatusResponse) SetReason(v string)`

SetReason sets Reason field to given value.

### HasReason

`func (o *GetApprovalStatusResponse) HasReason() bool`

HasReason returns a boolean if a field has been set.

### GetRespondedAt

`func (o *GetApprovalStatusResponse) GetRespondedAt() time.Time`

GetRespondedAt returns the RespondedAt field if non-nil, zero value otherwise.

### GetRespondedAtOk

`func (o *GetApprovalStatusResponse) GetRespondedAtOk() (*time.Time, bool)`

GetRespondedAtOk returns a tuple with the RespondedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRespondedAt

`func (o *GetApprovalStatusResponse) SetRespondedAt(v time.Time)`

SetRespondedAt sets RespondedAt field to given value.

### HasRespondedAt

`func (o *GetApprovalStatusResponse) HasRespondedAt() bool`

HasRespondedAt returns a boolean if a field has been set.

### GetApprovedBy

`func (o *GetApprovalStatusResponse) GetApprovedBy() GetApprovalStatusResponseApprovedBy`

GetApprovedBy returns the ApprovedBy field if non-nil, zero value otherwise.

### GetApprovedByOk

`func (o *GetApprovalStatusResponse) GetApprovedByOk() (*GetApprovalStatusResponseApprovedBy, bool)`

GetApprovedByOk returns a tuple with the ApprovedBy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApprovedBy

`func (o *GetApprovalStatusResponse) SetApprovedBy(v GetApprovalStatusResponseApprovedBy)`

SetApprovedBy sets ApprovedBy field to given value.

### HasApprovedBy

`func (o *GetApprovalStatusResponse) HasApprovedBy() bool`

HasApprovedBy returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


