# CheckPermissionResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Allowed** | Pointer to **bool** |  | [optional] 
**Permission** | Pointer to **string** |  | [optional] 
**SubjectType** | Pointer to **string** |  | [optional] 
**SubjectId** | Pointer to **string** |  | [optional] 
**UserId** | Pointer to **string** | Only present when the subject is a user (legacy alias of subject_id) | [optional] 
**Context** | Pointer to **map[string]interface{}** | The request context echoed back | [optional] 

## Methods

### NewCheckPermissionResponse

`func NewCheckPermissionResponse() *CheckPermissionResponse`

NewCheckPermissionResponse instantiates a new CheckPermissionResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCheckPermissionResponseWithDefaults

`func NewCheckPermissionResponseWithDefaults() *CheckPermissionResponse`

NewCheckPermissionResponseWithDefaults instantiates a new CheckPermissionResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAllowed

`func (o *CheckPermissionResponse) GetAllowed() bool`

GetAllowed returns the Allowed field if non-nil, zero value otherwise.

### GetAllowedOk

`func (o *CheckPermissionResponse) GetAllowedOk() (*bool, bool)`

GetAllowedOk returns a tuple with the Allowed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowed

`func (o *CheckPermissionResponse) SetAllowed(v bool)`

SetAllowed sets Allowed field to given value.

### HasAllowed

`func (o *CheckPermissionResponse) HasAllowed() bool`

HasAllowed returns a boolean if a field has been set.

### GetPermission

`func (o *CheckPermissionResponse) GetPermission() string`

GetPermission returns the Permission field if non-nil, zero value otherwise.

### GetPermissionOk

`func (o *CheckPermissionResponse) GetPermissionOk() (*string, bool)`

GetPermissionOk returns a tuple with the Permission field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPermission

`func (o *CheckPermissionResponse) SetPermission(v string)`

SetPermission sets Permission field to given value.

### HasPermission

`func (o *CheckPermissionResponse) HasPermission() bool`

HasPermission returns a boolean if a field has been set.

### GetSubjectType

`func (o *CheckPermissionResponse) GetSubjectType() string`

GetSubjectType returns the SubjectType field if non-nil, zero value otherwise.

### GetSubjectTypeOk

`func (o *CheckPermissionResponse) GetSubjectTypeOk() (*string, bool)`

GetSubjectTypeOk returns a tuple with the SubjectType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubjectType

`func (o *CheckPermissionResponse) SetSubjectType(v string)`

SetSubjectType sets SubjectType field to given value.

### HasSubjectType

`func (o *CheckPermissionResponse) HasSubjectType() bool`

HasSubjectType returns a boolean if a field has been set.

### GetSubjectId

`func (o *CheckPermissionResponse) GetSubjectId() string`

GetSubjectId returns the SubjectId field if non-nil, zero value otherwise.

### GetSubjectIdOk

`func (o *CheckPermissionResponse) GetSubjectIdOk() (*string, bool)`

GetSubjectIdOk returns a tuple with the SubjectId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubjectId

`func (o *CheckPermissionResponse) SetSubjectId(v string)`

SetSubjectId sets SubjectId field to given value.

### HasSubjectId

`func (o *CheckPermissionResponse) HasSubjectId() bool`

HasSubjectId returns a boolean if a field has been set.

### GetUserId

`func (o *CheckPermissionResponse) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *CheckPermissionResponse) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *CheckPermissionResponse) SetUserId(v string)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *CheckPermissionResponse) HasUserId() bool`

HasUserId returns a boolean if a field has been set.

### GetContext

`func (o *CheckPermissionResponse) GetContext() map[string]interface{}`

GetContext returns the Context field if non-nil, zero value otherwise.

### GetContextOk

`func (o *CheckPermissionResponse) GetContextOk() (*map[string]interface{}, bool)`

GetContextOk returns a tuple with the Context field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContext

`func (o *CheckPermissionResponse) SetContext(v map[string]interface{})`

SetContext sets Context field to given value.

### HasContext

`func (o *CheckPermissionResponse) HasContext() bool`

HasContext returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


