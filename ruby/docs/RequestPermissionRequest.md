# LumoAuthApiClient::RequestPermissionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **String** | Required. Task context. | [optional] |
| **authorization_details** | **Object** | Required. RFC 9396 authorization_details object (needs a type). | [optional] |
| **justification** | **String** | Optional human-readable justification. | [optional] |
| **requested_ttl** | **Integer** | Optional TTL in seconds (default 600). | [optional] |
| **callback_url** | **String** | Optional HITL notification webhook. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::RequestPermissionRequest.new(
  task_id: task_abc123,
  authorization_details: null,
  justification: null,
  requested_ttl: 300,
  callback_url: null
)
```

