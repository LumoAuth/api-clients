# PutAdminSettingsAuthenticationUpdateResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**AuthenticationSettings**](AuthenticationSettings.md) |  | [optional] 
**Message** | Pointer to **string** |  | [optional] 

## Methods

### NewPutAdminSettingsAuthenticationUpdateResponse

`func NewPutAdminSettingsAuthenticationUpdateResponse() *PutAdminSettingsAuthenticationUpdateResponse`

NewPutAdminSettingsAuthenticationUpdateResponse instantiates a new PutAdminSettingsAuthenticationUpdateResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPutAdminSettingsAuthenticationUpdateResponseWithDefaults

`func NewPutAdminSettingsAuthenticationUpdateResponseWithDefaults() *PutAdminSettingsAuthenticationUpdateResponse`

NewPutAdminSettingsAuthenticationUpdateResponseWithDefaults instantiates a new PutAdminSettingsAuthenticationUpdateResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *PutAdminSettingsAuthenticationUpdateResponse) GetData() AuthenticationSettings`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *PutAdminSettingsAuthenticationUpdateResponse) GetDataOk() (*AuthenticationSettings, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *PutAdminSettingsAuthenticationUpdateResponse) SetData(v AuthenticationSettings)`

SetData sets Data field to given value.

### HasData

`func (o *PutAdminSettingsAuthenticationUpdateResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMessage

`func (o *PutAdminSettingsAuthenticationUpdateResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *PutAdminSettingsAuthenticationUpdateResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *PutAdminSettingsAuthenticationUpdateResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *PutAdminSettingsAuthenticationUpdateResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


