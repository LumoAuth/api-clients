# LumoAuthApiClient::CompleteTaskResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **completed_at** | **Time** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CompleteTaskResponse.new(
  task_id: null,
  status: completed,
  completed_at: null
)
```

