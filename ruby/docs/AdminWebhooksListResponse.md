# LumoAuthApiClient::AdminWebhooksListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Webhook&gt;**](Webhook.md) |  | [optional] |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **resource_type** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminWebhooksListResponse.new(
  data: null,
  meta: null,
  pagination: null,
  resource_type: webhooks
)
```

