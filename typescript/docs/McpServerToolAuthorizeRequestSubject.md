# McpServerToolAuthorizeRequestSubject


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **string** |  | [default to undefined]
**id** | **string** | User UUID, or agent id (agt_…). For an MCP token, the user id is &#x60;sub&#x60;; for an agent token &#x60;sub&#x60; is &#x60;agent_&lt;id&gt;&#x60;. | [default to undefined]

## Example

```typescript
import { McpServerToolAuthorizeRequestSubject } from '@lumoauth/api-client';

const instance: McpServerToolAuthorizeRequestSubject = {
    type,
    id,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
