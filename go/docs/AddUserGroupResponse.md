# AddUserGroupResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**User**](User.md) |  | [optional] 
**Message** | Pointer to **string** |  | [optional] 

## Methods

### NewAddUserGroupResponse

`func NewAddUserGroupResponse() *AddUserGroupResponse`

NewAddUserGroupResponse instantiates a new AddUserGroupResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAddUserGroupResponseWithDefaults

`func NewAddUserGroupResponseWithDefaults() *AddUserGroupResponse`

NewAddUserGroupResponseWithDefaults instantiates a new AddUserGroupResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AddUserGroupResponse) GetData() User`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AddUserGroupResponse) GetDataOk() (*User, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AddUserGroupResponse) SetData(v User)`

SetData sets Data field to given value.

### HasData

`func (o *AddUserGroupResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMessage

`func (o *AddUserGroupResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *AddUserGroupResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *AddUserGroupResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *AddUserGroupResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


