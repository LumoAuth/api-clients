# AgentsMeToolCallsRequestCallsItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tool** | **string** |  | [default to undefined]
**server_id** | **string** | The MCP server the tool belongs to, when it has one. | [optional] [default to undefined]
**decision** | **string** |  | [default to undefined]
**outcome** | **string** | not_run for a call that was denied, refused, expired or blocked (the default for those). | [optional] [default to undefined]
**duration_ms** | **number** |  | [optional] [default to undefined]
**arguments_sha256** | **string** | SHA-256 of the arguments as the host serialized them. The arguments themselves are never sent. | [optional] [default to undefined]
**audit_id** | **string** | audit_id of the Ask API answer that allowed or denied the call. | [optional] [default to undefined]
**occurred_at** | **string** | When the call ran; within the last 24 hours. | [optional] [default to undefined]
**error_code** | **string** | A short code for a failed call, never a message. | [optional] [default to undefined]

## Example

```typescript
import { AgentsMeToolCallsRequestCallsItem } from '@lumoauth/api-client';

const instance: AgentsMeToolCallsRequestCallsItem = {
    tool,
    server_id,
    decision,
    outcome,
    duration_ms,
    arguments_sha256,
    audit_id,
    occurred_at,
    error_code,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
