# BackchannelAuthorizeResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthReqId** | **string** |  | 
**ExpiresIn** | **int32** | Lifetime of the auth_req_id in seconds. | 
**Interval** | Pointer to **int32** | Minimum polling interval in seconds (poll / ping modes). | [optional] 

## Methods

### NewBackchannelAuthorizeResponse

`func NewBackchannelAuthorizeResponse(authReqId string, expiresIn int32, ) *BackchannelAuthorizeResponse`

NewBackchannelAuthorizeResponse instantiates a new BackchannelAuthorizeResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBackchannelAuthorizeResponseWithDefaults

`func NewBackchannelAuthorizeResponseWithDefaults() *BackchannelAuthorizeResponse`

NewBackchannelAuthorizeResponseWithDefaults instantiates a new BackchannelAuthorizeResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAuthReqId

`func (o *BackchannelAuthorizeResponse) GetAuthReqId() string`

GetAuthReqId returns the AuthReqId field if non-nil, zero value otherwise.

### GetAuthReqIdOk

`func (o *BackchannelAuthorizeResponse) GetAuthReqIdOk() (*string, bool)`

GetAuthReqIdOk returns a tuple with the AuthReqId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthReqId

`func (o *BackchannelAuthorizeResponse) SetAuthReqId(v string)`

SetAuthReqId sets AuthReqId field to given value.


### GetExpiresIn

`func (o *BackchannelAuthorizeResponse) GetExpiresIn() int32`

GetExpiresIn returns the ExpiresIn field if non-nil, zero value otherwise.

### GetExpiresInOk

`func (o *BackchannelAuthorizeResponse) GetExpiresInOk() (*int32, bool)`

GetExpiresInOk returns a tuple with the ExpiresIn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresIn

`func (o *BackchannelAuthorizeResponse) SetExpiresIn(v int32)`

SetExpiresIn sets ExpiresIn field to given value.


### GetInterval

`func (o *BackchannelAuthorizeResponse) GetInterval() int32`

GetInterval returns the Interval field if non-nil, zero value otherwise.

### GetIntervalOk

`func (o *BackchannelAuthorizeResponse) GetIntervalOk() (*int32, bool)`

GetIntervalOk returns a tuple with the Interval field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInterval

`func (o *BackchannelAuthorizeResponse) SetInterval(v int32)`

SetInterval sets Interval field to given value.

### HasInterval

`func (o *BackchannelAuthorizeResponse) HasInterval() bool`

HasInterval returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


