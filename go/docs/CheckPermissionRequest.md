# CheckPermissionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Permission** | **string** |  | 
**Context** | Pointer to **map[string]interface{}** | Optional: resource_id and the slugs of defined environment attributes. | [optional] 
**Subject** | Pointer to **map[string]interface{}** | Optional: the user or agent to ask about ({\&quot;type\&quot;: \&quot;user\&quot;|\&quot;agent\&quot;, \&quot;id\&quot;: \&quot;&lt;id&gt;\&quot;}). Without it the check is about the caller. Another subject needs the authz.check permission or the authz:check scope. | [optional] 

## Methods

### NewCheckPermissionRequest

`func NewCheckPermissionRequest(permission string, ) *CheckPermissionRequest`

NewCheckPermissionRequest instantiates a new CheckPermissionRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCheckPermissionRequestWithDefaults

`func NewCheckPermissionRequestWithDefaults() *CheckPermissionRequest`

NewCheckPermissionRequestWithDefaults instantiates a new CheckPermissionRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPermission

`func (o *CheckPermissionRequest) GetPermission() string`

GetPermission returns the Permission field if non-nil, zero value otherwise.

### GetPermissionOk

`func (o *CheckPermissionRequest) GetPermissionOk() (*string, bool)`

GetPermissionOk returns a tuple with the Permission field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPermission

`func (o *CheckPermissionRequest) SetPermission(v string)`

SetPermission sets Permission field to given value.


### GetContext

`func (o *CheckPermissionRequest) GetContext() map[string]interface{}`

GetContext returns the Context field if non-nil, zero value otherwise.

### GetContextOk

`func (o *CheckPermissionRequest) GetContextOk() (*map[string]interface{}, bool)`

GetContextOk returns a tuple with the Context field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContext

`func (o *CheckPermissionRequest) SetContext(v map[string]interface{})`

SetContext sets Context field to given value.

### HasContext

`func (o *CheckPermissionRequest) HasContext() bool`

HasContext returns a boolean if a field has been set.

### GetSubject

`func (o *CheckPermissionRequest) GetSubject() map[string]interface{}`

GetSubject returns the Subject field if non-nil, zero value otherwise.

### GetSubjectOk

`func (o *CheckPermissionRequest) GetSubjectOk() (*map[string]interface{}, bool)`

GetSubjectOk returns a tuple with the Subject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubject

`func (o *CheckPermissionRequest) SetSubject(v map[string]interface{})`

SetSubject sets Subject field to given value.

### HasSubject

`func (o *CheckPermissionRequest) HasSubject() bool`

HasSubject returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


