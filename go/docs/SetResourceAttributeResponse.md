# SetResourceAttributeResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | Pointer to **string** |  | [optional] 
**Data** | Pointer to [**AbacResourceAttribute**](AbacResourceAttribute.md) |  | [optional] 

## Methods

### NewSetResourceAttributeResponse

`func NewSetResourceAttributeResponse() *SetResourceAttributeResponse`

NewSetResourceAttributeResponse instantiates a new SetResourceAttributeResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSetResourceAttributeResponseWithDefaults

`func NewSetResourceAttributeResponseWithDefaults() *SetResourceAttributeResponse`

NewSetResourceAttributeResponseWithDefaults instantiates a new SetResourceAttributeResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMessage

`func (o *SetResourceAttributeResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *SetResourceAttributeResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *SetResourceAttributeResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *SetResourceAttributeResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### GetData

`func (o *SetResourceAttributeResponse) GetData() AbacResourceAttribute`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *SetResourceAttributeResponse) GetDataOk() (*AbacResourceAttribute, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *SetResourceAttributeResponse) SetData(v AbacResourceAttribute)`

SetData sets Data field to given value.

### HasData

`func (o *SetResourceAttributeResponse) HasData() bool`

HasData returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


