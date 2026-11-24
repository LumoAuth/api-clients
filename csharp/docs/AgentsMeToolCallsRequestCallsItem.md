# LumoAuth.ApiClient.Model.AgentsMeToolCallsRequestCallsItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Tool** | **string** |  | 
**ServerId** | **string** | The MCP server the tool belongs to, when it has one. | [optional] 
**Decision** | **string** |  | 
**Outcome** | **string** | not_run for a call that was denied, refused, expired or blocked (the default for those). | [optional] 
**DurationMs** | **int** |  | [optional] 
**ArgumentsSha256** | **string** | SHA-256 of the arguments as the host serialized them. The arguments themselves are never sent. | [optional] 
**AuditId** | **string** | audit_id of the Ask API answer that allowed or denied the call. | [optional] 
**OccurredAt** | **DateTime** | When the call ran; within the last 24 hours. | [optional] 
**ErrorCode** | **string** | A short code for a failed call, never a message. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

