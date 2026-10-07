# LumoAuthApiClient::AdminWebhooksDeliveryReplayResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**WebhookDelivery**](WebhookDelivery.md) |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminWebhooksDeliveryReplayResponse.new(
  data: null,
  message: Delivery re-enqueued
)
```

