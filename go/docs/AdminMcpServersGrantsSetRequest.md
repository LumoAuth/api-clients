# AdminMcpServersGrantsSetRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Tools** | Pointer to **[]string** | Tool names, as the server lists them in tools/list. Replaces the tools granted one by one; [] removes them. | [optional] 
**AllTools** | Pointer to **bool** | Allow every tool of the server, including tools it adds later. Default false. | [optional] 

## Methods

### NewAdminMcpServersGrantsSetRequest

`func NewAdminMcpServersGrantsSetRequest() *AdminMcpServersGrantsSetRequest`

NewAdminMcpServersGrantsSetRequest instantiates a new AdminMcpServersGrantsSetRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminMcpServersGrantsSetRequestWithDefaults

`func NewAdminMcpServersGrantsSetRequestWithDefaults() *AdminMcpServersGrantsSetRequest`

NewAdminMcpServersGrantsSetRequestWithDefaults instantiates a new AdminMcpServersGrantsSetRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTools

`func (o *AdminMcpServersGrantsSetRequest) GetTools() []string`

GetTools returns the Tools field if non-nil, zero value otherwise.

### GetToolsOk

`func (o *AdminMcpServersGrantsSetRequest) GetToolsOk() (*[]string, bool)`

GetToolsOk returns a tuple with the Tools field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTools

`func (o *AdminMcpServersGrantsSetRequest) SetTools(v []string)`

SetTools sets Tools field to given value.

### HasTools

`func (o *AdminMcpServersGrantsSetRequest) HasTools() bool`

HasTools returns a boolean if a field has been set.

### GetAllTools

`func (o *AdminMcpServersGrantsSetRequest) GetAllTools() bool`

GetAllTools returns the AllTools field if non-nil, zero value otherwise.

### GetAllToolsOk

`func (o *AdminMcpServersGrantsSetRequest) GetAllToolsOk() (*bool, bool)`

GetAllToolsOk returns a tuple with the AllTools field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllTools

`func (o *AdminMcpServersGrantsSetRequest) SetAllTools(v bool)`

SetAllTools sets AllTools field to given value.

### HasAllTools

`func (o *AdminMcpServersGrantsSetRequest) HasAllTools() bool`

HasAllTools returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


