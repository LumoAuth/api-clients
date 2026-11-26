# PoppyTasksResponse

The tasks response (Personal Agent Protocol, section 9).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**excluded_tasks** | [**Array&lt;PoppyTasksResponseExcludedTasksInner&gt;**](PoppyTasksResponseExcludedTasksInner.md) |  | [optional] [default to undefined]
**skill_index** | **{ [key: string]: any; }** |  | [optional] [default to undefined]
**feedback** | [**PoppyDocumentTasks**](PoppyDocumentTasks.md) |  | [optional] [default to undefined]

## Example

```typescript
import { PoppyTasksResponse } from '@lumoauth/api-client';

const instance: PoppyTasksResponse = {
    excluded_tasks,
    skill_index,
    feedback,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
