# # CreateTaskRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Optional human-readable task name. | [optional]
**type** | **string** | Optional task type for categorization. | [optional]
**parentTaskId** | **string** | Optional. The task_id of an open task of this organization, for a task that is one step of that task. The new task expires no later than its parent and ends when the parent ends. A chain holds at most 5 tasks. | [optional]
**onBehalfOf** | **string** | Optional delegation user email (requires delegation permission). | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
