# UpdateUserRolesResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**User**](User.md) |  | [optional] 
**Message** | Pointer to **string** |  | [optional] 

## Methods

### NewUpdateUserRolesResponse

`func NewUpdateUserRolesResponse() *UpdateUserRolesResponse`

NewUpdateUserRolesResponse instantiates a new UpdateUserRolesResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUpdateUserRolesResponseWithDefaults

`func NewUpdateUserRolesResponseWithDefaults() *UpdateUserRolesResponse`

NewUpdateUserRolesResponseWithDefaults instantiates a new UpdateUserRolesResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *UpdateUserRolesResponse) GetData() User`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *UpdateUserRolesResponse) GetDataOk() (*User, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *UpdateUserRolesResponse) SetData(v User)`

SetData sets Data field to given value.

### HasData

`func (o *UpdateUserRolesResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMessage

`func (o *UpdateUserRolesResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *UpdateUserRolesResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *UpdateUserRolesResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *UpdateUserRolesResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


