# PoppyVerifyResultResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | Pointer to **int32** |  | [optional] 
**Headers** | Pointer to **map[string]string** |  | [optional] 
**Body** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewPoppyVerifyResultResponse

`func NewPoppyVerifyResultResponse() *PoppyVerifyResultResponse`

NewPoppyVerifyResultResponse instantiates a new PoppyVerifyResultResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPoppyVerifyResultResponseWithDefaults

`func NewPoppyVerifyResultResponseWithDefaults() *PoppyVerifyResultResponse`

NewPoppyVerifyResultResponseWithDefaults instantiates a new PoppyVerifyResultResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStatus

`func (o *PoppyVerifyResultResponse) GetStatus() int32`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *PoppyVerifyResultResponse) GetStatusOk() (*int32, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *PoppyVerifyResultResponse) SetStatus(v int32)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *PoppyVerifyResultResponse) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetHeaders

`func (o *PoppyVerifyResultResponse) GetHeaders() map[string]string`

GetHeaders returns the Headers field if non-nil, zero value otherwise.

### GetHeadersOk

`func (o *PoppyVerifyResultResponse) GetHeadersOk() (*map[string]string, bool)`

GetHeadersOk returns a tuple with the Headers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHeaders

`func (o *PoppyVerifyResultResponse) SetHeaders(v map[string]string)`

SetHeaders sets Headers field to given value.

### HasHeaders

`func (o *PoppyVerifyResultResponse) HasHeaders() bool`

HasHeaders returns a boolean if a field has been set.

### GetBody

`func (o *PoppyVerifyResultResponse) GetBody() map[string]interface{}`

GetBody returns the Body field if non-nil, zero value otherwise.

### GetBodyOk

`func (o *PoppyVerifyResultResponse) GetBodyOk() (*map[string]interface{}, bool)`

GetBodyOk returns a tuple with the Body field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBody

`func (o *PoppyVerifyResultResponse) SetBody(v map[string]interface{})`

SetBody sets Body field to given value.

### HasBody

`func (o *PoppyVerifyResultResponse) HasBody() bool`

HasBody returns a boolean if a field has been set.

### SetBodyNil

`func (o *PoppyVerifyResultResponse) SetBodyNil(b bool)`

 SetBodyNil sets the value for Body to be an explicit nil

### UnsetBody
`func (o *PoppyVerifyResultResponse) UnsetBody()`

UnsetBody ensures that no value is present for Body, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


