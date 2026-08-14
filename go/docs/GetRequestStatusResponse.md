# GetRequestStatusResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestId** | Pointer to **string** |  | [optional] 
**Status** | Pointer to **string** |  | [optional] 
**RiskLevel** | Pointer to **string** |  | [optional] 
**TaskId** | Pointer to **string** |  | [optional] 
**TokenUrl** | Pointer to **string** | Present when approved. | [optional] 
**GrantedTtl** | Pointer to **int32** | Present when approved. | [optional] 
**ReviewNotes** | Pointer to **string** | Present when denied. | [optional] 
**ExpiresAt** | Pointer to **time.Time** | Present when pending. | [optional] 

## Methods

### NewGetRequestStatusResponse

`func NewGetRequestStatusResponse() *GetRequestStatusResponse`

NewGetRequestStatusResponse instantiates a new GetRequestStatusResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetRequestStatusResponseWithDefaults

`func NewGetRequestStatusResponseWithDefaults() *GetRequestStatusResponse`

NewGetRequestStatusResponseWithDefaults instantiates a new GetRequestStatusResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRequestId

`func (o *GetRequestStatusResponse) GetRequestId() string`

GetRequestId returns the RequestId field if non-nil, zero value otherwise.

### GetRequestIdOk

`func (o *GetRequestStatusResponse) GetRequestIdOk() (*string, bool)`

GetRequestIdOk returns a tuple with the RequestId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestId

`func (o *GetRequestStatusResponse) SetRequestId(v string)`

SetRequestId sets RequestId field to given value.

### HasRequestId

`func (o *GetRequestStatusResponse) HasRequestId() bool`

HasRequestId returns a boolean if a field has been set.

### GetStatus

`func (o *GetRequestStatusResponse) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *GetRequestStatusResponse) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *GetRequestStatusResponse) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *GetRequestStatusResponse) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetRiskLevel

`func (o *GetRequestStatusResponse) GetRiskLevel() string`

GetRiskLevel returns the RiskLevel field if non-nil, zero value otherwise.

### GetRiskLevelOk

`func (o *GetRequestStatusResponse) GetRiskLevelOk() (*string, bool)`

GetRiskLevelOk returns a tuple with the RiskLevel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRiskLevel

`func (o *GetRequestStatusResponse) SetRiskLevel(v string)`

SetRiskLevel sets RiskLevel field to given value.

### HasRiskLevel

`func (o *GetRequestStatusResponse) HasRiskLevel() bool`

HasRiskLevel returns a boolean if a field has been set.

### GetTaskId

`func (o *GetRequestStatusResponse) GetTaskId() string`

GetTaskId returns the TaskId field if non-nil, zero value otherwise.

### GetTaskIdOk

`func (o *GetRequestStatusResponse) GetTaskIdOk() (*string, bool)`

GetTaskIdOk returns a tuple with the TaskId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTaskId

`func (o *GetRequestStatusResponse) SetTaskId(v string)`

SetTaskId sets TaskId field to given value.

### HasTaskId

`func (o *GetRequestStatusResponse) HasTaskId() bool`

HasTaskId returns a boolean if a field has been set.

### GetTokenUrl

`func (o *GetRequestStatusResponse) GetTokenUrl() string`

GetTokenUrl returns the TokenUrl field if non-nil, zero value otherwise.

### GetTokenUrlOk

`func (o *GetRequestStatusResponse) GetTokenUrlOk() (*string, bool)`

GetTokenUrlOk returns a tuple with the TokenUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenUrl

`func (o *GetRequestStatusResponse) SetTokenUrl(v string)`

SetTokenUrl sets TokenUrl field to given value.

### HasTokenUrl

`func (o *GetRequestStatusResponse) HasTokenUrl() bool`

HasTokenUrl returns a boolean if a field has been set.

### GetGrantedTtl

`func (o *GetRequestStatusResponse) GetGrantedTtl() int32`

GetGrantedTtl returns the GrantedTtl field if non-nil, zero value otherwise.

### GetGrantedTtlOk

`func (o *GetRequestStatusResponse) GetGrantedTtlOk() (*int32, bool)`

GetGrantedTtlOk returns a tuple with the GrantedTtl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGrantedTtl

`func (o *GetRequestStatusResponse) SetGrantedTtl(v int32)`

SetGrantedTtl sets GrantedTtl field to given value.

### HasGrantedTtl

`func (o *GetRequestStatusResponse) HasGrantedTtl() bool`

HasGrantedTtl returns a boolean if a field has been set.

### GetReviewNotes

`func (o *GetRequestStatusResponse) GetReviewNotes() string`

GetReviewNotes returns the ReviewNotes field if non-nil, zero value otherwise.

### GetReviewNotesOk

`func (o *GetRequestStatusResponse) GetReviewNotesOk() (*string, bool)`

GetReviewNotesOk returns a tuple with the ReviewNotes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReviewNotes

`func (o *GetRequestStatusResponse) SetReviewNotes(v string)`

SetReviewNotes sets ReviewNotes field to given value.

### HasReviewNotes

`func (o *GetRequestStatusResponse) HasReviewNotes() bool`

HasReviewNotes returns a boolean if a field has been set.

### GetExpiresAt

`func (o *GetRequestStatusResponse) GetExpiresAt() time.Time`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *GetRequestStatusResponse) GetExpiresAtOk() (*time.Time, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *GetRequestStatusResponse) SetExpiresAt(v time.Time)`

SetExpiresAt sets ExpiresAt field to given value.

### HasExpiresAt

`func (o *GetRequestStatusResponse) HasExpiresAt() bool`

HasExpiresAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


