# LumoAuthApiClient::AuthorizeMcpRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** |  | [optional] |
| **tool** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AuthorizeMcpRequest.new(
  server_id: invoices,
  tool: send_payment_reminder
)
```

