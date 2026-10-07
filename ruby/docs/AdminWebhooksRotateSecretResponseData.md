# LumoAuthApiClient::AdminWebhooksRotateSecretResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **secret** | **String** |  | [optional] |
| **_note** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminWebhooksRotateSecretResponseData.new(
  id: null,
  secret: null,
  _note: Store the new secret securely. It will not be shown again.
)
```

