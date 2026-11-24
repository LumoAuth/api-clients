# # AgentsMeToolCallsRequestCallsItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tool** | **string** |  |
**serverId** | **string** | The MCP server the tool belongs to, when it has one. | [optional]
**decision** | **string** |  |
**outcome** | **string** | not_run for a call that was denied, refused, expired or blocked (the default for those). | [optional]
**durationMs** | **int** |  | [optional]
**argumentsSha256** | **string** | SHA-256 of the arguments as the host serialized them. The arguments themselves are never sent. | [optional]
**auditId** | **string** | audit_id of the Ask API answer that allowed or denied the call. | [optional]
**occurredAt** | **\DateTime** | When the call ran; within the last 24 hours. | [optional]
**errorCode** | **string** | A short code for a failed call, never a message. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
