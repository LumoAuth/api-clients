# PutAdminSettingsEmailUpdateResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to **map[string]interface{}** | Free-form email settings dictionary, stored as sent (keys merge on update); secret-looking keys are redacted. | [optional] 
**Message** | Pointer to **string** |  | [optional] 

## Methods

### NewPutAdminSettingsEmailUpdateResponse

`func NewPutAdminSettingsEmailUpdateResponse() *PutAdminSettingsEmailUpdateResponse`

NewPutAdminSettingsEmailUpdateResponse instantiates a new PutAdminSettingsEmailUpdateResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPutAdminSettingsEmailUpdateResponseWithDefaults

`func NewPutAdminSettingsEmailUpdateResponseWithDefaults() *PutAdminSettingsEmailUpdateResponse`

NewPutAdminSettingsEmailUpdateResponseWithDefaults instantiates a new PutAdminSettingsEmailUpdateResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *PutAdminSettingsEmailUpdateResponse) GetData() map[string]interface{}`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *PutAdminSettingsEmailUpdateResponse) GetDataOk() (*map[string]interface{}, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *PutAdminSettingsEmailUpdateResponse) SetData(v map[string]interface{})`

SetData sets Data field to given value.

### HasData

`func (o *PutAdminSettingsEmailUpdateResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMessage

`func (o *PutAdminSettingsEmailUpdateResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *PutAdminSettingsEmailUpdateResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *PutAdminSettingsEmailUpdateResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *PutAdminSettingsEmailUpdateResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


