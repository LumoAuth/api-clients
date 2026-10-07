# DeleteUserAuthenticatorResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**MfaAuthenticator**](MfaAuthenticator.md) |  | [optional] 
**Message** | Pointer to **string** |  | [optional] 

## Methods

### NewDeleteUserAuthenticatorResponse

`func NewDeleteUserAuthenticatorResponse() *DeleteUserAuthenticatorResponse`

NewDeleteUserAuthenticatorResponse instantiates a new DeleteUserAuthenticatorResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeleteUserAuthenticatorResponseWithDefaults

`func NewDeleteUserAuthenticatorResponseWithDefaults() *DeleteUserAuthenticatorResponse`

NewDeleteUserAuthenticatorResponseWithDefaults instantiates a new DeleteUserAuthenticatorResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *DeleteUserAuthenticatorResponse) GetData() MfaAuthenticator`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *DeleteUserAuthenticatorResponse) GetDataOk() (*MfaAuthenticator, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *DeleteUserAuthenticatorResponse) SetData(v MfaAuthenticator)`

SetData sets Data field to given value.

### HasData

`func (o *DeleteUserAuthenticatorResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMessage

`func (o *DeleteUserAuthenticatorResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *DeleteUserAuthenticatorResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *DeleteUserAuthenticatorResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *DeleteUserAuthenticatorResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


