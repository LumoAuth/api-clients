# AdminRolesAddPermissionsRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PermissionId** | Pointer to **int32** | One permission id (or use permissionIds). | [optional] 
**PermissionIds** | Pointer to **[]int32** | Several permission ids. | [optional] 

## Methods

### NewAdminRolesAddPermissionsRequest

`func NewAdminRolesAddPermissionsRequest() *AdminRolesAddPermissionsRequest`

NewAdminRolesAddPermissionsRequest instantiates a new AdminRolesAddPermissionsRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminRolesAddPermissionsRequestWithDefaults

`func NewAdminRolesAddPermissionsRequestWithDefaults() *AdminRolesAddPermissionsRequest`

NewAdminRolesAddPermissionsRequestWithDefaults instantiates a new AdminRolesAddPermissionsRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPermissionId

`func (o *AdminRolesAddPermissionsRequest) GetPermissionId() int32`

GetPermissionId returns the PermissionId field if non-nil, zero value otherwise.

### GetPermissionIdOk

`func (o *AdminRolesAddPermissionsRequest) GetPermissionIdOk() (*int32, bool)`

GetPermissionIdOk returns a tuple with the PermissionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPermissionId

`func (o *AdminRolesAddPermissionsRequest) SetPermissionId(v int32)`

SetPermissionId sets PermissionId field to given value.

### HasPermissionId

`func (o *AdminRolesAddPermissionsRequest) HasPermissionId() bool`

HasPermissionId returns a boolean if a field has been set.

### GetPermissionIds

`func (o *AdminRolesAddPermissionsRequest) GetPermissionIds() []int32`

GetPermissionIds returns the PermissionIds field if non-nil, zero value otherwise.

### GetPermissionIdsOk

`func (o *AdminRolesAddPermissionsRequest) GetPermissionIdsOk() (*[]int32, bool)`

GetPermissionIdsOk returns a tuple with the PermissionIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPermissionIds

`func (o *AdminRolesAddPermissionsRequest) SetPermissionIds(v []int32)`

SetPermissionIds sets PermissionIds field to given value.

### HasPermissionIds

`func (o *AdminRolesAddPermissionsRequest) HasPermissionIds() bool`

HasPermissionIds returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


