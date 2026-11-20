# CreateApprovalRequestMeta

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | Pointer to **string** |  | [optional] 
**Host** | Pointer to **string** |  | [optional] 
**Tool** | Pointer to **string** |  | [optional] 
**Server** | Pointer to **string** |  | [optional] 
**Capability** | Pointer to **string** |  | [optional] 
**Risk** | Pointer to **string** |  | [optional] 
**Why** | Pointer to **string** |  | [optional] 
**Title** | Pointer to **string** |  | [optional] 
**Args** | Pointer to **[]string** | Argument lines; at most 5 are kept, each cut to 240 characters. | [optional] 
**ArgumentsSha256** | Pointer to **string** |  | [optional] 

## Methods

### NewCreateApprovalRequestMeta

`func NewCreateApprovalRequestMeta() *CreateApprovalRequestMeta`

NewCreateApprovalRequestMeta instantiates a new CreateApprovalRequestMeta object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCreateApprovalRequestMetaWithDefaults

`func NewCreateApprovalRequestMetaWithDefaults() *CreateApprovalRequestMeta`

NewCreateApprovalRequestMetaWithDefaults instantiates a new CreateApprovalRequestMeta object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *CreateApprovalRequestMeta) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *CreateApprovalRequestMeta) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *CreateApprovalRequestMeta) SetKind(v string)`

SetKind sets Kind field to given value.

### HasKind

`func (o *CreateApprovalRequestMeta) HasKind() bool`

HasKind returns a boolean if a field has been set.

### GetHost

`func (o *CreateApprovalRequestMeta) GetHost() string`

GetHost returns the Host field if non-nil, zero value otherwise.

### GetHostOk

`func (o *CreateApprovalRequestMeta) GetHostOk() (*string, bool)`

GetHostOk returns a tuple with the Host field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHost

`func (o *CreateApprovalRequestMeta) SetHost(v string)`

SetHost sets Host field to given value.

### HasHost

`func (o *CreateApprovalRequestMeta) HasHost() bool`

HasHost returns a boolean if a field has been set.

### GetTool

`func (o *CreateApprovalRequestMeta) GetTool() string`

GetTool returns the Tool field if non-nil, zero value otherwise.

### GetToolOk

`func (o *CreateApprovalRequestMeta) GetToolOk() (*string, bool)`

GetToolOk returns a tuple with the Tool field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTool

`func (o *CreateApprovalRequestMeta) SetTool(v string)`

SetTool sets Tool field to given value.

### HasTool

`func (o *CreateApprovalRequestMeta) HasTool() bool`

HasTool returns a boolean if a field has been set.

### GetServer

`func (o *CreateApprovalRequestMeta) GetServer() string`

GetServer returns the Server field if non-nil, zero value otherwise.

### GetServerOk

`func (o *CreateApprovalRequestMeta) GetServerOk() (*string, bool)`

GetServerOk returns a tuple with the Server field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServer

`func (o *CreateApprovalRequestMeta) SetServer(v string)`

SetServer sets Server field to given value.

### HasServer

`func (o *CreateApprovalRequestMeta) HasServer() bool`

HasServer returns a boolean if a field has been set.

### GetCapability

`func (o *CreateApprovalRequestMeta) GetCapability() string`

GetCapability returns the Capability field if non-nil, zero value otherwise.

### GetCapabilityOk

`func (o *CreateApprovalRequestMeta) GetCapabilityOk() (*string, bool)`

GetCapabilityOk returns a tuple with the Capability field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCapability

`func (o *CreateApprovalRequestMeta) SetCapability(v string)`

SetCapability sets Capability field to given value.

### HasCapability

`func (o *CreateApprovalRequestMeta) HasCapability() bool`

HasCapability returns a boolean if a field has been set.

### GetRisk

`func (o *CreateApprovalRequestMeta) GetRisk() string`

GetRisk returns the Risk field if non-nil, zero value otherwise.

### GetRiskOk

`func (o *CreateApprovalRequestMeta) GetRiskOk() (*string, bool)`

GetRiskOk returns a tuple with the Risk field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRisk

`func (o *CreateApprovalRequestMeta) SetRisk(v string)`

SetRisk sets Risk field to given value.

### HasRisk

`func (o *CreateApprovalRequestMeta) HasRisk() bool`

HasRisk returns a boolean if a field has been set.

### GetWhy

`func (o *CreateApprovalRequestMeta) GetWhy() string`

GetWhy returns the Why field if non-nil, zero value otherwise.

### GetWhyOk

`func (o *CreateApprovalRequestMeta) GetWhyOk() (*string, bool)`

GetWhyOk returns a tuple with the Why field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWhy

`func (o *CreateApprovalRequestMeta) SetWhy(v string)`

SetWhy sets Why field to given value.

### HasWhy

`func (o *CreateApprovalRequestMeta) HasWhy() bool`

HasWhy returns a boolean if a field has been set.

### GetTitle

`func (o *CreateApprovalRequestMeta) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *CreateApprovalRequestMeta) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *CreateApprovalRequestMeta) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *CreateApprovalRequestMeta) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### GetArgs

`func (o *CreateApprovalRequestMeta) GetArgs() []string`

GetArgs returns the Args field if non-nil, zero value otherwise.

### GetArgsOk

`func (o *CreateApprovalRequestMeta) GetArgsOk() (*[]string, bool)`

GetArgsOk returns a tuple with the Args field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArgs

`func (o *CreateApprovalRequestMeta) SetArgs(v []string)`

SetArgs sets Args field to given value.

### HasArgs

`func (o *CreateApprovalRequestMeta) HasArgs() bool`

HasArgs returns a boolean if a field has been set.

### GetArgumentsSha256

`func (o *CreateApprovalRequestMeta) GetArgumentsSha256() string`

GetArgumentsSha256 returns the ArgumentsSha256 field if non-nil, zero value otherwise.

### GetArgumentsSha256Ok

`func (o *CreateApprovalRequestMeta) GetArgumentsSha256Ok() (*string, bool)`

GetArgumentsSha256Ok returns a tuple with the ArgumentsSha256 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArgumentsSha256

`func (o *CreateApprovalRequestMeta) SetArgumentsSha256(v string)`

SetArgumentsSha256 sets ArgumentsSha256 field to given value.

### HasArgumentsSha256

`func (o *CreateApprovalRequestMeta) HasArgumentsSha256() bool`

HasArgumentsSha256 returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


