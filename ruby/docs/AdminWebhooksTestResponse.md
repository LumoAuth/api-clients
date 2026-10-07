# LumoAuthApiClient::AdminWebhooksTestResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **status_code** | **Integer** | HTTP status returned by the receiver | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminWebhooksTestResponse.new(
  success: null,
  status_code: null,
  message: Test webhook delivered successfully
)
```

