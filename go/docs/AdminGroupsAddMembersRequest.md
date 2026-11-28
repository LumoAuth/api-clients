# AdminGroupsAddMembersRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | Pointer to **string** | One user (or use userIds). | [optional] 
**UserIds** | Pointer to **[]string** | Several users. | [optional] 

## Methods

### NewAdminGroupsAddMembersRequest

`func NewAdminGroupsAddMembersRequest() *AdminGroupsAddMembersRequest`

NewAdminGroupsAddMembersRequest instantiates a new AdminGroupsAddMembersRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminGroupsAddMembersRequestWithDefaults

`func NewAdminGroupsAddMembersRequestWithDefaults() *AdminGroupsAddMembersRequest`

NewAdminGroupsAddMembersRequestWithDefaults instantiates a new AdminGroupsAddMembersRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUserId

`func (o *AdminGroupsAddMembersRequest) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *AdminGroupsAddMembersRequest) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *AdminGroupsAddMembersRequest) SetUserId(v string)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *AdminGroupsAddMembersRequest) HasUserId() bool`

HasUserId returns a boolean if a field has been set.

### GetUserIds

`func (o *AdminGroupsAddMembersRequest) GetUserIds() []string`

GetUserIds returns the UserIds field if non-nil, zero value otherwise.

### GetUserIdsOk

`func (o *AdminGroupsAddMembersRequest) GetUserIdsOk() (*[]string, bool)`

GetUserIdsOk returns a tuple with the UserIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserIds

`func (o *AdminGroupsAddMembersRequest) SetUserIds(v []string)`

SetUserIds sets UserIds field to given value.

### HasUserIds

`func (o *AdminGroupsAddMembersRequest) HasUserIds() bool`

HasUserIds returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


