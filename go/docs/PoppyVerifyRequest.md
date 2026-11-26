# PoppyVerifyRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Method** | **string** | The method of the request that you received. | 
**Url** | **string** | The public address that the personal agent called (a query is ignored). https, or http for a loopback host during development. | 
**Headers** | **map[string]string** | The headers of the request by name. Read are Poppy-Session, Poppy-Version, Poppy-Extensions, Authorization and DPoP; send those, or all of them. | 
**RequiredScope** | Pointer to [**PoppyVerifyRequestRequiredScope**](PoppyVerifyRequestRequiredScope.md) |  | [optional] 
**Resource** | Pointer to **string** | Only for a service that accepts just the tokens issued for it (RFC 8707) — its resource identifier. The default token is then refused. | [optional] 
**AllowReplay** | Pointer to **bool** | Accept a Session JWT that was verified before, for a service that checks one request in more than one place. | [optional] [default to false]

## Methods

### NewPoppyVerifyRequest

`func NewPoppyVerifyRequest(method string, url string, headers map[string]string, ) *PoppyVerifyRequest`

NewPoppyVerifyRequest instantiates a new PoppyVerifyRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPoppyVerifyRequestWithDefaults

`func NewPoppyVerifyRequestWithDefaults() *PoppyVerifyRequest`

NewPoppyVerifyRequestWithDefaults instantiates a new PoppyVerifyRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMethod

`func (o *PoppyVerifyRequest) GetMethod() string`

GetMethod returns the Method field if non-nil, zero value otherwise.

### GetMethodOk

`func (o *PoppyVerifyRequest) GetMethodOk() (*string, bool)`

GetMethodOk returns a tuple with the Method field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMethod

`func (o *PoppyVerifyRequest) SetMethod(v string)`

SetMethod sets Method field to given value.


### GetUrl

`func (o *PoppyVerifyRequest) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *PoppyVerifyRequest) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *PoppyVerifyRequest) SetUrl(v string)`

SetUrl sets Url field to given value.


### GetHeaders

`func (o *PoppyVerifyRequest) GetHeaders() map[string]string`

GetHeaders returns the Headers field if non-nil, zero value otherwise.

### GetHeadersOk

`func (o *PoppyVerifyRequest) GetHeadersOk() (*map[string]string, bool)`

GetHeadersOk returns a tuple with the Headers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHeaders

`func (o *PoppyVerifyRequest) SetHeaders(v map[string]string)`

SetHeaders sets Headers field to given value.


### GetRequiredScope

`func (o *PoppyVerifyRequest) GetRequiredScope() PoppyVerifyRequestRequiredScope`

GetRequiredScope returns the RequiredScope field if non-nil, zero value otherwise.

### GetRequiredScopeOk

`func (o *PoppyVerifyRequest) GetRequiredScopeOk() (*PoppyVerifyRequestRequiredScope, bool)`

GetRequiredScopeOk returns a tuple with the RequiredScope field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequiredScope

`func (o *PoppyVerifyRequest) SetRequiredScope(v PoppyVerifyRequestRequiredScope)`

SetRequiredScope sets RequiredScope field to given value.

### HasRequiredScope

`func (o *PoppyVerifyRequest) HasRequiredScope() bool`

HasRequiredScope returns a boolean if a field has been set.

### GetResource

`func (o *PoppyVerifyRequest) GetResource() string`

GetResource returns the Resource field if non-nil, zero value otherwise.

### GetResourceOk

`func (o *PoppyVerifyRequest) GetResourceOk() (*string, bool)`

GetResourceOk returns a tuple with the Resource field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResource

`func (o *PoppyVerifyRequest) SetResource(v string)`

SetResource sets Resource field to given value.

### HasResource

`func (o *PoppyVerifyRequest) HasResource() bool`

HasResource returns a boolean if a field has been set.

### GetAllowReplay

`func (o *PoppyVerifyRequest) GetAllowReplay() bool`

GetAllowReplay returns the AllowReplay field if non-nil, zero value otherwise.

### GetAllowReplayOk

`func (o *PoppyVerifyRequest) GetAllowReplayOk() (*bool, bool)`

GetAllowReplayOk returns a tuple with the AllowReplay field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowReplay

`func (o *PoppyVerifyRequest) SetAllowReplay(v bool)`

SetAllowReplay sets AllowReplay field to given value.

### HasAllowReplay

`func (o *PoppyVerifyRequest) HasAllowReplay() bool`

HasAllowReplay returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


