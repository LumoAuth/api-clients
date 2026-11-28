# CheckPermissionsBulkRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Permissions** | **[]string** |  | 
**Context** | Pointer to **map[string]interface{}** | Optional: resource_id and the slugs of defined environment attributes. | [optional] 
**Subject** | Pointer to **map[string]interface{}** | Optional: the user or agent to ask about ({\&quot;type\&quot;: \&quot;user\&quot;|\&quot;agent\&quot;, \&quot;id\&quot;: \&quot;&lt;id&gt;\&quot;}). Without it the check is about the caller. Another subject needs the authz.check permission or the authz:check scope. | [optional] 

## Methods

### NewCheckPermissionsBulkRequest

`func NewCheckPermissionsBulkRequest(permissions []string, ) *CheckPermissionsBulkRequest`

NewCheckPermissionsBulkRequest instantiates a new CheckPermissionsBulkRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCheckPermissionsBulkRequestWithDefaults

`func NewCheckPermissionsBulkRequestWithDefaults() *CheckPermissionsBulkRequest`

NewCheckPermissionsBulkRequestWithDefaults instantiates a new CheckPermissionsBulkRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPermissions

`func (o *CheckPermissionsBulkRequest) GetPermissions() []string`

GetPermissions returns the Permissions field if non-nil, zero value otherwise.

### GetPermissionsOk

`func (o *CheckPermissionsBulkRequest) GetPermissionsOk() (*[]string, bool)`

GetPermissionsOk returns a tuple with the Permissions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPermissions

`func (o *CheckPermissionsBulkRequest) SetPermissions(v []string)`

SetPermissions sets Permissions field to given value.


### GetContext

`func (o *CheckPermissionsBulkRequest) GetContext() map[string]interface{}`

GetContext returns the Context field if non-nil, zero value otherwise.

### GetContextOk

`func (o *CheckPermissionsBulkRequest) GetContextOk() (*map[string]interface{}, bool)`

GetContextOk returns a tuple with the Context field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContext

`func (o *CheckPermissionsBulkRequest) SetContext(v map[string]interface{})`

SetContext sets Context field to given value.

### HasContext

`func (o *CheckPermissionsBulkRequest) HasContext() bool`

HasContext returns a boolean if a field has been set.

### GetSubject

`func (o *CheckPermissionsBulkRequest) GetSubject() map[string]interface{}`

GetSubject returns the Subject field if non-nil, zero value otherwise.

### GetSubjectOk

`func (o *CheckPermissionsBulkRequest) GetSubjectOk() (*map[string]interface{}, bool)`

GetSubjectOk returns a tuple with the Subject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubject

`func (o *CheckPermissionsBulkRequest) SetSubject(v map[string]interface{})`

SetSubject sets Subject field to given value.

### HasSubject

`func (o *CheckPermissionsBulkRequest) HasSubject() bool`

HasSubject returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


