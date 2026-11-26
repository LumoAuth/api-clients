# LumoAuthApiClient::PoppyTasksResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **excluded_tasks** | [**Array&lt;PoppyTasksResponseExcludedTasksInner&gt;**](PoppyTasksResponseExcludedTasksInner.md) |  | [optional] |
| **skill_index** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **feedback** | [**PoppyDocumentTasks**](PoppyDocumentTasks.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PoppyTasksResponse.new(
  excluded_tasks: null,
  skill_index: null,
  feedback: null
)
```

