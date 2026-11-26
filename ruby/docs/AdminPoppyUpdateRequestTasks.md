# LumoAuthApiClient::AdminPoppyUpdateRequestTasks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** |  | [optional] |
| **endpoint** | **String** |  | [optional] |
| **excluded_tasks** | **Array&lt;Hash&lt;String, Object&gt;&gt;** |  | [optional] |
| **feedback** | **String** |  | [optional] |
| **feedback_endpoint** | **String** |  | [optional] |
| **skill_index** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminPoppyUpdateRequestTasks.new(
  mode: null,
  endpoint: null,
  excluded_tasks: null,
  feedback: null,
  feedback_endpoint: null,
  skill_index: null
)
```

