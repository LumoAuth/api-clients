# LumoAuthApiClient::AuditLogEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **created_at** | **Time** |  |  |
| **event_type** | **String** |  | [optional] |
| **action** | **String** |  | [optional] |
| **severity** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **actor_id** | **String** |  | [optional] |
| **actor_name** | **String** |  | [optional] |
| **actor_type** | **String** |  | [optional] |
| **auth_method** | **String** |  | [optional] |
| **target_type** | **String** |  | [optional] |
| **target_id** | **String** |  | [optional] |
| **target_name** | **String** |  | [optional] |
| **ip_address** | **String** |  | [optional] |
| **event_time** | **Time** | Detailed responses only | [optional] |
| **duration_ms** | **Integer** | Detailed responses only | [optional] |
| **initiated_by** | **String** | Detailed responses only | [optional] |
| **client_id** | **String** | Detailed responses only | [optional] |
| **user_agent** | **String** | Detailed responses only | [optional] |
| **geo_location** | **Hash&lt;String, Object&gt;** | Detailed responses only | [optional] |
| **session_id** | **String** | Detailed responses only | [optional] |
| **request_id** | **String** | Detailed responses only | [optional] |
| **status** | **String** | Detailed responses only | [optional] |
| **status_reason** | **String** | Detailed responses only | [optional] |
| **old_value** | **Hash&lt;String, Object&gt;** | Detailed responses only | [optional] |
| **new_value** | **Hash&lt;String, Object&gt;** | Detailed responses only | [optional] |
| **changes** | **Hash&lt;String, Object&gt;** | Detailed responses only | [optional] |
| **context** | **Hash&lt;String, Object&gt;** | Detailed responses only | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AuditLogEntry.new(
  id: null,
  created_at: null,
  event_type: null,
  action: null,
  severity: null,
  message: null,
  actor_id: null,
  actor_name: null,
  actor_type: null,
  auth_method: null,
  target_type: null,
  target_id: null,
  target_name: null,
  ip_address: null,
  event_time: null,
  duration_ms: null,
  initiated_by: null,
  client_id: null,
  user_agent: null,
  geo_location: null,
  session_id: null,
  request_id: null,
  status: null,
  status_reason: null,
  old_value: null,
  new_value: null,
  changes: null,
  context: null
)
```

