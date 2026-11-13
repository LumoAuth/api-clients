# AdminAuditLogsRetentionResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RetentionDays** | Pointer to **int32** | The organization&#39;s own period, between minRetentionDays and maxRetentionDays. It applies while data retention is on and autoDelete is not false. | [optional] 
**AutoDelete** | Pointer to **bool** | false switches the organization&#39;s own period off; the plan&#39;s period still applies | [optional] 
**PlanLimitDays** | Pointer to **NullableInt32** | The plan&#39;s period: older entries are not returned and are deleted. null when the plan has no limit. | [optional] 
**EffectiveRetentionDays** | Pointer to **NullableInt32** | How long entries are kept now; null when nothing is deleted | [optional] 
**MinRetentionDays** | Pointer to **int32** |  | [optional] 
**MaxRetentionDays** | Pointer to **int32** |  | [optional] 

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
### GetEffectiveRetentionDays

`func (o *AdminAuditLogsRetentionResponseData) GetEffectiveRetentionDays() int32`

GetEffectiveRetentionDays returns the EffectiveRetentionDays field if non-nil, zero value otherwise.

### GetEffectiveRetentionDaysOk

`func (o *AdminAuditLogsRetentionResponseData) GetEffectiveRetentionDaysOk() (*int32, bool)`

GetEffectiveRetentionDaysOk returns a tuple with the EffectiveRetentionDays field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEffectiveRetentionDays

`func (o *AdminAuditLogsRetentionResponseData) SetEffectiveRetentionDays(v int32)`

SetEffectiveRetentionDays sets EffectiveRetentionDays field to given value.

### HasEffectiveRetentionDays

`func (o *AdminAuditLogsRetentionResponseData) HasEffectiveRetentionDays() bool`

HasEffectiveRetentionDays returns a boolean if a field has been set.

### SetEffectiveRetentionDaysNil

`func (o *AdminAuditLogsRetentionResponseData) SetEffectiveRetentionDaysNil(b bool)`

 SetEffectiveRetentionDaysNil sets the value for EffectiveRetentionDays to be an explicit nil

### UnsetEffectiveRetentionDays
`func (o *AdminAuditLogsRetentionResponseData) UnsetEffectiveRetentionDays()`

UnsetEffectiveRetentionDays ensures that no value is present for EffectiveRetentionDays, not even an explicit nil
### GetMinRetentionDays

`func (o *AdminAuditLogsRetentionResponseData) GetMinRetentionDays() int32`

GetMinRetentionDays returns the MinRetentionDays field if non-nil, zero value otherwise.

### GetMinRetentionDaysOk

`func (o *AdminAuditLogsRetentionResponseData) GetMinRetentionDaysOk() (*int32, bool)`

GetMinRetentionDaysOk returns a tuple with the MinRetentionDays field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinRetentionDays

`func (o *AdminAuditLogsRetentionResponseData) SetMinRetentionDays(v int32)`

SetMinRetentionDays sets MinRetentionDays field to given value.

### HasMinRetentionDays

`func (o *AdminAuditLogsRetentionResponseData) HasMinRetentionDays() bool`

HasMinRetentionDays returns a boolean if a field has been set.

### GetMaxRetentionDays

`func (o *AdminAuditLogsRetentionResponseData) GetMaxRetentionDays() int32`

GetMaxRetentionDays returns the MaxRetentionDays field if non-nil, zero value otherwise.

### GetMaxRetentionDaysOk

`func (o *AdminAuditLogsRetentionResponseData) GetMaxRetentionDaysOk() (*int32, bool)`

GetMaxRetentionDaysOk returns a tuple with the MaxRetentionDays field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxRetentionDays

`func (o *AdminAuditLogsRetentionResponseData) SetMaxRetentionDays(v int32)`

SetMaxRetentionDays sets MaxRetentionDays field to given value.

### HasMaxRetentionDays

`func (o *AdminAuditLogsRetentionResponseData) HasMaxRetentionDays() bool`

HasMaxRetentionDays returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


