# AdminMcpServersGrantsListResponseDataItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AgentId** | Pointer to **string** |  | [optional] 
**AgentName** | Pointer to **NullableString** |  | [optional] 
**AllTools** | Pointer to **bool** | The agent may call every tool of the server. | [optional] 
**Tools** | Pointer to **[]string** | Tools granted one by one. | [optional] 

## Methods

### NewAdminMcpServersGrantsListResponseDataItem

`func NewAdminMcpServersGrantsListResponseDataItem() *AdminMcpServersGrantsListResponseDataItem`

NewAdminMcpServersGrantsListResponseDataItem instantiates a new AdminMcpServersGrantsListResponseDataItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminMcpServersGrantsListResponseDataItemWithDefaults

`func NewAdminMcpServersGrantsListResponseDataItemWithDefaults() *AdminMcpServersGrantsListResponseDataItem`

NewAdminMcpServersGrantsListResponseDataItemWithDefaults instantiates a new AdminMcpServersGrantsListResponseDataItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAgentId

`func (o *AdminMcpServersGrantsListResponseDataItem) GetAgentId() string`

GetAgentId returns the AgentId field if non-nil, zero value otherwise.

### GetAgentIdOk

`func (o *AdminMcpServersGrantsListResponseDataItem) GetAgentIdOk() (*string, bool)`

GetAgentIdOk returns a tuple with the AgentId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentId

`func (o *AdminMcpServersGrantsListResponseDataItem) SetAgentId(v string)`

SetAgentId sets AgentId field to given value.

### HasAgentId

`func (o *AdminMcpServersGrantsListResponseDataItem) HasAgentId() bool`

HasAgentId returns a boolean if a field has been set.

### GetAgentName

`func (o *AdminMcpServersGrantsListResponseDataItem) GetAgentName() string`

GetAgentName returns the AgentName field if non-nil, zero value otherwise.

### GetAgentNameOk

`func (o *AdminMcpServersGrantsListResponseDataItem) GetAgentNameOk() (*string, bool)`

GetAgentNameOk returns a tuple with the AgentName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAgentName

`func (o *AdminMcpServersGrantsListResponseDataItem) SetAgentName(v string)`

SetAgentName sets AgentName field to given value.

### HasAgentName

`func (o *AdminMcpServersGrantsListResponseDataItem) HasAgentName() bool`

HasAgentName returns a boolean if a field has been set.

### SetAgentNameNil

`func (o *AdminMcpServersGrantsListResponseDataItem) SetAgentNameNil(b bool)`

 SetAgentNameNil sets the value for AgentName to be an explicit nil

### UnsetAgentName
`func (o *AdminMcpServersGrantsListResponseDataItem) UnsetAgentName()`

UnsetAgentName ensures that no value is present for AgentName, not even an explicit nil
### GetAllTools

`func (o *AdminMcpServersGrantsListResponseDataItem) GetAllTools() bool`

GetAllTools returns the AllTools field if non-nil, zero value otherwise.

### GetAllToolsOk

`func (o *AdminMcpServersGrantsListResponseDataItem) GetAllToolsOk() (*bool, bool)`

GetAllToolsOk returns a tuple with the AllTools field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllTools

`func (o *AdminMcpServersGrantsListResponseDataItem) SetAllTools(v bool)`

SetAllTools sets AllTools field to given value.

### HasAllTools

`func (o *AdminMcpServersGrantsListResponseDataItem) HasAllTools() bool`

HasAllTools returns a boolean if a field has been set.

### GetTools

`func (o *AdminMcpServersGrantsListResponseDataItem) GetTools() []string`

GetTools returns the Tools field if non-nil, zero value otherwise.

### GetToolsOk

`func (o *AdminMcpServersGrantsListResponseDataItem) GetToolsOk() (*[]string, bool)`

GetToolsOk returns a tuple with the Tools field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTools

`func (o *AdminMcpServersGrantsListResponseDataItem) SetTools(v []string)`

SetTools sets Tools field to given value.

### HasTools

`func (o *AdminMcpServersGrantsListResponseDataItem) HasTools() bool`

HasTools returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


