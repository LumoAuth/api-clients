# GetCurrentAgentResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | Pointer to [**GetCurrentAgentResponseIdentity**](GetCurrentAgentResponseIdentity.md) |  | [optional] 
**Capabilities** | Pointer to **[]string** |  | [optional] 
**Workspace** | Pointer to [**GetCurrentAgentResponseWorkspace**](GetCurrentAgentResponseWorkspace.md) |  | [optional] 

## Methods

### NewGetCurrentAgentResponse

`func NewGetCurrentAgentResponse() *GetCurrentAgentResponse`

NewGetCurrentAgentResponse instantiates a new GetCurrentAgentResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetCurrentAgentResponseWithDefaults

`func NewGetCurrentAgentResponseWithDefaults() *GetCurrentAgentResponse`

NewGetCurrentAgentResponseWithDefaults instantiates a new GetCurrentAgentResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIdentity

`func (o *GetCurrentAgentResponse) GetIdentity() GetCurrentAgentResponseIdentity`

GetIdentity returns the Identity field if non-nil, zero value otherwise.

### GetIdentityOk

`func (o *GetCurrentAgentResponse) GetIdentityOk() (*GetCurrentAgentResponseIdentity, bool)`

GetIdentityOk returns a tuple with the Identity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdentity

`func (o *GetCurrentAgentResponse) SetIdentity(v GetCurrentAgentResponseIdentity)`

SetIdentity sets Identity field to given value.

### HasIdentity

`func (o *GetCurrentAgentResponse) HasIdentity() bool`

HasIdentity returns a boolean if a field has been set.

### GetCapabilities

`func (o *GetCurrentAgentResponse) GetCapabilities() []string`

GetCapabilities returns the Capabilities field if non-nil, zero value otherwise.

### GetCapabilitiesOk

`func (o *GetCurrentAgentResponse) GetCapabilitiesOk() (*[]string, bool)`

GetCapabilitiesOk returns a tuple with the Capabilities field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCapabilities

`func (o *GetCurrentAgentResponse) SetCapabilities(v []string)`

SetCapabilities sets Capabilities field to given value.

### HasCapabilities

`func (o *GetCurrentAgentResponse) HasCapabilities() bool`

HasCapabilities returns a boolean if a field has been set.

### GetWorkspace

`func (o *GetCurrentAgentResponse) GetWorkspace() GetCurrentAgentResponseWorkspace`

GetWorkspace returns the Workspace field if non-nil, zero value otherwise.

### GetWorkspaceOk

`func (o *GetCurrentAgentResponse) GetWorkspaceOk() (*GetCurrentAgentResponseWorkspace, bool)`

GetWorkspaceOk returns a tuple with the Workspace field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWorkspace

`func (o *GetCurrentAgentResponse) SetWorkspace(v GetCurrentAgentResponseWorkspace)`

SetWorkspace sets Workspace field to given value.

### HasWorkspace

`func (o *GetCurrentAgentResponse) HasWorkspace() bool`

HasWorkspace returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


