# LumoAuthApiClient::CreateApprovalResponse202

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **task_id** | **String** |  | [optional] |
| **impact** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CreateApprovalResponse202.new(
  status: email_fallback_sent,
  message: null,
  task_id: null,
  impact: null
)
```

