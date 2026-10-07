# LumoAuthApiClient::WebhookSecretIssued

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **secret** | **String** | HMAC signing secret, returned only at creation | [optional] |
| **_note** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::WebhookSecretIssued.new(
  secret: null,
  _note: Store the secret securely for signature verification. It will not be shown again.
)
```

