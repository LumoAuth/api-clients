# LumoAuthApiClient::OAuthClientSecretIssued

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **secret** | **String** | Plaintext client secret — returned only once, never retrievable again | [optional] |
| **_note** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::OAuthClientSecretIssued.new(
  secret: null,
  _note: Store the secret securely. It will not be shown again.
)
```

