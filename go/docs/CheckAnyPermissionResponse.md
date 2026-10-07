# CheckAnyPermissionResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Allowed** | Pointer to **bool** |  | [optional] 
**Permissions** | Pointer to **[]string** | The permissions that were checked | [optional] 
**SubjectType** | Pointer to **string** |  | [optional] 
**SubjectId** | Pointer to **string** |  | [optional] 
**UserId** | Pointer to **string** | Only present when the subject is a user (legacy alias of subject_id) | [optional] 
**Context** | Pointer to **map[string]interface{}** | The request context echoed back | [optional] 

## Methods

### NewCheckAnyPermissionResponse

`func NewCheckAnyPermissionResponse() *CheckAnyPermissionResponse`

NewCheckAnyPermissionResponse instantiates a new CheckAnyPermissionResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCheckAnyPermissionResponseWithDefaults

`func NewCheckAnyPermissionResponseWithDefaults() *CheckAnyPermissionResponse`

NewCheckAnyPermissionResponseWithDefaults instantiates a new CheckAnyPermissionResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAllowed

`func (o *CheckAnyPermissionResponse) GetAllowed() bool`

GetAllowed returns the Allowed field if non-nil, zero value otherwise.

### GetAllowedOk

`func (o *CheckAnyPermissionResponse) GetAllowedOk() (*bool, bool)`

GetAllowedOk returns a tuple with the Allowed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowed

`func (o *CheckAnyPermissionResponse) SetAllowed(v bool)`

SetAllowed sets Allowed field to given value.

### HasAllowed

`func (o *CheckAnyPermissionResponse) HasAllowed() bool`

HasAllowed returns a boolean if a field has been set.

### GetPermissions

`func (o *CheckAnyPermissionResponse) GetPermissions() []string`

GetPermissions returns the Permissions field if non-nil, zero value otherwise.

### GetPermissionsOk

`func (o *CheckAnyPermissionResponse) GetPermissionsOk() (*[]string, bool)`

GetPermissionsOk returns a tuple with the Permissions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPermissions

`func (o *CheckAnyPermissionResponse) SetPermissions(v []string)`

SetPermissions sets Permissions field to given value.

### HasPermissions

`func (o *CheckAnyPermissionResponse) HasPermissions() bool`

HasPermissions returns a boolean if a field has been set.

### GetSubjectType

`func (o *CheckAnyPermissionResponse) GetSubjectType() string`

GetSubjectType returns the SubjectType field if non-nil, zero value otherwise.

### GetSubjectTypeOk

`func (o *CheckAnyPermissionResponse) GetSubjectTypeOk() (*string, bool)`

GetSubjectTypeOk returns a tuple with the SubjectType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubjectType

`func (o *CheckAnyPermissionResponse) SetSubjectType(v string)`

SetSubjectType sets SubjectType field to given value.

### HasSubjectType

`func (o *CheckAnyPermissionResponse) HasSubjectType() bool`

HasSubjectType returns a boolean if a field has been set.

### GetSubjectId

`func (o *CheckAnyPermissionResponse) GetSubjectId() string`

GetSubjectId returns the SubjectId field if non-nil, zero value otherwise.

### GetSubjectIdOk

`func (o *CheckAnyPermissionResponse) GetSubjectIdOk() (*string, bool)`

GetSubjectIdOk returns a tuple with the SubjectId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubjectId

`func (o *CheckAnyPermissionResponse) SetSubjectId(v string)`

SetSubjectId sets SubjectId field to given value.

### HasSubjectId

`func (o *CheckAnyPermissionResponse) HasSubjectId() bool`

HasSubjectId returns a boolean if a field has been set.

### GetUserId

`func (o *CheckAnyPermissionResponse) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *CheckAnyPermissionResponse) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *CheckAnyPermissionResponse) SetUserId(v string)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *CheckAnyPermissionResponse) HasUserId() bool`

HasUserId returns a boolean if a field has been set.

### GetContext

`func (o *CheckAnyPermissionResponse) GetContext() map[string]interface{}`

GetContext returns the Context field if non-nil, zero value otherwise.

### GetContextOk

`func (o *CheckAnyPermissionResponse) GetContextOk() (*map[string]interface{}, bool)`

GetContextOk returns a tuple with the Context field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContext

`func (o *CheckAnyPermissionResponse) SetContext(v map[string]interface{})`

SetContext sets Context field to given value.

### HasContext

`func (o *CheckAnyPermissionResponse) HasContext() bool`

HasContext returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


