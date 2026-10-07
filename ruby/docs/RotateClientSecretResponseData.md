# LumoAuthApiClient::RotateClientSecretResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | The identifier used in the request path | [optional] |
| **secret** | **String** | New plaintext client secret — returned only once | [optional] |
| **_note** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::RotateClientSecretResponseData.new(
  client_id: null,
  secret: null,
  _note: Store the new secret securely. It will not be shown again.
)
```

