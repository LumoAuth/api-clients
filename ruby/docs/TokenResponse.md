# LumoAuthApiClient::TokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** |  |  |
| **token_type** | **String** | DPoP for sender-constrained tokens; N_A for ID-JAG and Txn-Token exchanges (RFC 8693 §2.2.1). |  |
| **expires_in** | **Integer** |  |  |
| **scope** | **String** | Space-separated granted scopes. Omitted for Txn-Token and for ID-JAG when no scopes were granted. | [optional] |
| **refresh_token** | **String** | Only when the client is registered for the refresh_token grant. | [optional] |
| **id_token** | **String** | OpenID Connect ID Token (JWT) when the openid scope was granted. | [optional] |
| **issued_token_type** | **String** | Token exchange only (RFC 8693). | [optional] |
| **authorization_details** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Agent-initiated CIBA only: the approved RFC 9396 authorization details. | [optional] |
| **jit_request_id** | **String** | Agent-initiated CIBA only. | [optional] |
| **task_id** | **String** | Agent-initiated CIBA only. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::TokenResponse.new(
  access_token: null,
  token_type: null,
  expires_in: 3600,
  scope: openid profile email,
  refresh_token: null,
  id_token: null,
  issued_token_type: null,
  authorization_details: null,
  jit_request_id: null,
  task_id: null
)
```

