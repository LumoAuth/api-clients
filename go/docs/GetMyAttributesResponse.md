# GetMyAttributesResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | Pointer to **string** |  | [optional] 
**Attributes** | Pointer to [**GetMyAttributesResponseAttributes**](GetMyAttributesResponseAttributes.md) |  | [optional] 

## Methods

### NewGetMyAttributesResponse

`func NewGetMyAttributesResponse() *GetMyAttributesResponse`

NewGetMyAttributesResponse instantiates a new GetMyAttributesResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetMyAttributesResponseWithDefaults

`func NewGetMyAttributesResponseWithDefaults() *GetMyAttributesResponse`

NewGetMyAttributesResponseWithDefaults instantiates a new GetMyAttributesResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUserId

`func (o *GetMyAttributesResponse) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *GetMyAttributesResponse) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *GetMyAttributesResponse) SetUserId(v string)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *GetMyAttributesResponse) HasUserId() bool`

HasUserId returns a boolean if a field has been set.

### GetAttributes

`func (o *GetMyAttributesResponse) GetAttributes() GetMyAttributesResponseAttributes`

GetAttributes returns the Attributes field if non-nil, zero value otherwise.

### GetAttributesOk

`func (o *GetMyAttributesResponse) GetAttributesOk() (*GetMyAttributesResponseAttributes, bool)`

GetAttributesOk returns a tuple with the Attributes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttributes

`func (o *GetMyAttributesResponse) SetAttributes(v GetMyAttributesResponseAttributes)`

SetAttributes sets Attributes field to given value.

### HasAttributes

`func (o *GetMyAttributesResponse) HasAttributes() bool`

HasAttributes returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


