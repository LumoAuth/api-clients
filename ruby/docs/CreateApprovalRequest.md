# LumoAuthApiClient::CreateApprovalRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **String** | Agent task identifier (&lt;&#x3D;128 chars). | [optional] |
| **reason** | **String** | Human-readable action description (&lt;&#x3D;480 chars). | [optional] |
| **impact** | **String** | One of low, medium, high, critical. | [optional] |
| **on_behalf_of** | **String** | User id or email the agent acts for (delegation required). | [optional] |
| **meta** | **Object** | Optional action metadata. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CreateApprovalRequest.new(
  task_id: task_abc123,
  reason: null,
  impact: medium,
  on_behalf_of: null,
  meta: null
)
```

