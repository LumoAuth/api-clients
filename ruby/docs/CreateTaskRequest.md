# LumoAuthApiClient::CreateTaskRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Optional human-readable task name. | [optional] |
| **type** | **String** | Optional task type for categorization. | [optional] |
| **parent_task_id** | **String** | Optional parent task id for nested agent chains. | [optional] |
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

