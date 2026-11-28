# PutAdminOrgMembersUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RoleId** | Pointer to **int32** | A role of the customer organization. | [optional] 
**Status** | Pointer to **string** |  | [optional] 

## Methods

### NewPutAdminOrgMembersUpdateRequest

`func NewPutAdminOrgMembersUpdateRequest() *PutAdminOrgMembersUpdateRequest`

NewPutAdminOrgMembersUpdateRequest instantiates a new PutAdminOrgMembersUpdateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPutAdminOrgMembersUpdateRequestWithDefaults

`func NewPutAdminOrgMembersUpdateRequestWithDefaults() *PutAdminOrgMembersUpdateRequest`

NewPutAdminOrgMembersUpdateRequestWithDefaults instantiates a new PutAdminOrgMembersUpdateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRoleId

`func (o *PutAdminOrgMembersUpdateRequest) GetRoleId() int32`

GetRoleId returns the RoleId field if non-nil, zero value otherwise.

### GetRoleIdOk

`func (o *PutAdminOrgMembersUpdateRequest) GetRoleIdOk() (*int32, bool)`

GetRoleIdOk returns a tuple with the RoleId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoleId

`func (o *PutAdminOrgMembersUpdateRequest) SetRoleId(v int32)`

SetRoleId sets RoleId field to given value.

### HasRoleId

`func (o *PutAdminOrgMembersUpdateRequest) HasRoleId() bool`

HasRoleId returns a boolean if a field has been set.

### GetStatus

`func (o *PutAdminOrgMembersUpdateRequest) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *PutAdminOrgMembersUpdateRequest) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *PutAdminOrgMembersUpdateRequest) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *PutAdminOrgMembersUpdateRequest) HasStatus() bool`

HasStatus returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


