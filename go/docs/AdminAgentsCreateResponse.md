# AdminAgentsCreateResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to **map[string]interface{}** | The created agent, including the one-time secret/api key. | [optional] 
**Message** | Pointer to **string** |  | [optional] 

## Methods

### NewAdminAgentsCreateResponse

`func NewAdminAgentsCreateResponse() *AdminAgentsCreateResponse`

NewAdminAgentsCreateResponse instantiates a new AdminAgentsCreateResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminAgentsCreateResponseWithDefaults

`func NewAdminAgentsCreateResponseWithDefaults() *AdminAgentsCreateResponse`

NewAdminAgentsCreateResponseWithDefaults instantiates a new AdminAgentsCreateResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminAgentsCreateResponse) GetData() map[string]interface{}`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminAgentsCreateResponse) GetDataOk() (*map[string]interface{}, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminAgentsCreateResponse) SetData(v map[string]interface{})`

SetData sets Data field to given value.

### HasData

`func (o *AdminAgentsCreateResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMessage

`func (o *AdminAgentsCreateResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *AdminAgentsCreateResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *AdminAgentsCreateResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *AdminAgentsCreateResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


