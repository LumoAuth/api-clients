# LumoAuthApiClient::CreateClientResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **client_id** | **String** |  |  |
| **name** | **String** |  |  |
| **is_confidential** | **Boolean** |  |  |
| **is_public** | **Boolean** |  |  |
| **is_active** | **Boolean** |  |  |
| **requires_pkce** | **Boolean** |  |  |
| **created_at** | **Time** |  |  |
| **redirect_uris** | **Array&lt;String&gt;** | Detailed responses only | [optional] |
| **scopes** | **Array&lt;String&gt;** | Detailed responses only | [optional] |
| **grant_types** | **Array&lt;String&gt;** | Detailed responses only | [optional] |
| **ciba_enabled** | **Boolean** | Detailed responses only. Whether the client may use CIBA (backchannel authentication). | [optional] |
| **allowed_origins** | **Array&lt;String&gt;** | Detailed responses only. Browser CORS origins (scheme://host[:port]). | [optional] |
| **post_logout_redirect_uris** | **Array&lt;String&gt;** | Detailed responses only. Addresses that the end-session endpoint may return to. | [optional] |
| **frontchannel_logout_uri** | **String** | Detailed responses only. OIDC Front-Channel Logout address. | [optional] |
| **backchannel_logout_uri** | **String** | Detailed responses only. OIDC Back-Channel Logout address. | [optional] |
| **access_token_format** | **String** | Detailed responses only. Format of the access tokens that the client receives. | [optional] |
| **token_endpoint_auth_method** | **String** | Detailed responses only. | [optional] |
| **jwks_uri** | **String** | Detailed responses only. https address of the client&#39;s public keys. | [optional] |
| **jwks** | **Hash&lt;String, Object&gt;** | Detailed responses only. The client&#39;s public keys, inline. | [optional] |
| **fapi_mode** | **String** | Detailed responses only. FAPI 2.0 security profile. | [optional] |
| **require_par** | **Boolean** | Detailed responses only. The stored switch; a FAPI profile requires PAR whatever it says. | [optional] |
| **dpop_bound_access_tokens** | **Boolean** | Detailed responses only. The stored switch; a FAPI profile requires DPoP whatever it says. | [optional] |
| **attestation_based_auth_enabled** | **Boolean** | Detailed responses only. | [optional] |
| **attester_issuer** | **String** | Detailed responses only. | [optional] |
| **attester_jwks_uri** | **String** | Detailed responses only. | [optional] |
| **token_exchange_enabled** | **Boolean** | Detailed responses only. Whether the client may use token exchange (RFC 8693). | [optional] |
| **secret** | **String** | Plaintext client secret — returned only once, never retrievable again. Absent for a public client | [optional] |
| **_note** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::CreateClientResponseData.new(
  id: null,
  client_id: null,
  name: null,
  is_confidential: null,
  is_public: null,
  is_active: null,
  requires_pkce: null,
  created_at: null,
  redirect_uris: null,
  scopes: null,
  grant_types: null,
  ciba_enabled: null,
  allowed_origins: null,
  post_logout_redirect_uris: null,
  frontchannel_logout_uri: null,
  backchannel_logout_uri: null,
  access_token_format: null,
  token_endpoint_auth_method: null,
  jwks_uri: null,
  jwks: null,
  fapi_mode: null,
  require_par: null,
  dpop_bound_access_tokens: null,
  attestation_based_auth_enabled: null,
  attester_issuer: null,
  attester_jwks_uri: null,
  token_exchange_enabled: null,
  secret: null,
  _note: Store the secret securely. It will not be shown again.
)
```

