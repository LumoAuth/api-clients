# CreateApprovalRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TaskId** | Pointer to **string** | Agent task identifier (&lt;&#x3D;128 chars). | [optional] 
**Reason** | Pointer to **string** | Human-readable action description (&lt;&#x3D;480 chars). | [optional] 
**Impact** | Pointer to **string** | One of low, medium, high, critical. | [optional] 
**OnBehalfOf** | Pointer to **string** | User id or email the agent acts for (delegation required). When it is the agent&#39;s owner, the request also goes to the organization&#39;s Slack and Discord approval channels that have agent approvals switched on. | [optional] 
**ExpiresIn** | Pointer to **int32** | Seconds the person has to answer (60-600, default 120). An integer outside the range is clamped. | [optional] [default to 120]
**Meta** | Pointer to [**CreateApprovalRequestMeta**](CreateApprovalRequestMeta.md) |  | [optional] 

## Methods

### NewCreateApprovalRequest

`func NewCreateApprovalRequest() *CreateApprovalRequest`

NewCreateApprovalRequest instantiates a new CreateApprovalRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCreateApprovalRequestWithDefaults

`func NewCreateApprovalRequestWithDefaults() *CreateApprovalRequest`

NewCreateApprovalRequestWithDefaults instantiates a new CreateApprovalRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTaskId

`func (o *CreateApprovalRequest) GetTaskId() string`

GetTaskId returns the TaskId field if non-nil, zero value otherwise.

### GetTaskIdOk

`func (o *CreateApprovalRequest) GetTaskIdOk() (*string, bool)`

GetTaskIdOk returns a tuple with the TaskId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTaskId

`func (o *CreateApprovalRequest) SetTaskId(v string)`

SetTaskId sets TaskId field to given value.

### HasTaskId

`func (o *CreateApprovalRequest) HasTaskId() bool`

HasTaskId returns a boolean if a field has been set.

### GetReason

`func (o *CreateApprovalRequest) GetReason() string`

GetReason returns the Reason field if non-nil, zero value otherwise.

### GetReasonOk

`func (o *CreateApprovalRequest) GetReasonOk() (*string, bool)`

GetReasonOk returns a tuple with the Reason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReason

`func (o *CreateApprovalRequest) SetReason(v string)`

SetReason sets Reason field to given value.

### HasReason

`func (o *CreateApprovalRequest) HasReason() bool`

HasReason returns a boolean if a field has been set.

### GetImpact

`func (o *CreateApprovalRequest) GetImpact() string`

GetImpact returns the Impact field if non-nil, zero value otherwise.

### GetImpactOk

`func (o *CreateApprovalRequest) GetImpactOk() (*string, bool)`

GetImpactOk returns a tuple with the Impact field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImpact

`func (o *CreateApprovalRequest) SetImpact(v string)`

SetImpact sets Impact field to given value.

### HasImpact

`func (o *CreateApprovalRequest) HasImpact() bool`

HasImpact returns a boolean if a field has been set.

### GetOnBehalfOf

`func (o *CreateApprovalRequest) GetOnBehalfOf() string`

GetOnBehalfOf returns the OnBehalfOf field if non-nil, zero value otherwise.

### GetOnBehalfOfOk

`func (o *CreateApprovalRequest) GetOnBehalfOfOk() (*string, bool)`

GetOnBehalfOfOk returns a tuple with the OnBehalfOf field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOnBehalfOf

`func (o *CreateApprovalRequest) SetOnBehalfOf(v string)`

SetOnBehalfOf sets OnBehalfOf field to given value.

### HasOnBehalfOf

`func (o *CreateApprovalRequest) HasOnBehalfOf() bool`

HasOnBehalfOf returns a boolean if a field has been set.

### GetExpiresIn

`func (o *CreateApprovalRequest) GetExpiresIn() int32`

GetExpiresIn returns the ExpiresIn field if non-nil, zero value otherwise.

### GetExpiresInOk

`func (o *CreateApprovalRequest) GetExpiresInOk() (*int32, bool)`

GetExpiresInOk returns a tuple with the ExpiresIn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresIn

`func (o *CreateApprovalRequest) SetExpiresIn(v int32)`

SetExpiresIn sets ExpiresIn field to given value.

### HasExpiresIn

`func (o *CreateApprovalRequest) HasExpiresIn() bool`

HasExpiresIn returns a boolean if a field has been set.

### GetMeta

`func (o *CreateApprovalRequest) GetMeta() CreateApprovalRequestMeta`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *CreateApprovalRequest) GetMetaOk() (*CreateApprovalRequestMeta, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *CreateApprovalRequest) SetMeta(v CreateApprovalRequestMeta)`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *CreateApprovalRequest) HasMeta() bool`

HasMeta returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


