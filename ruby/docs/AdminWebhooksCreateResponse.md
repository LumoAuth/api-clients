# LumoAuthApiClient::AdminWebhooksCreateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**AdminWebhooksCreateResponseData**](AdminWebhooksCreateResponseData.md) |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminWebhooksCreateResponse.new(
  data: null,
  message: Webhook created successfully
)
```

