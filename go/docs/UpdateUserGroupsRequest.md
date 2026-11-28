# UpdateUserGroupsRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Groups** | **[]string** | The full list of group slugs. | 

## Methods

### NewUpdateUserGroupsRequest

`func NewUpdateUserGroupsRequest(groups []string, ) *UpdateUserGroupsRequest`

NewUpdateUserGroupsRequest instantiates a new UpdateUserGroupsRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUpdateUserGroupsRequestWithDefaults

`func NewUpdateUserGroupsRequestWithDefaults() *UpdateUserGroupsRequest`

NewUpdateUserGroupsRequestWithDefaults instantiates a new UpdateUserGroupsRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetGroups

`func (o *UpdateUserGroupsRequest) GetGroups() []string`

GetGroups returns the Groups field if non-nil, zero value otherwise.

### GetGroupsOk

`func (o *UpdateUserGroupsRequest) GetGroupsOk() (*[]string, bool)`

GetGroupsOk returns a tuple with the Groups field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGroups

`func (o *UpdateUserGroupsRequest) SetGroups(v []string)`

SetGroups sets Groups field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


