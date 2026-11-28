# PutAdminAuditLogsRetentionUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RetentionDays** | **int32** | Days to keep audit entries: at least the shorter of 90 days and the plan window, at most the plan window. | 

## Methods

### NewPutAdminAuditLogsRetentionUpdateRequest

`func NewPutAdminAuditLogsRetentionUpdateRequest(retentionDays int32, ) *PutAdminAuditLogsRetentionUpdateRequest`

NewPutAdminAuditLogsRetentionUpdateRequest instantiates a new PutAdminAuditLogsRetentionUpdateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPutAdminAuditLogsRetentionUpdateRequestWithDefaults

`func NewPutAdminAuditLogsRetentionUpdateRequestWithDefaults() *PutAdminAuditLogsRetentionUpdateRequest`

NewPutAdminAuditLogsRetentionUpdateRequestWithDefaults instantiates a new PutAdminAuditLogsRetentionUpdateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRetentionDays

`func (o *PutAdminAuditLogsRetentionUpdateRequest) GetRetentionDays() int32`

GetRetentionDays returns the RetentionDays field if non-nil, zero value otherwise.

### GetRetentionDaysOk

`func (o *PutAdminAuditLogsRetentionUpdateRequest) GetRetentionDaysOk() (*int32, bool)`

GetRetentionDaysOk returns a tuple with the RetentionDays field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRetentionDays

`func (o *PutAdminAuditLogsRetentionUpdateRequest) SetRetentionDays(v int32)`

SetRetentionDays sets RetentionDays field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


