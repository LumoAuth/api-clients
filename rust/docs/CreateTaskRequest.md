# CreateTaskRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | Option<**String**> | Optional human-readable task name. | [optional]
**r#type** | Option<**String**> | Optional task type for categorization. | [optional]
**parent_task_id** | Option<**String**> | Optional. The task_id of an open task of this organization, for a task that is one step of that task. The new task expires no later than its parent and ends when the parent ends. A chain holds at most 5 tasks. | [optional]
**on_behalf_of** | Option<**String**> | Optional delegation user email (requires delegation permission). | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


