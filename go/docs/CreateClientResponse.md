# CreateClientResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**CreateClientResponseData**](CreateClientResponseData.md) |  | [optional] 
**Message** | Pointer to **string** |  | [optional] 

## Methods

### NewCreateClientResponse

`func NewCreateClientResponse() *CreateClientResponse`

NewCreateClientResponse instantiates a new CreateClientResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCreateClientResponseWithDefaults

`func NewCreateClientResponseWithDefaults() *CreateClientResponse`

NewCreateClientResponseWithDefaults instantiates a new CreateClientResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *CreateClientResponse) GetData() CreateClientResponseData`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *CreateClientResponse) GetDataOk() (*CreateClientResponseData, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *CreateClientResponse) SetData(v CreateClientResponseData)`

SetData sets Data field to given value.

### HasData

`func (o *CreateClientResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMessage

`func (o *CreateClientResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *CreateClientResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *CreateClientResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *CreateClientResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


