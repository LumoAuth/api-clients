# CreateTaskRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Optional human-readable task name. | [optional] [default to undefined]
**type** | **string** | Optional task type for categorization. | [optional] [default to undefined]
**parent_task_id** | **string** | Optional parent task id for nested agent chains. | [optional] [default to undefined]
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
