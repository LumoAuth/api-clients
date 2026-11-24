# AgentsMeToolCallsRequestCallsItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tool** | **String** |  | 
**server_id** | Option<**String**> | The MCP server the tool belongs to, when it has one. | [optional]
**decision** | **String** |  | 
**outcome** | Option<**String**> | not_run for a call that was denied, refused, expired or blocked (the default for those). | [optional]
**duration_ms** | Option<**i32**> |  | [optional]
**arguments_sha256** | Option<**String**> | SHA-256 of the arguments as the host serialized them. The arguments themselves are never sent. | [optional]
**audit_id** | Option<**String**> | audit_id of the Ask API answer that allowed or denied the call. | [optional]
**occurred_at** | Option<**String**> | When the call ran; within the last 24 hours. | [optional]
**error_code** | Option<**String**> | A short code for a failed call, never a message. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


