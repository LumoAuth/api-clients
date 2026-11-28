# CreateTaskResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**task_id** | **string** |  | [optional] [default to undefined]
**parent_task_id** | **string** | The parent task, or null for a task without one. | [optional] [default to undefined]
**caep_session_id** | **string** |  | [optional] [default to undefined]
**expires_at** | **string** |  | [optional] [default to undefined]
**agent_id** | **string** |  | [optional] [default to undefined]
**agent** | **object** |  | [optional] [default to undefined]
**on_behalf_of** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { CreateTaskResponse } from '@lumoauth/api-client';

const instance: CreateTaskResponse = {
    task_id,
    parent_task_id,
    caep_session_id,
    expires_at,
    agent_id,
    agent,
    on_behalf_of,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
