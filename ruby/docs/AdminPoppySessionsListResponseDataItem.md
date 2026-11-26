# LumoAuthApiClient::AdminPoppySessionsListResponseDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **client_id** | **String** |  | [optional] |
| **client_name** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **agent_id** | **String** |  | [optional] |
| **signed_in** | **Boolean** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **ended_reason** | **String** |  | [optional] |
| **protocol_version** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **last_seen_at** | **Time** |  | [optional] |
| **ended_at** | **Time** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminPoppySessionsListResponseDataItem.new(
  id: null,
  client_id: null,
  client_name: null,
  user_id: null,
  agent_id: null,
  signed_in: null,
  account_id: null,
  status: null,
  ended_reason: null,
  protocol_version: 1.0,
  created_at: null,
  last_seen_at: null,
  ended_at: null
)
```

