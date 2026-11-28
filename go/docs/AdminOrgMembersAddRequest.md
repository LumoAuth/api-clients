# AdminOrgMembersAddRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **string** | ID of a user of this organization. | 
**RoleId** | Pointer to **int32** | Optional: a role of the customer organization; its default role otherwise. | [optional] 

## Methods

### NewAdminOrgMembersAddRequest

`func NewAdminOrgMembersAddRequest(userId string, ) *AdminOrgMembersAddRequest`

NewAdminOrgMembersAddRequest instantiates a new AdminOrgMembersAddRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminOrgMembersAddRequestWithDefaults

`func NewAdminOrgMembersAddRequestWithDefaults() *AdminOrgMembersAddRequest`

NewAdminOrgMembersAddRequestWithDefaults instantiates a new AdminOrgMembersAddRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUserId

`func (o *AdminOrgMembersAddRequest) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *AdminOrgMembersAddRequest) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *AdminOrgMembersAddRequest) SetUserId(v string)`

SetUserId sets UserId field to given value.


### GetRoleId

`func (o *AdminOrgMembersAddRequest) GetRoleId() int32`

GetRoleId returns the RoleId field if non-nil, zero value otherwise.

### GetRoleIdOk

`func (o *AdminOrgMembersAddRequest) GetRoleIdOk() (*int32, bool)`

GetRoleIdOk returns a tuple with the RoleId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoleId

`func (o *AdminOrgMembersAddRequest) SetRoleId(v int32)`

SetRoleId sets RoleId field to given value.

### HasRoleId

`func (o *AdminOrgMembersAddRequest) HasRoleId() bool`

HasRoleId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


