# IssueTemporaryAccessCodeRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Reason** | **string** |  | 
**TtlMinutes** | Pointer to **int32** |  | [optional] [default to 60]
**SingleUse** | Pointer to **bool** |  | [optional] [default to true]

## Methods

### NewIssueTemporaryAccessCodeRequest

`func NewIssueTemporaryAccessCodeRequest(reason string, ) *IssueTemporaryAccessCodeRequest`

NewIssueTemporaryAccessCodeRequest instantiates a new IssueTemporaryAccessCodeRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewIssueTemporaryAccessCodeRequestWithDefaults

`func NewIssueTemporaryAccessCodeRequestWithDefaults() *IssueTemporaryAccessCodeRequest`

NewIssueTemporaryAccessCodeRequestWithDefaults instantiates a new IssueTemporaryAccessCodeRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetReason

`func (o *IssueTemporaryAccessCodeRequest) GetReason() string`

GetReason returns the Reason field if non-nil, zero value otherwise.

### GetReasonOk

`func (o *IssueTemporaryAccessCodeRequest) GetReasonOk() (*string, bool)`

GetReasonOk returns a tuple with the Reason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReason

`func (o *IssueTemporaryAccessCodeRequest) SetReason(v string)`

SetReason sets Reason field to given value.


### GetTtlMinutes

`func (o *IssueTemporaryAccessCodeRequest) GetTtlMinutes() int32`

GetTtlMinutes returns the TtlMinutes field if non-nil, zero value otherwise.

### GetTtlMinutesOk

`func (o *IssueTemporaryAccessCodeRequest) GetTtlMinutesOk() (*int32, bool)`

GetTtlMinutesOk returns a tuple with the TtlMinutes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTtlMinutes

`func (o *IssueTemporaryAccessCodeRequest) SetTtlMinutes(v int32)`

SetTtlMinutes sets TtlMinutes field to given value.

### HasTtlMinutes

`func (o *IssueTemporaryAccessCodeRequest) HasTtlMinutes() bool`

HasTtlMinutes returns a boolean if a field has been set.

### GetSingleUse

`func (o *IssueTemporaryAccessCodeRequest) GetSingleUse() bool`

GetSingleUse returns the SingleUse field if non-nil, zero value otherwise.

### GetSingleUseOk

`func (o *IssueTemporaryAccessCodeRequest) GetSingleUseOk() (*bool, bool)`

GetSingleUseOk returns a tuple with the SingleUse field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSingleUse

`func (o *IssueTemporaryAccessCodeRequest) SetSingleUse(v bool)`

SetSingleUse sets SingleUse field to given value.

### HasSingleUse

`func (o *IssueTemporaryAccessCodeRequest) HasSingleUse() bool`

HasSingleUse returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


