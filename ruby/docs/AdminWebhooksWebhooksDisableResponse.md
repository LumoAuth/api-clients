# LumoAuthApiClient::AdminWebhooksWebhooksDisableResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **webhook** | [**Webhook**](Webhook.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminWebhooksWebhooksDisableResponse.new(
  message: Webhook disabled,
  webhook: null
)
```

