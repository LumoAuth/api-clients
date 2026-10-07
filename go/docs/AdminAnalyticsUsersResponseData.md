# AdminAnalyticsUsersResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DailyRegistrations** | Pointer to [**[]AdminAnalyticsUsersResponseDataDailyRegistrationsItem**](AdminAnalyticsUsersResponseDataDailyRegistrationsItem.md) | One row per calendar day with at least one registration, ascending. | [optional] 
**ByVerificationStatus** | Pointer to [**[]AdminAnalyticsUsersResponseDataByVerificationStatusItem**](AdminAnalyticsUsersResponseDataByVerificationStatusItem.md) |  | [optional] 
**ByMfaStatus** | Pointer to [**[]AdminAnalyticsUsersResponseDataByMfaStatusItem**](AdminAnalyticsUsersResponseDataByMfaStatusItem.md) |  | [optional] 
**Period** | Pointer to [**AdminAnalyticsLoginsResponseDataPeriod**](AdminAnalyticsLoginsResponseDataPeriod.md) |  | [optional] 

## Methods

### NewAdminAnalyticsUsersResponseData

`func NewAdminAnalyticsUsersResponseData() *AdminAnalyticsUsersResponseData`

NewAdminAnalyticsUsersResponseData instantiates a new AdminAnalyticsUsersResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminAnalyticsUsersResponseDataWithDefaults

`func NewAdminAnalyticsUsersResponseDataWithDefaults() *AdminAnalyticsUsersResponseData`

NewAdminAnalyticsUsersResponseDataWithDefaults instantiates a new AdminAnalyticsUsersResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDailyRegistrations

`func (o *AdminAnalyticsUsersResponseData) GetDailyRegistrations() []AdminAnalyticsUsersResponseDataDailyRegistrationsItem`

GetDailyRegistrations returns the DailyRegistrations field if non-nil, zero value otherwise.

### GetDailyRegistrationsOk

`func (o *AdminAnalyticsUsersResponseData) GetDailyRegistrationsOk() (*[]AdminAnalyticsUsersResponseDataDailyRegistrationsItem, bool)`

GetDailyRegistrationsOk returns a tuple with the DailyRegistrations field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDailyRegistrations

`func (o *AdminAnalyticsUsersResponseData) SetDailyRegistrations(v []AdminAnalyticsUsersResponseDataDailyRegistrationsItem)`

SetDailyRegistrations sets DailyRegistrations field to given value.

### HasDailyRegistrations

`func (o *AdminAnalyticsUsersResponseData) HasDailyRegistrations() bool`

HasDailyRegistrations returns a boolean if a field has been set.

### GetByVerificationStatus

`func (o *AdminAnalyticsUsersResponseData) GetByVerificationStatus() []AdminAnalyticsUsersResponseDataByVerificationStatusItem`

GetByVerificationStatus returns the ByVerificationStatus field if non-nil, zero value otherwise.

### GetByVerificationStatusOk

`func (o *AdminAnalyticsUsersResponseData) GetByVerificationStatusOk() (*[]AdminAnalyticsUsersResponseDataByVerificationStatusItem, bool)`

GetByVerificationStatusOk returns a tuple with the ByVerificationStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetByVerificationStatus

`func (o *AdminAnalyticsUsersResponseData) SetByVerificationStatus(v []AdminAnalyticsUsersResponseDataByVerificationStatusItem)`

SetByVerificationStatus sets ByVerificationStatus field to given value.

### HasByVerificationStatus

`func (o *AdminAnalyticsUsersResponseData) HasByVerificationStatus() bool`

HasByVerificationStatus returns a boolean if a field has been set.

### GetByMfaStatus

`func (o *AdminAnalyticsUsersResponseData) GetByMfaStatus() []AdminAnalyticsUsersResponseDataByMfaStatusItem`

GetByMfaStatus returns the ByMfaStatus field if non-nil, zero value otherwise.

### GetByMfaStatusOk

`func (o *AdminAnalyticsUsersResponseData) GetByMfaStatusOk() (*[]AdminAnalyticsUsersResponseDataByMfaStatusItem, bool)`

GetByMfaStatusOk returns a tuple with the ByMfaStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetByMfaStatus

`func (o *AdminAnalyticsUsersResponseData) SetByMfaStatus(v []AdminAnalyticsUsersResponseDataByMfaStatusItem)`

SetByMfaStatus sets ByMfaStatus field to given value.

### HasByMfaStatus

`func (o *AdminAnalyticsUsersResponseData) HasByMfaStatus() bool`

HasByMfaStatus returns a boolean if a field has been set.

### GetPeriod

`func (o *AdminAnalyticsUsersResponseData) GetPeriod() AdminAnalyticsLoginsResponseDataPeriod`

GetPeriod returns the Period field if non-nil, zero value otherwise.

### GetPeriodOk

`func (o *AdminAnalyticsUsersResponseData) GetPeriodOk() (*AdminAnalyticsLoginsResponseDataPeriod, bool)`

GetPeriodOk returns a tuple with the Period field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriod

`func (o *AdminAnalyticsUsersResponseData) SetPeriod(v AdminAnalyticsLoginsResponseDataPeriod)`

SetPeriod sets Period field to given value.

### HasPeriod

`func (o *AdminAnalyticsUsersResponseData) HasPeriod() bool`

HasPeriod returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


