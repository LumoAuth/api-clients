# PutAbacAttributesUpdateResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**AbacAttributeDefinition**](AbacAttributeDefinition.md) |  | [optional] 
**Message** | Pointer to **string** |  | [optional] 

## Methods

### NewPutAbacAttributesUpdateResponse

`func NewPutAbacAttributesUpdateResponse() *PutAbacAttributesUpdateResponse`

NewPutAbacAttributesUpdateResponse instantiates a new PutAbacAttributesUpdateResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPutAbacAttributesUpdateResponseWithDefaults

`func NewPutAbacAttributesUpdateResponseWithDefaults() *PutAbacAttributesUpdateResponse`

NewPutAbacAttributesUpdateResponseWithDefaults instantiates a new PutAbacAttributesUpdateResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *PutAbacAttributesUpdateResponse) GetData() AbacAttributeDefinition`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *PutAbacAttributesUpdateResponse) GetDataOk() (*AbacAttributeDefinition, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *PutAbacAttributesUpdateResponse) SetData(v AbacAttributeDefinition)`

SetData sets Data field to given value.

### HasData

`func (o *PutAbacAttributesUpdateResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMessage

`func (o *PutAbacAttributesUpdateResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *PutAbacAttributesUpdateResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *PutAbacAttributesUpdateResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *PutAbacAttributesUpdateResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


