# AddUserGroupRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GroupId** | Pointer to **int32** | Group id (or use groupSlug). | [optional] 
**GroupSlug** | Pointer to **string** |  | [optional] 

## Methods

### NewAddUserGroupRequest

`func NewAddUserGroupRequest() *AddUserGroupRequest`

NewAddUserGroupRequest instantiates a new AddUserGroupRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAddUserGroupRequestWithDefaults

`func NewAddUserGroupRequestWithDefaults() *AddUserGroupRequest`

NewAddUserGroupRequestWithDefaults instantiates a new AddUserGroupRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetGroupId

`func (o *AddUserGroupRequest) GetGroupId() int32`

GetGroupId returns the GroupId field if non-nil, zero value otherwise.

### GetGroupIdOk

`func (o *AddUserGroupRequest) GetGroupIdOk() (*int32, bool)`

GetGroupIdOk returns a tuple with the GroupId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGroupId

`func (o *AddUserGroupRequest) SetGroupId(v int32)`

SetGroupId sets GroupId field to given value.

### HasGroupId

`func (o *AddUserGroupRequest) HasGroupId() bool`

HasGroupId returns a boolean if a field has been set.

### GetGroupSlug

`func (o *AddUserGroupRequest) GetGroupSlug() string`

GetGroupSlug returns the GroupSlug field if non-nil, zero value otherwise.

### GetGroupSlugOk

`func (o *AddUserGroupRequest) GetGroupSlugOk() (*string, bool)`

GetGroupSlugOk returns a tuple with the GroupSlug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGroupSlug

`func (o *AddUserGroupRequest) SetGroupSlug(v string)`

SetGroupSlug sets GroupSlug field to given value.

### HasGroupSlug

`func (o *AddUserGroupRequest) HasGroupSlug() bool`

HasGroupSlug returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


