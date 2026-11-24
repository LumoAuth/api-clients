# AgentsMeToolCallsRequestCallsItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Tool** | **string** |  | 
**ServerId** | Pointer to **string** | The MCP server the tool belongs to, when it has one. | [optional] 
**Decision** | **string** |  | 
**Outcome** | Pointer to **string** | not_run for a call that was denied, refused, expired or blocked (the default for those). | [optional] 
**DurationMs** | Pointer to **int32** |  | [optional] 
**ArgumentsSha256** | Pointer to **string** | SHA-256 of the arguments as the host serialized them. The arguments themselves are never sent. | [optional] 
**AuditId** | Pointer to **string** | audit_id of the Ask API answer that allowed or denied the call. | [optional] 
**OccurredAt** | Pointer to **time.Time** | When the call ran; within the last 24 hours. | [optional] 
**ErrorCode** | Pointer to **string** | A short code for a failed call, never a message. | [optional] 

## Methods

### NewAgentsMeToolCallsRequestCallsItem

`func NewAgentsMeToolCallsRequestCallsItem(tool string, decision string, ) *AgentsMeToolCallsRequestCallsItem`

NewAgentsMeToolCallsRequestCallsItem instantiates a new AgentsMeToolCallsRequestCallsItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAgentsMeToolCallsRequestCallsItemWithDefaults

`func NewAgentsMeToolCallsRequestCallsItemWithDefaults() *AgentsMeToolCallsRequestCallsItem`

NewAgentsMeToolCallsRequestCallsItemWithDefaults instantiates a new AgentsMeToolCallsRequestCallsItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTool

`func (o *AgentsMeToolCallsRequestCallsItem) GetTool() string`

GetTool returns the Tool field if non-nil, zero value otherwise.

### GetToolOk

`func (o *AgentsMeToolCallsRequestCallsItem) GetToolOk() (*string, bool)`

GetToolOk returns a tuple with the Tool field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTool

`func (o *AgentsMeToolCallsRequestCallsItem) SetTool(v string)`

SetTool sets Tool field to given value.


### GetServerId

`func (o *AgentsMeToolCallsRequestCallsItem) GetServerId() string`

GetServerId returns the ServerId field if non-nil, zero value otherwise.

### GetServerIdOk

`func (o *AgentsMeToolCallsRequestCallsItem) GetServerIdOk() (*string, bool)`

GetServerIdOk returns a tuple with the ServerId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServerId

`func (o *AgentsMeToolCallsRequestCallsItem) SetServerId(v string)`

SetServerId sets ServerId field to given value.

### HasServerId

`func (o *AgentsMeToolCallsRequestCallsItem) HasServerId() bool`

HasServerId returns a boolean if a field has been set.

### GetDecision

`func (o *AgentsMeToolCallsRequestCallsItem) GetDecision() string`

GetDecision returns the Decision field if non-nil, zero value otherwise.

### GetDecisionOk

`func (o *AgentsMeToolCallsRequestCallsItem) GetDecisionOk() (*string, bool)`

GetDecisionOk returns a tuple with the Decision field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDecision

`func (o *AgentsMeToolCallsRequestCallsItem) SetDecision(v string)`

SetDecision sets Decision field to given value.


### GetOutcome

`func (o *AgentsMeToolCallsRequestCallsItem) GetOutcome() string`

GetOutcome returns the Outcome field if non-nil, zero value otherwise.

### GetOutcomeOk

`func (o *AgentsMeToolCallsRequestCallsItem) GetOutcomeOk() (*string, bool)`

GetOutcomeOk returns a tuple with the Outcome field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOutcome

`func (o *AgentsMeToolCallsRequestCallsItem) SetOutcome(v string)`

SetOutcome sets Outcome field to given value.

### HasOutcome

`func (o *AgentsMeToolCallsRequestCallsItem) HasOutcome() bool`

HasOutcome returns a boolean if a field has been set.

### GetDurationMs

`func (o *AgentsMeToolCallsRequestCallsItem) GetDurationMs() int32`

GetDurationMs returns the DurationMs field if non-nil, zero value otherwise.

### GetDurationMsOk

`func (o *AgentsMeToolCallsRequestCallsItem) GetDurationMsOk() (*int32, bool)`

GetDurationMsOk returns a tuple with the DurationMs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDurationMs

`func (o *AgentsMeToolCallsRequestCallsItem) SetDurationMs(v int32)`

SetDurationMs sets DurationMs field to given value.

### HasDurationMs

`func (o *AgentsMeToolCallsRequestCallsItem) HasDurationMs() bool`

HasDurationMs returns a boolean if a field has been set.

### GetArgumentsSha256

`func (o *AgentsMeToolCallsRequestCallsItem) GetArgumentsSha256() string`

GetArgumentsSha256 returns the ArgumentsSha256 field if non-nil, zero value otherwise.

### GetArgumentsSha256Ok

`func (o *AgentsMeToolCallsRequestCallsItem) GetArgumentsSha256Ok() (*string, bool)`

GetArgumentsSha256Ok returns a tuple with the ArgumentsSha256 field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArgumentsSha256

`func (o *AgentsMeToolCallsRequestCallsItem) SetArgumentsSha256(v string)`

SetArgumentsSha256 sets ArgumentsSha256 field to given value.

### HasArgumentsSha256

`func (o *AgentsMeToolCallsRequestCallsItem) HasArgumentsSha256() bool`

HasArgumentsSha256 returns a boolean if a field has been set.

### GetAuditId

`func (o *AgentsMeToolCallsRequestCallsItem) GetAuditId() string`

GetAuditId returns the AuditId field if non-nil, zero value otherwise.

### GetAuditIdOk

`func (o *AgentsMeToolCallsRequestCallsItem) GetAuditIdOk() (*string, bool)`

GetAuditIdOk returns a tuple with the AuditId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuditId

`func (o *AgentsMeToolCallsRequestCallsItem) SetAuditId(v string)`

SetAuditId sets AuditId field to given value.

### HasAuditId

`func (o *AgentsMeToolCallsRequestCallsItem) HasAuditId() bool`

HasAuditId returns a boolean if a field has been set.

### GetOccurredAt

`func (o *AgentsMeToolCallsRequestCallsItem) GetOccurredAt() time.Time`

GetOccurredAt returns the OccurredAt field if non-nil, zero value otherwise.

### GetOccurredAtOk

`func (o *AgentsMeToolCallsRequestCallsItem) GetOccurredAtOk() (*time.Time, bool)`

GetOccurredAtOk returns a tuple with the OccurredAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOccurredAt

`func (o *AgentsMeToolCallsRequestCallsItem) SetOccurredAt(v time.Time)`

SetOccurredAt sets OccurredAt field to given value.

### HasOccurredAt

`func (o *AgentsMeToolCallsRequestCallsItem) HasOccurredAt() bool`

HasOccurredAt returns a boolean if a field has been set.

### GetErrorCode

`func (o *AgentsMeToolCallsRequestCallsItem) GetErrorCode() string`

GetErrorCode returns the ErrorCode field if non-nil, zero value otherwise.

### GetErrorCodeOk

`func (o *AgentsMeToolCallsRequestCallsItem) GetErrorCodeOk() (*string, bool)`

GetErrorCodeOk returns a tuple with the ErrorCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrorCode

`func (o *AgentsMeToolCallsRequestCallsItem) SetErrorCode(v string)`

SetErrorCode sets ErrorCode field to given value.

### HasErrorCode

`func (o *AgentsMeToolCallsRequestCallsItem) HasErrorCode() bool`

HasErrorCode returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


