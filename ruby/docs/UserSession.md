# LumoAuthApiClient::UserSession

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **user_email** | **String** |  | [optional] |
| **ip_address** | **String** |  | [optional] |
| **user_agent** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **last_activity_at** | **Time** |  | [optional] |
| **expires_at** | **Time** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::UserSession.new(
  id: null,
  user_id: null,
  user_email: null,
  ip_address: null,
  user_agent: null,
  created_at: null,
  last_activity_at: null,
  expires_at: null,
  is_active: null
)
```

