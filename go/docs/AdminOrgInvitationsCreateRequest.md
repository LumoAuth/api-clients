# AdminOrgInvitationsCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Email** | **string** |  | 
**RoleId** | Pointer to **int32** | Optional: a role of the customer organization. | [optional] 
**Message** | Pointer to **string** | Optional text for the invitation email. | [optional] 
**SkipEmail** | Pointer to **bool** | true creates the invitation without sending the email. | [optional] [default to false]

## Methods

### NewAdminOrgInvitationsCreateRequest

`func NewAdminOrgInvitationsCreateRequest(email string, ) *AdminOrgInvitationsCreateRequest`

NewAdminOrgInvitationsCreateRequest instantiates a new AdminOrgInvitationsCreateRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminOrgInvitationsCreateRequestWithDefaults

`func NewAdminOrgInvitationsCreateRequestWithDefaults() *AdminOrgInvitationsCreateRequest`

NewAdminOrgInvitationsCreateRequestWithDefaults instantiates a new AdminOrgInvitationsCreateRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEmail

`func (o *AdminOrgInvitationsCreateRequest) GetEmail() string`

GetEmail returns the Email field if non-nil, zero value otherwise.

### GetEmailOk

`func (o *AdminOrgInvitationsCreateRequest) GetEmailOk() (*string, bool)`

GetEmailOk returns a tuple with the Email field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEmail

`func (o *AdminOrgInvitationsCreateRequest) SetEmail(v string)`

SetEmail sets Email field to given value.


### GetRoleId

`func (o *AdminOrgInvitationsCreateRequest) GetRoleId() int32`

GetRoleId returns the RoleId field if non-nil, zero value otherwise.

### GetRoleIdOk

`func (o *AdminOrgInvitationsCreateRequest) GetRoleIdOk() (*int32, bool)`

GetRoleIdOk returns a tuple with the RoleId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRoleId

`func (o *AdminOrgInvitationsCreateRequest) SetRoleId(v int32)`

SetRoleId sets RoleId field to given value.

### HasRoleId

`func (o *AdminOrgInvitationsCreateRequest) HasRoleId() bool`

HasRoleId returns a boolean if a field has been set.

### GetMessage

`func (o *AdminOrgInvitationsCreateRequest) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *AdminOrgInvitationsCreateRequest) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *AdminOrgInvitationsCreateRequest) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *AdminOrgInvitationsCreateRequest) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### GetSkipEmail

`func (o *AdminOrgInvitationsCreateRequest) GetSkipEmail() bool`

GetSkipEmail returns the SkipEmail field if non-nil, zero value otherwise.

### GetSkipEmailOk

`func (o *AdminOrgInvitationsCreateRequest) GetSkipEmailOk() (*bool, bool)`

GetSkipEmailOk returns a tuple with the SkipEmail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSkipEmail

`func (o *AdminOrgInvitationsCreateRequest) SetSkipEmail(v bool)`

SetSkipEmail sets SkipEmail field to given value.

### HasSkipEmail

`func (o *AdminOrgInvitationsCreateRequest) HasSkipEmail() bool`

HasSkipEmail returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


