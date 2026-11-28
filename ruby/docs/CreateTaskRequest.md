# LumoAuthApiClient::CreateTaskRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Optional human-readable task name. | [optional] |
| **type** | **String** | Optional task type for categorization. | [optional] |
| **parent_task_id** | **String** | Optional. The task_id of an open task of this organization, for a task that is one step of that task. The new task expires no later than its parent and ends when the parent ends. A chain holds at most 5 tasks. | [optional] |
| **on_behalf_of** | **String** | Optional delegation user email (requires delegation permission). | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CreateTaskRequest.new(
  name: Research Task #123,
  type: research,
  parent_task_id: null,
  on_behalf_of: null
)
```

