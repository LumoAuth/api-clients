# LumoAuthApiClient::IssueResourceTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent** | **String** | Agent identifier the resource token is bound to. | [optional] |
| **agent_jkt** | **String** | JWK thumbprint of the agent key (PoP binding). | [optional] |
| **scope** | **String** | Optional space-delimited requested scopes. | [optional] |
| **auth_request_url** | **String** | Optional auth request URL to embed in the token. | [optional] |
| **auth_server** | **String** | Optional auth server URL for the aud claim; defaults to this issuer. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::IssueResourceTokenRequest.new(
  agent: null,
  agent_jkt: null,
  scope: null,
  auth_request_url: null,
  auth_server: null
)
```

