# LumoAuthApiClient::AdminWebhooksDeliveryReplayResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delivery_id** | **String** | Id of the new delivery | [optional] |
| **replay_of** | **String** | Id of the delivery that was replayed | [optional] |
| **webhook_id** | **Integer** |  | [optional] |
| **event_name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminWebhooksDeliveryReplayResponseData.new(
  delivery_id: null,
  replay_of: null,
  webhook_id: null,
  event_name: null,
  status: pending
)
```

