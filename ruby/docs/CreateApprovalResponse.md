# LumoAuthApiClient::CreateApprovalResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **approval_token** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **expires_at** | **Time** |  | [optional] |
| **task_id** | **String** |  | [optional] |
| **impact** | **String** |  | [optional] |
| **delivery** | **Array&lt;String&gt;** | Where the request went: &#x60;push&#x60; (the LumoAuth app), &#x60;slack&#x60;, &#x60;discord&#x60;. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CreateApprovalResponse.new(
  approval_token: null,
  status: pending,
  expires_at: null,
  task_id: null,
  impact: null,
  delivery: null
)
```

