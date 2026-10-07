# LumoAuthApiClient::AdminWebhooksRotateSecretResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**AdminWebhooksRotateSecretResponseData**](AdminWebhooksRotateSecretResponseData.md) |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminWebhooksRotateSecretResponse.new(
  data: null,
  message: Webhook secret rotated successfully
)
```

