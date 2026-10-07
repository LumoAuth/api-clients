# LumoAuthApiClient::AdminWebhooksDeliveriesListResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | Number of rows returned | [optional] |
| **dead_lettered_count** | **Integer** | Dead-lettered deliveries for this webhook (unfiltered) | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminWebhooksDeliveriesListResponseMeta.new(
  count: null,
  dead_lettered_count: null
)
```

