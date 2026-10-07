# AdminAnalyticsLoginsResponseDataPeriod

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Days** | Pointer to **int32** | Effective window, clamped to 1-90. | [optional] 
**From** | Pointer to **time.Time** |  | [optional] 
**To** | Pointer to **time.Time** |  | [optional] 

## Methods

### NewAdminAnalyticsLoginsResponseDataPeriod

`func NewAdminAnalyticsLoginsResponseDataPeriod() *AdminAnalyticsLoginsResponseDataPeriod`

NewAdminAnalyticsLoginsResponseDataPeriod instantiates a new AdminAnalyticsLoginsResponseDataPeriod object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminAnalyticsLoginsResponseDataPeriodWithDefaults

`func NewAdminAnalyticsLoginsResponseDataPeriodWithDefaults() *AdminAnalyticsLoginsResponseDataPeriod`

NewAdminAnalyticsLoginsResponseDataPeriodWithDefaults instantiates a new AdminAnalyticsLoginsResponseDataPeriod object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDays

`func (o *AdminAnalyticsLoginsResponseDataPeriod) GetDays() int32`

GetDays returns the Days field if non-nil, zero value otherwise.

### GetDaysOk

`func (o *AdminAnalyticsLoginsResponseDataPeriod) GetDaysOk() (*int32, bool)`

GetDaysOk returns a tuple with the Days field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDays

`func (o *AdminAnalyticsLoginsResponseDataPeriod) SetDays(v int32)`

SetDays sets Days field to given value.

### HasDays

`func (o *AdminAnalyticsLoginsResponseDataPeriod) HasDays() bool`

HasDays returns a boolean if a field has been set.

### GetFrom

`func (o *AdminAnalyticsLoginsResponseDataPeriod) GetFrom() time.Time`

GetFrom returns the From field if non-nil, zero value otherwise.

### GetFromOk

`func (o *AdminAnalyticsLoginsResponseDataPeriod) GetFromOk() (*time.Time, bool)`

GetFromOk returns a tuple with the From field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFrom

`func (o *AdminAnalyticsLoginsResponseDataPeriod) SetFrom(v time.Time)`

SetFrom sets From field to given value.

### HasFrom

`func (o *AdminAnalyticsLoginsResponseDataPeriod) HasFrom() bool`

HasFrom returns a boolean if a field has been set.

### GetTo

`func (o *AdminAnalyticsLoginsResponseDataPeriod) GetTo() time.Time`

GetTo returns the To field if non-nil, zero value otherwise.

### GetToOk

`func (o *AdminAnalyticsLoginsResponseDataPeriod) GetToOk() (*time.Time, bool)`

GetToOk returns a tuple with the To field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTo

`func (o *AdminAnalyticsLoginsResponseDataPeriod) SetTo(v time.Time)`

SetTo sets To field to given value.

### HasTo

`func (o *AdminAnalyticsLoginsResponseDataPeriod) HasTo() bool`

HasTo returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


