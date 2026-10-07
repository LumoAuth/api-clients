# LumoAuthApiClient::PutAdminWebhooksUpdateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Webhook**](Webhook.md) |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PutAdminWebhooksUpdateResponse.new(
  data: null,
  message: Webhook updated successfully
)
```

