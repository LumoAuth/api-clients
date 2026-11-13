# LumoAuthApiClient::AdminAgentsAgentsRotateKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key_expires_in_days** | **Integer** | Days until the new key expires; null for a key that never expires. | [optional] |
| **api_key_expires_at** | **Time** | Exact expiry of the new key (ISO 8601, in the future); null for never. Ignored when apiKeyExpiresInDays is sent. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAgentsAgentsRotateKeyRequest.new(
  api_key_expires_in_days: 90,
  api_key_expires_at: null
)
```

