# LumoAuthApiClient::AdminAgentsAgentsRotateKeyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **api_key** | **String** | The new plaintext API key — shown only in this response. | [optional] |
| **api_key_expires_at** | **Time** | When the new key expires; null &#x3D; never. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAgentsAgentsRotateKeyResponse.new(
  message: Agent API key rotated,
  api_key: null,
  api_key_expires_at: null
)
```

