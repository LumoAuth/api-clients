# AgentsMeToolCallsRequestCallsItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tool** | **String** |  | 
**serverId** | **String** | The MCP server the tool belongs to, when it has one. | [optional] 
**decision** | **String** |  | 
**outcome** | **String** | not_run for a call that was denied, refused, expired or blocked (the default for those). | [optional] 
**durationMs** | **Int** |  | [optional] 
**argumentsSha256** | **String** | SHA-256 of the arguments as the host serialized them. The arguments themselves are never sent. | [optional] 
**auditId** | **String** | audit_id of the Ask API answer that allowed or denied the call. | [optional] 
**occurredAt** | **Date** | When the call ran; within the last 24 hours. | [optional] 
**errorCode** | **String** | A short code for a failed call, never a message. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


