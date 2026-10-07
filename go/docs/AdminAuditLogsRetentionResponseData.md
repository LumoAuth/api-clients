# AdminAuditLogsRetentionResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RetentionDays** | Pointer to **int32** | Effective retention, capped by the plan limit | [optional] 
**AutoDelete** | Pointer to **bool** |  | [optional] 
**PlanLimitDays** | Pointer to **NullableInt32** | Plan cap; null when unlimited or billing enforcement is off | [optional] 

## Methods

### NewAdminAuditLogsRetentionResponseData

`func NewAdminAuditLogsRetentionResponseData() *AdminAuditLogsRetentionResponseData`

NewAdminAuditLogsRetentionResponseData instantiates a new AdminAuditLogsRetentionResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminAuditLogsRetentionResponseDataWithDefaults

`func NewAdminAuditLogsRetentionResponseDataWithDefaults() *AdminAuditLogsRetentionResponseData`

NewAdminAuditLogsRetentionResponseDataWithDefaults instantiates a new AdminAuditLogsRetentionResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRetentionDays

`func (o *AdminAuditLogsRetentionResponseData) GetRetentionDays() int32`

GetRetentionDays returns the RetentionDays field if non-nil, zero value otherwise.

### GetRetentionDaysOk

`func (o *AdminAuditLogsRetentionResponseData) GetRetentionDaysOk() (*int32, bool)`

GetRetentionDaysOk returns a tuple with the RetentionDays field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRetentionDays

`func (o *AdminAuditLogsRetentionResponseData) SetRetentionDays(v int32)`

SetRetentionDays sets RetentionDays field to given value.

### HasRetentionDays

`func (o *AdminAuditLogsRetentionResponseData) HasRetentionDays() bool`

HasRetentionDays returns a boolean if a field has been set.

### GetAutoDelete

`func (o *AdminAuditLogsRetentionResponseData) GetAutoDelete() bool`

GetAutoDelete returns the AutoDelete field if non-nil, zero value otherwise.

### GetAutoDeleteOk

`func (o *AdminAuditLogsRetentionResponseData) GetAutoDeleteOk() (*bool, bool)`

GetAutoDeleteOk returns a tuple with the AutoDelete field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAutoDelete

`func (o *AdminAuditLogsRetentionResponseData) SetAutoDelete(v bool)`

SetAutoDelete sets AutoDelete field to given value.

### HasAutoDelete

`func (o *AdminAuditLogsRetentionResponseData) HasAutoDelete() bool`

HasAutoDelete returns a boolean if a field has been set.

### GetPlanLimitDays

`func (o *AdminAuditLogsRetentionResponseData) GetPlanLimitDays() int32`

GetPlanLimitDays returns the PlanLimitDays field if non-nil, zero value otherwise.

### GetPlanLimitDaysOk

`func (o *AdminAuditLogsRetentionResponseData) GetPlanLimitDaysOk() (*int32, bool)`

GetPlanLimitDaysOk returns a tuple with the PlanLimitDays field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPlanLimitDays

`func (o *AdminAuditLogsRetentionResponseData) SetPlanLimitDays(v int32)`

SetPlanLimitDays sets PlanLimitDays field to given value.

### HasPlanLimitDays

`func (o *AdminAuditLogsRetentionResponseData) HasPlanLimitDays() bool`

HasPlanLimitDays returns a boolean if a field has been set.

### SetPlanLimitDaysNil

`func (o *AdminAuditLogsRetentionResponseData) SetPlanLimitDaysNil(b bool)`

 SetPlanLimitDaysNil sets the value for PlanLimitDays to be an explicit nil

### UnsetPlanLimitDays
`func (o *AdminAuditLogsRetentionResponseData) UnsetPlanLimitDays()`

UnsetPlanLimitDays ensures that no value is present for PlanLimitDays, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


