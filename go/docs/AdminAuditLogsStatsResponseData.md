# AdminAuditLogsStatsResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Total** | Pointer to **int32** |  | [optional] 
**Period** | Pointer to [**AdminAuditLogsStatsResponseDataPeriod**](AdminAuditLogsStatsResponseDataPeriod.md) |  | [optional] 
**ByEventType** | Pointer to **map[string]int32** | Top 10 event types by count | [optional] 
**ByAction** | Pointer to **map[string]int32** |  | [optional] 
**BySeverity** | Pointer to **map[string]int32** |  | [optional] 

## Methods

### NewAdminAuditLogsStatsResponseData

`func NewAdminAuditLogsStatsResponseData() *AdminAuditLogsStatsResponseData`

NewAdminAuditLogsStatsResponseData instantiates a new AdminAuditLogsStatsResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminAuditLogsStatsResponseDataWithDefaults

`func NewAdminAuditLogsStatsResponseDataWithDefaults() *AdminAuditLogsStatsResponseData`

NewAdminAuditLogsStatsResponseDataWithDefaults instantiates a new AdminAuditLogsStatsResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTotal

`func (o *AdminAuditLogsStatsResponseData) GetTotal() int32`

GetTotal returns the Total field if non-nil, zero value otherwise.

### GetTotalOk

`func (o *AdminAuditLogsStatsResponseData) GetTotalOk() (*int32, bool)`

GetTotalOk returns a tuple with the Total field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotal

`func (o *AdminAuditLogsStatsResponseData) SetTotal(v int32)`

SetTotal sets Total field to given value.

### HasTotal

`func (o *AdminAuditLogsStatsResponseData) HasTotal() bool`

HasTotal returns a boolean if a field has been set.

### GetPeriod

`func (o *AdminAuditLogsStatsResponseData) GetPeriod() AdminAuditLogsStatsResponseDataPeriod`

GetPeriod returns the Period field if non-nil, zero value otherwise.

### GetPeriodOk

`func (o *AdminAuditLogsStatsResponseData) GetPeriodOk() (*AdminAuditLogsStatsResponseDataPeriod, bool)`

GetPeriodOk returns a tuple with the Period field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriod

`func (o *AdminAuditLogsStatsResponseData) SetPeriod(v AdminAuditLogsStatsResponseDataPeriod)`

SetPeriod sets Period field to given value.

### HasPeriod

`func (o *AdminAuditLogsStatsResponseData) HasPeriod() bool`

HasPeriod returns a boolean if a field has been set.

### GetByEventType

`func (o *AdminAuditLogsStatsResponseData) GetByEventType() map[string]int32`

GetByEventType returns the ByEventType field if non-nil, zero value otherwise.

### GetByEventTypeOk

`func (o *AdminAuditLogsStatsResponseData) GetByEventTypeOk() (*map[string]int32, bool)`

GetByEventTypeOk returns a tuple with the ByEventType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetByEventType

`func (o *AdminAuditLogsStatsResponseData) SetByEventType(v map[string]int32)`

SetByEventType sets ByEventType field to given value.

### HasByEventType

`func (o *AdminAuditLogsStatsResponseData) HasByEventType() bool`

HasByEventType returns a boolean if a field has been set.

### GetByAction

`func (o *AdminAuditLogsStatsResponseData) GetByAction() map[string]int32`

GetByAction returns the ByAction field if non-nil, zero value otherwise.

### GetByActionOk

`func (o *AdminAuditLogsStatsResponseData) GetByActionOk() (*map[string]int32, bool)`

GetByActionOk returns a tuple with the ByAction field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetByAction

`func (o *AdminAuditLogsStatsResponseData) SetByAction(v map[string]int32)`

SetByAction sets ByAction field to given value.

### HasByAction

`func (o *AdminAuditLogsStatsResponseData) HasByAction() bool`

HasByAction returns a boolean if a field has been set.

### GetBySeverity

`func (o *AdminAuditLogsStatsResponseData) GetBySeverity() map[string]int32`

GetBySeverity returns the BySeverity field if non-nil, zero value otherwise.

### GetBySeverityOk

`func (o *AdminAuditLogsStatsResponseData) GetBySeverityOk() (*map[string]int32, bool)`

GetBySeverityOk returns a tuple with the BySeverity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBySeverity

`func (o *AdminAuditLogsStatsResponseData) SetBySeverity(v map[string]int32)`

SetBySeverity sets BySeverity field to given value.

### HasBySeverity

`func (o *AdminAuditLogsStatsResponseData) HasBySeverity() bool`

HasBySeverity returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


