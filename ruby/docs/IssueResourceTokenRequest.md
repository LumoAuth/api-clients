# LumoAuthApiClient::IssueResourceTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource** | **String** | Required. The resource identifier of the calling resource (&#x60;resource_identifier&#x60; is accepted as well). The HTTP message signature is checked with the registered keys of this resource. |  |
| **agent** | **String** | Agent identifier the resource token is bound to. |  |
| **agent_jkt** | **String** | JWK thumbprint of the agent key (PoP binding). |  |
| **scope** | **String** | Optional space-delimited requested scopes. | [optional] |
| **auth_request_url** | **String** | Optional auth request URL to embed in the token. | [optional] |
| **auth_server** | **String** | Optional auth server URL for the aud claim; defaults to this issuer. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::IssueResourceTokenRequest.new(
  resource: null,
  agent: null,
  agent_jkt: null,
  scope: null,
  auth_request_url: null,
  auth_server: null
)
```

