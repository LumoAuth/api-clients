# LumoAuthApiClient::AdminAgentsGenerateTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expires_in** | **Integer** | Token lifetime in seconds. Default 3600, at most 2592000 (30 days). | [optional] |
| **scopes** | **Array&lt;String&gt;** | Optional subset of the agent&#39;s capabilities to carry in the token. Omit for all of them; a scope the agent does not have is rejected with 400. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAgentsGenerateTokenRequest.new(
  expires_in: 600,
  scopes: [&quot;invoices.read&quot;]
)
```

