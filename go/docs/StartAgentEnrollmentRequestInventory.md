# StartAgentEnrollmentRequestInventory

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Tools** | Pointer to **int32** |  | [optional] 
**McpServers** | Pointer to [**[]StartAgentEnrollmentRequestInventoryMcpServersItem**](StartAgentEnrollmentRequestInventoryMcpServersItem.md) |  | [optional] 

## Methods

### NewStartAgentEnrollmentRequestInventory

`func NewStartAgentEnrollmentRequestInventory() *StartAgentEnrollmentRequestInventory`

NewStartAgentEnrollmentRequestInventory instantiates a new StartAgentEnrollmentRequestInventory object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewStartAgentEnrollmentRequestInventoryWithDefaults

`func NewStartAgentEnrollmentRequestInventoryWithDefaults() *StartAgentEnrollmentRequestInventory`

NewStartAgentEnrollmentRequestInventoryWithDefaults instantiates a new StartAgentEnrollmentRequestInventory object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTools

`func (o *StartAgentEnrollmentRequestInventory) GetTools() int32`

GetTools returns the Tools field if non-nil, zero value otherwise.

### GetToolsOk

`func (o *StartAgentEnrollmentRequestInventory) GetToolsOk() (*int32, bool)`

GetToolsOk returns a tuple with the Tools field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTools

`func (o *StartAgentEnrollmentRequestInventory) SetTools(v int32)`

SetTools sets Tools field to given value.

### HasTools

`func (o *StartAgentEnrollmentRequestInventory) HasTools() bool`

HasTools returns a boolean if a field has been set.

### GetMcpServers

`func (o *StartAgentEnrollmentRequestInventory) GetMcpServers() []StartAgentEnrollmentRequestInventoryMcpServersItem`

GetMcpServers returns the McpServers field if non-nil, zero value otherwise.

### GetMcpServersOk

`func (o *StartAgentEnrollmentRequestInventory) GetMcpServersOk() (*[]StartAgentEnrollmentRequestInventoryMcpServersItem, bool)`

GetMcpServersOk returns a tuple with the McpServers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMcpServers

`func (o *StartAgentEnrollmentRequestInventory) SetMcpServers(v []StartAgentEnrollmentRequestInventoryMcpServersItem)`

SetMcpServers sets McpServers field to given value.

### HasMcpServers

`func (o *StartAgentEnrollmentRequestInventory) HasMcpServers() bool`

HasMcpServers returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


