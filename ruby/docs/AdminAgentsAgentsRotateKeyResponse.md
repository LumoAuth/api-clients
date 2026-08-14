# LumoAuthApiClient::AdminAgentsAgentsRotateKeyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **api_key** | **String** | The new plaintext API key — shown only in this response. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAgentsAgentsRotateKeyResponse.new(
  message: Agent API key rotated,
  api_key: null
)
```

