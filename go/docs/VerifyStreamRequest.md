# VerifyStreamRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StreamId** | Pointer to **string** |  | [optional] 
**State** | Pointer to **string** | Echoed in the verification event. | [optional] 

## Methods

### NewVerifyStreamRequest

`func NewVerifyStreamRequest() *VerifyStreamRequest`

NewVerifyStreamRequest instantiates a new VerifyStreamRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVerifyStreamRequestWithDefaults

`func NewVerifyStreamRequestWithDefaults() *VerifyStreamRequest`

NewVerifyStreamRequestWithDefaults instantiates a new VerifyStreamRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStreamId

`func (o *VerifyStreamRequest) GetStreamId() string`

GetStreamId returns the StreamId field if non-nil, zero value otherwise.

### GetStreamIdOk

`func (o *VerifyStreamRequest) GetStreamIdOk() (*string, bool)`

GetStreamIdOk returns a tuple with the StreamId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStreamId

`func (o *VerifyStreamRequest) SetStreamId(v string)`

SetStreamId sets StreamId field to given value.

### HasStreamId

`func (o *VerifyStreamRequest) HasStreamId() bool`

HasStreamId returns a boolean if a field has been set.

### GetState

`func (o *VerifyStreamRequest) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *VerifyStreamRequest) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *VerifyStreamRequest) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *VerifyStreamRequest) HasState() bool`

HasState returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


