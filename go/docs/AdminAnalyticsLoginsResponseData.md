# AdminAnalyticsLoginsResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Daily** | Pointer to [**[]AdminAnalyticsLoginsResponseDataDailyItem**](AdminAnalyticsLoginsResponseDataDailyItem.md) | One row per calendar day with at least one login attempt, ascending. | [optional] 
**Period** | Pointer to [**AdminAnalyticsLoginsResponseDataPeriod**](AdminAnalyticsLoginsResponseDataPeriod.md) |  | [optional] 

## Methods

### NewAdminAnalyticsLoginsResponseData

`func NewAdminAnalyticsLoginsResponseData() *AdminAnalyticsLoginsResponseData`

NewAdminAnalyticsLoginsResponseData instantiates a new AdminAnalyticsLoginsResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminAnalyticsLoginsResponseDataWithDefaults

`func NewAdminAnalyticsLoginsResponseDataWithDefaults() *AdminAnalyticsLoginsResponseData`

NewAdminAnalyticsLoginsResponseDataWithDefaults instantiates a new AdminAnalyticsLoginsResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDaily

`func (o *AdminAnalyticsLoginsResponseData) GetDaily() []AdminAnalyticsLoginsResponseDataDailyItem`

GetDaily returns the Daily field if non-nil, zero value otherwise.

### GetDailyOk

`func (o *AdminAnalyticsLoginsResponseData) GetDailyOk() (*[]AdminAnalyticsLoginsResponseDataDailyItem, bool)`

GetDailyOk returns a tuple with the Daily field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDaily

`func (o *AdminAnalyticsLoginsResponseData) SetDaily(v []AdminAnalyticsLoginsResponseDataDailyItem)`

SetDaily sets Daily field to given value.

### HasDaily

`func (o *AdminAnalyticsLoginsResponseData) HasDaily() bool`

HasDaily returns a boolean if a field has been set.

### GetPeriod

`func (o *AdminAnalyticsLoginsResponseData) GetPeriod() AdminAnalyticsLoginsResponseDataPeriod`

GetPeriod returns the Period field if non-nil, zero value otherwise.

### GetPeriodOk

`func (o *AdminAnalyticsLoginsResponseData) GetPeriodOk() (*AdminAnalyticsLoginsResponseDataPeriod, bool)`

GetPeriodOk returns a tuple with the Period field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriod

`func (o *AdminAnalyticsLoginsResponseData) SetPeriod(v AdminAnalyticsLoginsResponseDataPeriod)`

SetPeriod sets Period field to given value.

### HasPeriod

`func (o *AdminAnalyticsLoginsResponseData) HasPeriod() bool`

HasPeriod returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


