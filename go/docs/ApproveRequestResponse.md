# ApproveRequestResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestId** | Pointer to **string** |  | [optional] 
**Status** | Pointer to **string** |  | [optional] 
**GrantedTtl** | Pointer to **int32** |  | [optional] 

## Methods

### NewApproveRequestResponse

`func NewApproveRequestResponse() *ApproveRequestResponse`

NewApproveRequestResponse instantiates a new ApproveRequestResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewApproveRequestResponseWithDefaults

`func NewApproveRequestResponseWithDefaults() *ApproveRequestResponse`

NewApproveRequestResponseWithDefaults instantiates a new ApproveRequestResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRequestId

`func (o *ApproveRequestResponse) GetRequestId() string`

GetRequestId returns the RequestId field if non-nil, zero value otherwise.

### GetRequestIdOk

`func (o *ApproveRequestResponse) GetRequestIdOk() (*string, bool)`

GetRequestIdOk returns a tuple with the RequestId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestId

`func (o *ApproveRequestResponse) SetRequestId(v string)`

SetRequestId sets RequestId field to given value.

### HasRequestId

`func (o *ApproveRequestResponse) HasRequestId() bool`

HasRequestId returns a boolean if a field has been set.

### GetStatus

`func (o *ApproveRequestResponse) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *ApproveRequestResponse) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *ApproveRequestResponse) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *ApproveRequestResponse) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetGrantedTtl

`func (o *ApproveRequestResponse) GetGrantedTtl() int32`

GetGrantedTtl returns the GrantedTtl field if non-nil, zero value otherwise.

### GetGrantedTtlOk

`func (o *ApproveRequestResponse) GetGrantedTtlOk() (*int32, bool)`

GetGrantedTtlOk returns a tuple with the GrantedTtl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGrantedTtl

`func (o *ApproveRequestResponse) SetGrantedTtl(v int32)`

SetGrantedTtl sets GrantedTtl field to given value.

### HasGrantedTtl

`func (o *ApproveRequestResponse) HasGrantedTtl() bool`

HasGrantedTtl returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


