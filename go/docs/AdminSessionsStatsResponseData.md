# AdminSessionsStatsResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Total** | Pointer to **int32** | All sessions, active or not | [optional] 
**Active** | Pointer to **int32** |  | [optional] 
**Inactive** | Pointer to **int32** |  | [optional] 

## Methods

### NewAdminSessionsStatsResponseData

`func NewAdminSessionsStatsResponseData() *AdminSessionsStatsResponseData`

NewAdminSessionsStatsResponseData instantiates a new AdminSessionsStatsResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminSessionsStatsResponseDataWithDefaults

`func NewAdminSessionsStatsResponseDataWithDefaults() *AdminSessionsStatsResponseData`

NewAdminSessionsStatsResponseDataWithDefaults instantiates a new AdminSessionsStatsResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTotal

`func (o *AdminSessionsStatsResponseData) GetTotal() int32`

GetTotal returns the Total field if non-nil, zero value otherwise.

### GetTotalOk

`func (o *AdminSessionsStatsResponseData) GetTotalOk() (*int32, bool)`

GetTotalOk returns a tuple with the Total field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotal

`func (o *AdminSessionsStatsResponseData) SetTotal(v int32)`

SetTotal sets Total field to given value.

### HasTotal

`func (o *AdminSessionsStatsResponseData) HasTotal() bool`

HasTotal returns a boolean if a field has been set.

### GetActive

`func (o *AdminSessionsStatsResponseData) GetActive() int32`

GetActive returns the Active field if non-nil, zero value otherwise.

### GetActiveOk

`func (o *AdminSessionsStatsResponseData) GetActiveOk() (*int32, bool)`

GetActiveOk returns a tuple with the Active field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActive

`func (o *AdminSessionsStatsResponseData) SetActive(v int32)`

SetActive sets Active field to given value.

### HasActive

`func (o *AdminSessionsStatsResponseData) HasActive() bool`

HasActive returns a boolean if a field has been set.

### GetInactive

`func (o *AdminSessionsStatsResponseData) GetInactive() int32`

GetInactive returns the Inactive field if non-nil, zero value otherwise.

### GetInactiveOk

`func (o *AdminSessionsStatsResponseData) GetInactiveOk() (*int32, bool)`

GetInactiveOk returns a tuple with the Inactive field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInactive

`func (o *AdminSessionsStatsResponseData) SetInactive(v int32)`

SetInactive sets Inactive field to given value.

### HasInactive

`func (o *AdminSessionsStatsResponseData) HasInactive() bool`

HasInactive returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


