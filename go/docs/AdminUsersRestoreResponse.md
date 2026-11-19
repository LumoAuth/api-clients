# AdminUsersRestoreResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**User**](User.md) |  | [optional] 
**Message** | Pointer to **string** |  | [optional] 

## Methods

### NewAdminUsersRestoreResponse

`func NewAdminUsersRestoreResponse() *AdminUsersRestoreResponse`

NewAdminUsersRestoreResponse instantiates a new AdminUsersRestoreResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminUsersRestoreResponseWithDefaults

`func NewAdminUsersRestoreResponseWithDefaults() *AdminUsersRestoreResponse`

NewAdminUsersRestoreResponseWithDefaults instantiates a new AdminUsersRestoreResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AdminUsersRestoreResponse) GetData() User`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AdminUsersRestoreResponse) GetDataOk() (*User, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AdminUsersRestoreResponse) SetData(v User)`

SetData sets Data field to given value.

### HasData

`func (o *AdminUsersRestoreResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMessage

`func (o *AdminUsersRestoreResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *AdminUsersRestoreResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *AdminUsersRestoreResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *AdminUsersRestoreResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


