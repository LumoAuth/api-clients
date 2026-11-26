# CreateTaskRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Optional human-readable task name. | [optional] [default to undefined]
**type** | **string** | Optional task type for categorization. | [optional] [default to undefined]
**parent_task_id** | **string** | Optional. The task_id of an open task of this organization, for a task that is one step of that task. The new task expires no later than its parent and ends when the parent ends. A chain holds at most 5 tasks. | [optional] [default to undefined]
**on_behalf_of** | **string** | Optional delegation user email (requires delegation permission). | [optional] [default to undefined]

## Example

```typescript
import { CreateTaskRequest } from '@lumoauth/api-client';

const instance: CreateTaskRequest = {
    name,
    type,
    parent_task_id,
    on_behalf_of,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
