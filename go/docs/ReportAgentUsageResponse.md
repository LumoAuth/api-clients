# ReportAgentUsageResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Recorded** | Pointer to [**AdminAgentsReportUsageResponseDataRecorded**](AdminAgentsReportUsageResponseDataRecorded.md) |  | [optional] 
**Budget** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewReportAgentUsageResponse

`func NewReportAgentUsageResponse() *ReportAgentUsageResponse`

NewReportAgentUsageResponse instantiates a new ReportAgentUsageResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewReportAgentUsageResponseWithDefaults

`func NewReportAgentUsageResponseWithDefaults() *ReportAgentUsageResponse`

NewReportAgentUsageResponseWithDefaults instantiates a new ReportAgentUsageResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRecorded

`func (o *ReportAgentUsageResponse) GetRecorded() AdminAgentsReportUsageResponseDataRecorded`

GetRecorded returns the Recorded field if non-nil, zero value otherwise.

### GetRecordedOk

`func (o *ReportAgentUsageResponse) GetRecordedOk() (*AdminAgentsReportUsageResponseDataRecorded, bool)`

GetRecordedOk returns a tuple with the Recorded field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRecorded

`func (o *ReportAgentUsageResponse) SetRecorded(v AdminAgentsReportUsageResponseDataRecorded)`

SetRecorded sets Recorded field to given value.

### HasRecorded

`func (o *ReportAgentUsageResponse) HasRecorded() bool`

HasRecorded returns a boolean if a field has been set.

### GetBudget

`func (o *ReportAgentUsageResponse) GetBudget() map[string]interface{}`

GetBudget returns the Budget field if non-nil, zero value otherwise.

### GetBudgetOk

`func (o *ReportAgentUsageResponse) GetBudgetOk() (*map[string]interface{}, bool)`

GetBudgetOk returns a tuple with the Budget field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBudget

`func (o *ReportAgentUsageResponse) SetBudget(v map[string]interface{})`

SetBudget sets Budget field to given value.

### HasBudget

`func (o *ReportAgentUsageResponse) HasBudget() bool`

HasBudget returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


