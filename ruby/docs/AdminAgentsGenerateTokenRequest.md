# LumoAuthApiClient::AdminAgentsGenerateTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scopes** | **Array&lt;String&gt;** | Optional scopes to embed in the token. | [optional] |
| **ttl** | **Integer** | Optional token lifetime in seconds. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAgentsGenerateTokenRequest.new(
  scopes: null,
  ttl: null
)
```

