# AdminPermissionsUsageResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Roles** | Pointer to [**[]GroupRef**](GroupRef.md) |  | [optional] 
**RoleCount** | Pointer to **int32** |  | [optional] 

## Methods

### NewAdminPermissionsUsageResponseData

`func NewAdminPermissionsUsageResponseData() *AdminPermissionsUsageResponseData`

NewAdminPermissionsUsageResponseData instantiates a new AdminPermissionsUsageResponseData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminPermissionsUsageResponseDataWithDefaults

`func NewAdminPermissionsUsageResponseDataWithDefaults() *AdminPermissionsUsageResponseData`

NewAdminPermissionsUsageResponseDataWithDefaults instantiates a new AdminPermissionsUsageResponseData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRoles

`func (o *AdminPermissionsUsageResponseData) GetRoles() []GroupRef`

GetRoles returns the Roles field if non-nil, zero value otherwise.

### GetRolesOk

`func (o *AdminPermissionsUsageResponseData) GetRolesOk() (*[]GroupRef, bool)`

GetRolesOk returns a tuple with the Roles field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoles

`func (o *AdminPermissionsUsageResponseData) SetRoles(v []GroupRef)`

SetRoles sets Roles field to given value.

### HasRoles

`func (o *AdminPermissionsUsageResponseData) HasRoles() bool`

HasRoles returns a boolean if a field has been set.

### GetRoleCount

`func (o *AdminPermissionsUsageResponseData) GetRoleCount() int32`

GetRoleCount returns the RoleCount field if non-nil, zero value otherwise.

### GetRoleCountOk

`func (o *AdminPermissionsUsageResponseData) GetRoleCountOk() (*int32, bool)`

GetRoleCountOk returns a tuple with the RoleCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoleCount

`func (o *AdminPermissionsUsageResponseData) SetRoleCount(v int32)`

SetRoleCount sets RoleCount field to given value.

### HasRoleCount

`func (o *AdminPermissionsUsageResponseData) HasRoleCount() bool`

HasRoleCount returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


