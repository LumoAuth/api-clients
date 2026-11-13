# LumoAuthApiClient::AdminWebhooksTestResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **status_code** | **Integer** | HTTP status returned by the receiver | [optional] |
| **delivery_id** | **String** | Id of the delivery row (the &#x60;X-LumoAuth-Delivery&#x60; header of the request) | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminWebhooksTestResponse.new(
  success: null,
  status_code: null,
  delivery_id: null,
  message: Test webhook delivered successfully
)
```

