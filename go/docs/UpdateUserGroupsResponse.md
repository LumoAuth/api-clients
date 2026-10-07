# UpdateUserGroupsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**User**](User.md) |  | [optional] 
**Message** | Pointer to **string** |  | [optional] 

## Methods

### NewUpdateUserGroupsResponse

`func NewUpdateUserGroupsResponse() *UpdateUserGroupsResponse`

NewUpdateUserGroupsResponse instantiates a new UpdateUserGroupsResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUpdateUserGroupsResponseWithDefaults

`func NewUpdateUserGroupsResponseWithDefaults() *UpdateUserGroupsResponse`

NewUpdateUserGroupsResponseWithDefaults instantiates a new UpdateUserGroupsResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *UpdateUserGroupsResponse) GetData() User`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *UpdateUserGroupsResponse) GetDataOk() (*User, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *UpdateUserGroupsResponse) SetData(v User)`

SetData sets Data field to given value.

### HasData

`func (o *UpdateUserGroupsResponse) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMessage

`func (o *UpdateUserGroupsResponse) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *UpdateUserGroupsResponse) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *UpdateUserGroupsResponse) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *UpdateUserGroupsResponse) HasMessage() bool`

HasMessage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


