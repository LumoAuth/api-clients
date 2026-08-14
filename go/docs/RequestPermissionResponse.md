# RequestPermissionResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestId** | Pointer to **string** |  | [optional] 
**Status** | Pointer to **string** |  | [optional] 
**RiskLevel** | Pointer to **string** |  | [optional] 
**TaskId** | Pointer to **string** |  | [optional] 
**TokenUrl** | Pointer to **string** | Present when approved. | [optional] 
**GrantedTtl** | Pointer to **int32** | Present when approved. | [optional] 
**StatusUrl** | Pointer to **string** | Present when pending. | [optional] 
**ExpiresAt** | Pointer to **time.Time** | Present when pending. | [optional] 
**Message** | Pointer to **string** | Present when pending. | [optional] 

## Methods

### NewRequestPermissionResponse

`func NewRequestPermissionResponse() *RequestPermissionResponse`

NewRequestPermissionResponse instantiates a new RequestPermissionResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestPermissionResponseWithDefaults

`func NewRequestPermissionResponseWithDefaults() *RequestPermissionResponse`

NewRequestPermissionResponseWithDefaults instantiates a new RequestPermissionResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRequestId

`func (o *RequestPermissionResponse) GetRequestId() string`

GetRequestId returns the RequestId field if non-nil, zero value otherwise.

### GetRequestIdOk

`func (o *RequestPermissionResponse) GetRequestIdOk() (*string, bool)`

GetRequestIdOk returns a tuple with the RequestId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestId

`func (o *RequestPermissionResponse) SetRequestId(v string)`

SetRequestId sets RequestId field to given value.

### HasRequestId

`func (o *RequestPermissionResponse) HasRequestId() bool`

HasRequestId returns a boolean if a field has been set.

### GetStatus

`func (o *RequestPermissionResponse) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *RequestPermissionResponse) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *RequestPermissionResponse) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *RequestPermissionResponse) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetRiskLevel

`func (o *RequestPermissionResponse) GetRiskLevel() string`

GetRiskLevel returns the RiskLevel field if non-nil, zero value otherwise.

### GetRiskLevelOk

`func (o *RequestPermissionResponse) GetRiskLevelOk() (*string, bool)`

GetRiskLevelOk returns a tuple with the RiskLevel field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRiskLevel

`func (o *RequestPermissionResponse) SetRiskLevel(v string)`

SetRiskLevel sets RiskLevel field to given value.

### HasRiskLevel

`func (o *RequestPermissionResponse) HasRiskLevel() bool`

HasRiskLevel returns a boolean if a field has been set.

### GetTaskId

`func (o *RequestPermissionResponse) GetTaskId() string`

GetTaskId returns the TaskId field if non-nil, zero value otherwise.

### GetTaskIdOk

`func (o *RequestPermissionResponse) GetTaskIdOk() (*string, bool)`

GetTaskIdOk returns a tuple with the TaskId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTaskId

`func (o *RequestPermissionResponse) SetTaskId(v string)`

SetTaskId sets TaskId field to given value.

### HasTaskId

`func (o *RequestPermissionResponse) HasTaskId() bool`

HasTaskId returns a boolean if a field has been set.

### GetTokenUrl

`func (o *RequestPermissionResponse) GetTokenUrl() string`

GetTokenUrl returns the TokenUrl field if non-nil, zero value otherwise.

### GetTokenUrlOk

`func (o *RequestPermissionResponse) GetTokenUrlOk() (*string, bool)`

GetTokenUrlOk returns a tuple with the TokenUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokenUrl

`func (o *RequestPermissionResponse) SetTokenUrl(v string)`

SetTokenUrl sets TokenUrl field to given value.

### HasTokenUrl

`func (o *RequestPermissionResponse) HasTokenUrl() bool`

HasTokenUrl returns a boolean if a field has been set.

### GetGrantedTtl

`func (o *RequestPermissionResponse) GetGrantedTtl() int32`

GetGrantedTtl returns the GrantedTtl field if non-nil, zero value otherwise.

### GetGrantedTtlOk

`func (o *RequestPermissionResponse) GetGrantedTtlOk() (*int32, bool)`

GetGrantedTtlOk returns a tuple with the GrantedTtl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGrantedTtl

`func (o *RequestPermissionResponse) SetGrantedTtl(v int32)`

SetGrantedTtl sets GrantedTtl field to given value.

### HasGrantedTtl

`func (o *RequestPermissionResponse) HasGrantedTtl() bool`

HasGrantedTtl returns a boolean if a field has been set.

### GetStatusUrl

`func (o *RequestPermissionResponse) GetStatusUrl() string`

GetStatusUrl returns the StatusUrl field if non-nil, zero value otherwise.

### GetStatusUrlOk

`func (o *RequestPermissionResponse) GetStatusUrlOk() (*string, bool)`

GetStatusUrlOk returns a tuple with the StatusUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusUrl

`func (o *RequestPermissionResponse) SetStatusUrl(v string)`

SetStatusUrl sets StatusUrl field to given value.

### HasStatusUrl

`func (o *RequestPermissionResponse) HasStatusUrl() bool`

HasStatusUrl returns a boolean if a field has been set.

### GetExpiresAt

`func (o *RequestPermissionResponse) GetExpiresAt() time.Time`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *RequestPermissionResponse) GetExpiresAtOk() (*time.Time, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *RequestPermissionResponse) SetExpiresAt(v time.Time)`

SetExpiresAt sets ExpiresAt field to given value.

### HasExpiresAt

`func (o *RequestPermissionResponse) HasExpiresAt() bool`

HasExpiresAt returns a boolean if a field has been set.

### GetMessage

`func (o *RequestPermissionResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *RequestPermissionResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *RequestPermissionResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *RequestPermissionResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


