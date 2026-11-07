# AdminAgentsReportUsageRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Tokens** | Pointer to **int32** | Model tokens used since the last report (input and output together). | [optional] 
**CostUsd** | Pointer to **float32** | Cost in USD since the last report. | [optional] 

## Methods

### NewAdminAgentsReportUsageRequest

`func NewAdminAgentsReportUsageRequest() *AdminAgentsReportUsageRequest`

NewAdminAgentsReportUsageRequest instantiates a new AdminAgentsReportUsageRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminAgentsReportUsageRequestWithDefaults

`func NewAdminAgentsReportUsageRequestWithDefaults() *AdminAgentsReportUsageRequest`

NewAdminAgentsReportUsageRequestWithDefaults instantiates a new AdminAgentsReportUsageRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTokens

`func (o *AdminAgentsReportUsageRequest) GetTokens() int32`

GetTokens returns the Tokens field if non-nil, zero value otherwise.

### GetTokensOk

`func (o *AdminAgentsReportUsageRequest) GetTokensOk() (*int32, bool)`

GetTokensOk returns a tuple with the Tokens field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokens

`func (o *AdminAgentsReportUsageRequest) SetTokens(v int32)`

SetTokens sets Tokens field to given value.

### HasTokens

`func (o *AdminAgentsReportUsageRequest) HasTokens() bool`

HasTokens returns a boolean if a field has been set.

### GetCostUsd

`func (o *AdminAgentsReportUsageRequest) GetCostUsd() float32`

GetCostUsd returns the CostUsd field if non-nil, zero value otherwise.

### GetCostUsdOk

`func (o *AdminAgentsReportUsageRequest) GetCostUsdOk() (*float32, bool)`

GetCostUsdOk returns a tuple with the CostUsd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCostUsd

`func (o *AdminAgentsReportUsageRequest) SetCostUsd(v float32)`

SetCostUsd sets CostUsd field to given value.

### HasCostUsd

`func (o *AdminAgentsReportUsageRequest) HasCostUsd() bool`

HasCostUsd returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


