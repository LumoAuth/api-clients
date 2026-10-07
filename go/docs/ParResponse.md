# ParResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestUri** | **string** |  | 
**ExpiresIn** | **int32** | Lifetime of the request_uri in seconds. | 

## Methods

### NewParResponse

`func NewParResponse(requestUri string, expiresIn int32, ) *ParResponse`

NewParResponse instantiates a new ParResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewParResponseWithDefaults

`func NewParResponseWithDefaults() *ParResponse`

NewParResponseWithDefaults instantiates a new ParResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRequestUri

`func (o *ParResponse) GetRequestUri() string`

GetRequestUri returns the RequestUri field if non-nil, zero value otherwise.

### GetRequestUriOk

`func (o *ParResponse) GetRequestUriOk() (*string, bool)`

GetRequestUriOk returns a tuple with the RequestUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequestUri

`func (o *ParResponse) SetRequestUri(v string)`

SetRequestUri sets RequestUri field to given value.


### GetExpiresIn

`func (o *ParResponse) GetExpiresIn() int32`

GetExpiresIn returns the ExpiresIn field if non-nil, zero value otherwise.

### GetExpiresInOk

`func (o *ParResponse) GetExpiresInOk() (*int32, bool)`

GetExpiresInOk returns a tuple with the ExpiresIn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresIn

`func (o *ParResponse) SetExpiresIn(v int32)`

SetExpiresIn sets ExpiresIn field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


