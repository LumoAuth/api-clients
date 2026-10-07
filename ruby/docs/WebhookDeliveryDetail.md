# LumoAuthApiClient::WebhookDeliveryDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payload** | **Hash&lt;String, Object&gt;** | Event payload as sent to the receiver | [optional] |
| **attempts** | [**Array&lt;AdminWebhooksDeliveryShowResponseData1AttemptsItem&gt;**](AdminWebhooksDeliveryShowResponseData1AttemptsItem.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::WebhookDeliveryDetail.new(
  payload: null,
  attempts: null
)
```

