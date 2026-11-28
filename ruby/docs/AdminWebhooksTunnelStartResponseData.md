# LumoAuthApiClient::AdminWebhooksTunnelStartResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **Integer** |  | [optional] |
| **session_id** | **String** |  | [optional] |
| **tunnel_url** | **String** |  | [optional] |
| **signing_secret** | **String** | The secret that signs the tunnel&#39;s deliveries (X-LumoAuth-Signature). Shown once. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminWebhooksTunnelStartResponseData.new(
  webhook_id: null,
  session_id: 1f3a9c2b7e4d5a60,
  tunnel_url: tunnel://1f3a9c2b7e4d5a60,
  signing_secret: null
)
```

