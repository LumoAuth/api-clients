# LumoAuthApiClient::GetIssuerMetadataResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aauth_version** | **String** |  | [optional] |
| **issuer** | **String** |  | [optional] |
| **jwks_uri** | **String** |  | [optional] |
| **agent_token_endpoint** | **String** |  | [optional] |
| **agent_auth_endpoint** | **String** |  | [optional] |
| **agent_signing_algs_supported** | **Array&lt;String&gt;** |  | [optional] |
| **token_signing_algs_supported** | **Array&lt;String&gt;** |  | [optional] |
| **request_types_supported** | **Array&lt;String&gt;** |  | [optional] |
| **scopes_supported** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetIssuerMetadataResponse.new(
  aauth_version: 1.0,
  issuer: null,
  jwks_uri: null,
  agent_token_endpoint: null,
  agent_auth_endpoint: null,
  agent_signing_algs_supported: null,
  token_signing_algs_supported: null,
  request_types_supported: null,
  scopes_supported: null
)
```

