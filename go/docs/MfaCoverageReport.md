# MfaCoverageReport

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalUsers** | Pointer to **int32** |  | [optional] 
**EnrolledUsers** | Pointer to **int32** |  | [optional] 
**EnrolledPct** | Pointer to **float32** |  | [optional] 
**ByType** | Pointer to **map[string]int32** |  | [optional] 
**ByTier** | Pointer to **map[string]int32** |  | [optional] 
**Requirement** | Pointer to **string** |  | [optional] 
**InGrace** | Pointer to **int32** |  | [optional] 
**PastGrace** | Pointer to **int32** |  | [optional] 
**Deferred** | Pointer to **int32** |  | [optional] 
**GeneratedAt** | Pointer to **time.Time** |  | [optional] 

## Methods

### NewMfaCoverageReport

`func NewMfaCoverageReport() *MfaCoverageReport`

NewMfaCoverageReport instantiates a new MfaCoverageReport object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMfaCoverageReportWithDefaults

`func NewMfaCoverageReportWithDefaults() *MfaCoverageReport`

NewMfaCoverageReportWithDefaults instantiates a new MfaCoverageReport object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTotalUsers

`func (o *MfaCoverageReport) GetTotalUsers() int32`

GetTotalUsers returns the TotalUsers field if non-nil, zero value otherwise.

### GetTotalUsersOk

`func (o *MfaCoverageReport) GetTotalUsersOk() (*int32, bool)`

GetTotalUsersOk returns a tuple with the TotalUsers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalUsers

`func (o *MfaCoverageReport) SetTotalUsers(v int32)`

SetTotalUsers sets TotalUsers field to given value.

### HasTotalUsers

`func (o *MfaCoverageReport) HasTotalUsers() bool`

HasTotalUsers returns a boolean if a field has been set.

### GetEnrolledUsers

`func (o *MfaCoverageReport) GetEnrolledUsers() int32`

GetEnrolledUsers returns the EnrolledUsers field if non-nil, zero value otherwise.

### GetEnrolledUsersOk

`func (o *MfaCoverageReport) GetEnrolledUsersOk() (*int32, bool)`

GetEnrolledUsersOk returns a tuple with the EnrolledUsers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnrolledUsers

`func (o *MfaCoverageReport) SetEnrolledUsers(v int32)`

SetEnrolledUsers sets EnrolledUsers field to given value.

### HasEnrolledUsers

`func (o *MfaCoverageReport) HasEnrolledUsers() bool`

HasEnrolledUsers returns a boolean if a field has been set.

### GetEnrolledPct

`func (o *MfaCoverageReport) GetEnrolledPct() float32`

GetEnrolledPct returns the EnrolledPct field if non-nil, zero value otherwise.

### GetEnrolledPctOk

`func (o *MfaCoverageReport) GetEnrolledPctOk() (*float32, bool)`

GetEnrolledPctOk returns a tuple with the EnrolledPct field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnrolledPct

`func (o *MfaCoverageReport) SetEnrolledPct(v float32)`

SetEnrolledPct sets EnrolledPct field to given value.

### HasEnrolledPct

`func (o *MfaCoverageReport) HasEnrolledPct() bool`

HasEnrolledPct returns a boolean if a field has been set.

### GetByType

`func (o *MfaCoverageReport) GetByType() map[string]int32`

GetByType returns the ByType field if non-nil, zero value otherwise.

### GetByTypeOk

`func (o *MfaCoverageReport) GetByTypeOk() (*map[string]int32, bool)`

GetByTypeOk returns a tuple with the ByType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetByType

`func (o *MfaCoverageReport) SetByType(v map[string]int32)`

SetByType sets ByType field to given value.

### HasByType

`func (o *MfaCoverageReport) HasByType() bool`

HasByType returns a boolean if a field has been set.

### GetByTier

`func (o *MfaCoverageReport) GetByTier() map[string]int32`

GetByTier returns the ByTier field if non-nil, zero value otherwise.

### GetByTierOk

`func (o *MfaCoverageReport) GetByTierOk() (*map[string]int32, bool)`

GetByTierOk returns a tuple with the ByTier field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetByTier

`func (o *MfaCoverageReport) SetByTier(v map[string]int32)`

SetByTier sets ByTier field to given value.

### HasByTier

`func (o *MfaCoverageReport) HasByTier() bool`

HasByTier returns a boolean if a field has been set.

### GetRequirement

`func (o *MfaCoverageReport) GetRequirement() string`

GetRequirement returns the Requirement field if non-nil, zero value otherwise.

### GetRequirementOk

`func (o *MfaCoverageReport) GetRequirementOk() (*string, bool)`

GetRequirementOk returns a tuple with the Requirement field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequirement

`func (o *MfaCoverageReport) SetRequirement(v string)`

SetRequirement sets Requirement field to given value.

### HasRequirement

`func (o *MfaCoverageReport) HasRequirement() bool`

HasRequirement returns a boolean if a field has been set.

### GetInGrace

`func (o *MfaCoverageReport) GetInGrace() int32`

GetInGrace returns the InGrace field if non-nil, zero value otherwise.

### GetInGraceOk

`func (o *MfaCoverageReport) GetInGraceOk() (*int32, bool)`

GetInGraceOk returns a tuple with the InGrace field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInGrace

`func (o *MfaCoverageReport) SetInGrace(v int32)`

SetInGrace sets InGrace field to given value.

### HasInGrace

`func (o *MfaCoverageReport) HasInGrace() bool`

HasInGrace returns a boolean if a field has been set.

### GetPastGrace

`func (o *MfaCoverageReport) GetPastGrace() int32`

GetPastGrace returns the PastGrace field if non-nil, zero value otherwise.

### GetPastGraceOk

`func (o *MfaCoverageReport) GetPastGraceOk() (*int32, bool)`

GetPastGraceOk returns a tuple with the PastGrace field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPastGrace

`func (o *MfaCoverageReport) SetPastGrace(v int32)`

SetPastGrace sets PastGrace field to given value.

### HasPastGrace

`func (o *MfaCoverageReport) HasPastGrace() bool`

HasPastGrace returns a boolean if a field has been set.

### GetDeferred

`func (o *MfaCoverageReport) GetDeferred() int32`

GetDeferred returns the Deferred field if non-nil, zero value otherwise.

### GetDeferredOk

`func (o *MfaCoverageReport) GetDeferredOk() (*int32, bool)`

GetDeferredOk returns a tuple with the Deferred field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeferred

`func (o *MfaCoverageReport) SetDeferred(v int32)`

SetDeferred sets Deferred field to given value.

### HasDeferred

`func (o *MfaCoverageReport) HasDeferred() bool`

HasDeferred returns a boolean if a field has been set.

### GetGeneratedAt

`func (o *MfaCoverageReport) GetGeneratedAt() time.Time`

GetGeneratedAt returns the GeneratedAt field if non-nil, zero value otherwise.

### GetGeneratedAtOk

`func (o *MfaCoverageReport) GetGeneratedAtOk() (*time.Time, bool)`

GetGeneratedAtOk returns a tuple with the GeneratedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGeneratedAt

`func (o *MfaCoverageReport) SetGeneratedAt(v time.Time)`

SetGeneratedAt sets GeneratedAt field to given value.

### HasGeneratedAt

`func (o *MfaCoverageReport) HasGeneratedAt() bool`

HasGeneratedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


