# CheckPermissionsBulkResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | Pointer to **map[string]bool** | Map of permission slug to decision | [optional] 
**SubjectType** | Pointer to **string** |  | [optional] 
**SubjectId** | Pointer to **string** |  | [optional] 
**UserId** | Pointer to **string** | Only present when the subject is a user (legacy alias of subject_id) | [optional] 
**Context** | Pointer to **map[string]interface{}** | The request context echoed back | [optional] 

## Methods

### NewCheckPermissionsBulkResponse

`func NewCheckPermissionsBulkResponse() *CheckPermissionsBulkResponse`

NewCheckPermissionsBulkResponse instantiates a new CheckPermissionsBulkResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCheckPermissionsBulkResponseWithDefaults

`func NewCheckPermissionsBulkResponseWithDefaults() *CheckPermissionsBulkResponse`

NewCheckPermissionsBulkResponseWithDefaults instantiates a new CheckPermissionsBulkResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetResults

`func (o *CheckPermissionsBulkResponse) GetResults() map[string]bool`

GetResults returns the Results field if non-nil, zero value otherwise.

### GetResultsOk

`func (o *CheckPermissionsBulkResponse) GetResultsOk() (*map[string]bool, bool)`

GetResultsOk returns a tuple with the Results field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResults

`func (o *CheckPermissionsBulkResponse) SetResults(v map[string]bool)`

SetResults sets Results field to given value.

### HasResults

`func (o *CheckPermissionsBulkResponse) HasResults() bool`

HasResults returns a boolean if a field has been set.

### GetSubjectType

`func (o *CheckPermissionsBulkResponse) GetSubjectType() string`

GetSubjectType returns the SubjectType field if non-nil, zero value otherwise.

### GetSubjectTypeOk

`func (o *CheckPermissionsBulkResponse) GetSubjectTypeOk() (*string, bool)`

GetSubjectTypeOk returns a tuple with the SubjectType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubjectType

`func (o *CheckPermissionsBulkResponse) SetSubjectType(v string)`

SetSubjectType sets SubjectType field to given value.

### HasSubjectType

`func (o *CheckPermissionsBulkResponse) HasSubjectType() bool`

HasSubjectType returns a boolean if a field has been set.

### GetSubjectId

`func (o *CheckPermissionsBulkResponse) GetSubjectId() string`

GetSubjectId returns the SubjectId field if non-nil, zero value otherwise.

### GetSubjectIdOk

`func (o *CheckPermissionsBulkResponse) GetSubjectIdOk() (*string, bool)`

GetSubjectIdOk returns a tuple with the SubjectId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubjectId

`func (o *CheckPermissionsBulkResponse) SetSubjectId(v string)`

SetSubjectId sets SubjectId field to given value.

### HasSubjectId

`func (o *CheckPermissionsBulkResponse) HasSubjectId() bool`

HasSubjectId returns a boolean if a field has been set.

### GetUserId

`func (o *CheckPermissionsBulkResponse) GetUserId() string`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *CheckPermissionsBulkResponse) GetUserIdOk() (*string, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *CheckPermissionsBulkResponse) SetUserId(v string)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *CheckPermissionsBulkResponse) HasUserId() bool`

HasUserId returns a boolean if a field has been set.

### GetContext

`func (o *CheckPermissionsBulkResponse) GetContext() map[string]interface{}`

GetContext returns the Context field if non-nil, zero value otherwise.

### GetContextOk

`func (o *CheckPermissionsBulkResponse) GetContextOk() (*map[string]interface{}, bool)`

GetContextOk returns a tuple with the Context field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContext

`func (o *CheckPermissionsBulkResponse) SetContext(v map[string]interface{})`

SetContext sets Context field to given value.

### HasContext

`func (o *CheckPermissionsBulkResponse) HasContext() bool`

HasContext returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


