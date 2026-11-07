# AdminAgentsReportUsageResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Recorded** | Pointer to [**AdminAgentsReportUsageResponseDataRecorded**](AdminAgentsReportUsageResponseDataRecorded.md) |  | [optional] 
**Budget** | Pointer to **map[string]interface{}** | Same shape as budget_policy in UserInfo: limits, usage in the current windows, exhausted. | [optional] 

## Methods

### NewAdminAgentsReportUsageResponseData

`func NewAdminAgentsReportUsageResponseData() *AdminAgentsReportUsageResponseData`

NewAdminAgentsReportUsageResponseData instantiates a new AdminAgentsReportUsageResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminAgentsReportUsageResponseDataWithDefaults

`func NewAdminAgentsReportUsageResponseDataWithDefaults() *AdminAgentsReportUsageResponseData`

NewAdminAgentsReportUsageResponseDataWithDefaults instantiates a new AdminAgentsReportUsageResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRecorded

`func (o *AdminAgentsReportUsageResponseData) GetRecorded() AdminAgentsReportUsageResponseDataRecorded`

GetRecorded returns the Recorded field if non-nil, zero value otherwise.

### GetRecordedOk

`func (o *AdminAgentsReportUsageResponseData) GetRecordedOk() (*AdminAgentsReportUsageResponseDataRecorded, bool)`

GetRecordedOk returns a tuple with the Recorded field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecorded

`func (o *AdminAgentsReportUsageResponseData) SetRecorded(v AdminAgentsReportUsageResponseDataRecorded)`

SetRecorded sets Recorded field to given value.

### HasRecorded

`func (o *AdminAgentsReportUsageResponseData) HasRecorded() bool`

HasRecorded returns a boolean if a field has been set.

### GetBudget

`func (o *AdminAgentsReportUsageResponseData) GetBudget() map[string]interface{}`

GetBudget returns the Budget field if non-nil, zero value otherwise.

### GetBudgetOk

`func (o *AdminAgentsReportUsageResponseData) GetBudgetOk() (*map[string]interface{}, bool)`

GetBudgetOk returns a tuple with the Budget field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBudget

`func (o *AdminAgentsReportUsageResponseData) SetBudget(v map[string]interface{})`

SetBudget sets Budget field to given value.

### HasBudget

`func (o *AdminAgentsReportUsageResponseData) HasBudget() bool`

HasBudget returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


