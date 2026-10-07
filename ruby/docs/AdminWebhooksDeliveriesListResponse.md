# LumoAuthApiClient::AdminWebhooksDeliveriesListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;WebhookDelivery&gt;**](WebhookDelivery.md) |  | [optional] |
| **meta** | [**AdminWebhooksDeliveriesListResponseMeta**](AdminWebhooksDeliveriesListResponseMeta.md) |  | [optional] |
| **pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminWebhooksDeliveriesListResponse.new(
  data: null,
  meta: null,
  pagination: null
)
```

