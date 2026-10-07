# LumoAuthApiClient::AdminAgentsGenerateTokenResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** |  | [optional] |
| **token_type** | **String** |  | [optional] |
| **expires_in** | **Integer** |  | [optional] |
| **scopes** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAgentsGenerateTokenResponseData.new(
  access_token: eyJ...,
  token_type: Bearer,
  expires_in: 600,
  scopes: [&quot;invoices.read&quot;]
)
```

