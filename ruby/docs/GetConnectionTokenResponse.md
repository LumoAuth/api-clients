# LumoAuthApiClient::GetConnectionTokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** |  |  |
| **token_type** | **String** |  |  |
| **expires_at** | **Time** | RFC 3339; null when the provider token does not expire. |  |
| **scopes** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetConnectionTokenResponse.new(
  access_token: null,
  token_type: null,
  expires_at: null,
  scopes: null
)
```

