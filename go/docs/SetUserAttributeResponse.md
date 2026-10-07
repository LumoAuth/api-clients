# SetUserAttributeResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | Pointer to **string** |  | [optional] 
**Data** | Pointer to [**SetUserAttributeResponseData**](SetUserAttributeResponseData.md) |  | [optional] 

## Methods

### NewSetUserAttributeResponse

`func NewSetUserAttributeResponse() *SetUserAttributeResponse`

NewSetUserAttributeResponse instantiates a new SetUserAttributeResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSetUserAttributeResponseWithDefaults

`func NewSetUserAttributeResponseWithDefaults() *SetUserAttributeResponse`

NewSetUserAttributeResponseWithDefaults instantiates a new SetUserAttributeResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMessage

`func (o *SetUserAttributeResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *SetUserAttributeResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *SetUserAttributeResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *SetUserAttributeResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### GetData

`func (o *SetUserAttributeResponse) GetData() SetUserAttributeResponseData`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *SetUserAttributeResponse) GetDataOk() (*SetUserAttributeResponseData, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *SetUserAttributeResponse) SetData(v SetUserAttributeResponseData)`

SetData sets Data field to given value.

### HasData

`func (o *SetUserAttributeResponse) HasData() bool`

HasData returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


