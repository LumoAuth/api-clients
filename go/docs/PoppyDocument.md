# PoppyDocument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProtocolVersion** | **string** |  | 
**Organization** | [**PoppyDocumentOrganization**](PoppyDocumentOrganization.md) |  | 
**Auth** | Pointer to [**PoppyDocumentAuth**](PoppyDocumentAuth.md) |  | [optional] 
**Agent** | Pointer to [**PoppyDocumentAgent**](PoppyDocumentAgent.md) |  | [optional] 
**Web** | Pointer to [**PoppyDocumentWeb**](PoppyDocumentWeb.md) |  | [optional] 
**Tasks** | Pointer to [**PoppyDocumentTasks**](PoppyDocumentTasks.md) |  | [optional] 
**Apis** | Pointer to [**[]PoppyDocumentApisInner**](PoppyDocumentApisInner.md) |  | [optional] 
**Extensions** | Pointer to [**map[string][]map[string]interface{}**](array.md) |  | [optional] 

## Methods

### NewPoppyDocument

`func NewPoppyDocument(protocolVersion string, organization PoppyDocumentOrganization, ) *PoppyDocument`

NewPoppyDocument instantiates a new PoppyDocument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPoppyDocumentWithDefaults

`func NewPoppyDocumentWithDefaults() *PoppyDocument`

NewPoppyDocumentWithDefaults instantiates a new PoppyDocument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetProtocolVersion

`func (o *PoppyDocument) GetProtocolVersion() string`

GetProtocolVersion returns the ProtocolVersion field if non-nil, zero value otherwise.

### GetProtocolVersionOk

`func (o *PoppyDocument) GetProtocolVersionOk() (*string, bool)`

GetProtocolVersionOk returns a tuple with the ProtocolVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProtocolVersion

`func (o *PoppyDocument) SetProtocolVersion(v string)`

SetProtocolVersion sets ProtocolVersion field to given value.


### GetOrganization

`func (o *PoppyDocument) GetOrganization() PoppyDocumentOrganization`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *PoppyDocument) GetOrganizationOk() (*PoppyDocumentOrganization, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *PoppyDocument) SetOrganization(v PoppyDocumentOrganization)`

SetOrganization sets Organization field to given value.


### GetAuth

`func (o *PoppyDocument) GetAuth() PoppyDocumentAuth`

GetAuth returns the Auth field if non-nil, zero value otherwise.

### GetAuthOk

`func (o *PoppyDocument) GetAuthOk() (*PoppyDocumentAuth, bool)`

GetAuthOk returns a tuple with the Auth field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuth

`func (o *PoppyDocument) SetAuth(v PoppyDocumentAuth)`

SetAuth sets Auth field to given value.

### HasAuth

`func (o *PoppyDocument) HasAuth() bool`

HasAuth returns a boolean if a field has been set.

### GetAgent

`func (o *PoppyDocument) GetAgent() PoppyDocumentAgent`

GetAgent returns the Agent field if non-nil, zero value otherwise.

### GetAgentOk

`func (o *PoppyDocument) GetAgentOk() (*PoppyDocumentAgent, bool)`

GetAgentOk returns a tuple with the Agent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgent

`func (o *PoppyDocument) SetAgent(v PoppyDocumentAgent)`

SetAgent sets Agent field to given value.

### HasAgent

`func (o *PoppyDocument) HasAgent() bool`

HasAgent returns a boolean if a field has been set.

### GetWeb

`func (o *PoppyDocument) GetWeb() PoppyDocumentWeb`

GetWeb returns the Web field if non-nil, zero value otherwise.

### GetWebOk

`func (o *PoppyDocument) GetWebOk() (*PoppyDocumentWeb, bool)`

GetWebOk returns a tuple with the Web field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeb

`func (o *PoppyDocument) SetWeb(v PoppyDocumentWeb)`

SetWeb sets Web field to given value.

### HasWeb

`func (o *PoppyDocument) HasWeb() bool`

HasWeb returns a boolean if a field has been set.

### GetTasks

`func (o *PoppyDocument) GetTasks() PoppyDocumentTasks`

GetTasks returns the Tasks field if non-nil, zero value otherwise.

### GetTasksOk

`func (o *PoppyDocument) GetTasksOk() (*PoppyDocumentTasks, bool)`

GetTasksOk returns a tuple with the Tasks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTasks

`func (o *PoppyDocument) SetTasks(v PoppyDocumentTasks)`

SetTasks sets Tasks field to given value.

### HasTasks

`func (o *PoppyDocument) HasTasks() bool`

HasTasks returns a boolean if a field has been set.

### GetApis

`func (o *PoppyDocument) GetApis() []PoppyDocumentApisInner`

GetApis returns the Apis field if non-nil, zero value otherwise.

### GetApisOk

`func (o *PoppyDocument) GetApisOk() (*[]PoppyDocumentApisInner, bool)`

GetApisOk returns a tuple with the Apis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetApis

`func (o *PoppyDocument) SetApis(v []PoppyDocumentApisInner)`

SetApis sets Apis field to given value.

### HasApis

`func (o *PoppyDocument) HasApis() bool`

HasApis returns a boolean if a field has been set.

### GetExtensions

`func (o *PoppyDocument) GetExtensions() map[string][]map[string]interface{}`

GetExtensions returns the Extensions field if non-nil, zero value otherwise.

### GetExtensionsOk

`func (o *PoppyDocument) GetExtensionsOk() (*map[string][]map[string]interface{}, bool)`

GetExtensionsOk returns a tuple with the Extensions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExtensions

`func (o *PoppyDocument) SetExtensions(v map[string][]map[string]interface{})`

SetExtensions sets Extensions field to given value.

### HasExtensions

`func (o *PoppyDocument) HasExtensions() bool`

HasExtensions returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


