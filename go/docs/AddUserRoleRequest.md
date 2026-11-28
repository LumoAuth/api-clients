# AddUserRoleRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RoleId** | Pointer to **int32** | Role id (or use roleSlug). | [optional] 
**RoleSlug** | Pointer to **string** |  | [optional] 

## Methods

### NewAddUserRoleRequest

`func NewAddUserRoleRequest() *AddUserRoleRequest`

NewAddUserRoleRequest instantiates a new AddUserRoleRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAddUserRoleRequestWithDefaults

`func NewAddUserRoleRequestWithDefaults() *AddUserRoleRequest`

NewAddUserRoleRequestWithDefaults instantiates a new AddUserRoleRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRoleId

`func (o *AddUserRoleRequest) GetRoleId() int32`

GetRoleId returns the RoleId field if non-nil, zero value otherwise.

### GetRoleIdOk

`func (o *AddUserRoleRequest) GetRoleIdOk() (*int32, bool)`

GetRoleIdOk returns a tuple with the RoleId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoleId

`func (o *AddUserRoleRequest) SetRoleId(v int32)`

SetRoleId sets RoleId field to given value.

### HasRoleId

`func (o *AddUserRoleRequest) HasRoleId() bool`

HasRoleId returns a boolean if a field has been set.

### GetRoleSlug

`func (o *AddUserRoleRequest) GetRoleSlug() string`

GetRoleSlug returns the RoleSlug field if non-nil, zero value otherwise.

### GetRoleSlugOk

`func (o *AddUserRoleRequest) GetRoleSlugOk() (*string, bool)`

GetRoleSlugOk returns a tuple with the RoleSlug field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoleSlug

`func (o *AddUserRoleRequest) SetRoleSlug(v string)`

SetRoleSlug sets RoleSlug field to given value.

### HasRoleSlug

`func (o *AddUserRoleRequest) HasRoleSlug() bool`

HasRoleSlug returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


