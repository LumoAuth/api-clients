# LumoAuthApiClient::OAuthAccessToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **client_id** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **scopes** | **Array&lt;String&gt;** |  | [optional] |
| **revoked** | **Boolean** |  | [optional] |
| **expires_at** | **Time** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **is_expired** | **Boolean** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::OAuthAccessToken.new(
  id: null,
  client_id: null,
  user_id: null,
  scopes: null,
  revoked: null,
  expires_at: null,
  created_at: null,
  is_expired: null
)
```

