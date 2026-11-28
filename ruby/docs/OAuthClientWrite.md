# LumoAuthApiClient::OAuthClientWrite

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **redirect_uris** | **Array&lt;String&gt;** | https, an http loopback address, or a custom native scheme. | [optional] |
| **scopes** | **Array&lt;String&gt;** |  | [optional] |
| **grant_types** | **Array&lt;String&gt;** | At least one grant type. | [optional] |
| **is_confidential** | **Boolean** | false makes a public client (no secret, PKCE). | [optional] |
| **requires_pkce** | **Boolean** |  | [optional] |
| **ciba_enabled** | **Boolean** | Needs a confidential client and the ciba plan feature. | [optional] |
| **allowed_origins** | **Array&lt;String&gt;** | Browser CORS origins: http or https, a host, no path, query or fragment. Stored as scheme://host[:port]. | [optional] |
| **post_logout_redirect_uris** | **Array&lt;String&gt;** | Addresses that the end-session endpoint may return to (post_logout_redirect_uri). Same schemes as redirectUris. | [optional] |
| **frontchannel_logout_uri** | **String** | OIDC Front-Channel Logout 1.0: scheme, host and port of a redirect URI, no fragment. | [optional] |
| **backchannel_logout_uri** | **String** | OIDC Back-Channel Logout 1.0: an https address without a fragment. Logout tokens are sent only to public addresses. | [optional] |
| **access_token_format** | **String** | Format of the access tokens that the client receives. | [optional] |
| **token_endpoint_auth_method** | **String** | How the client authenticates at the token endpoint. client_secret_post is stored as client_secret_basic (both are accepted). A public client cannot use private_key_jwt; with a secret method it is stored as none. private_key_jwt needs jwksUri or jwks. | [optional] |
| **jwks_uri** | **String** | https address of the client&#39;s public keys. | [optional] |
| **jwks** | **Hash&lt;String, Object&gt;** | The client&#39;s public keys, inline (a JWKS with public keys only). | [optional] |
| **fapi_mode** | **String** | FAPI 2.0 security profile (plan feature fapi). A profile needs private_key_jwt with keys, or attestation-based client authentication, and requires PAR and DPoP. | [optional] |
| **require_par** | **Boolean** | Require pushed authorization requests (RFC 9126). | [optional] |
| **dpop_bound_access_tokens** | **Boolean** | Require DPoP-bound access tokens (RFC 9449; plan feature dpop). | [optional] |
| **attestation_based_auth_enabled** | **Boolean** | Attestation-based client authentication; needs attesterIssuer and attesterJwksUri. | [optional] |
| **attester_issuer** | **String** |  | [optional] |
| **attester_jwks_uri** | **String** | https address of the attester&#39;s public keys. | [optional] |
| **token_exchange_enabled** | **Boolean** | Allow token exchange (RFC 8693) for this client. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::OAuthClientWrite.new(
  name: Acme Shop,
  redirect_uris: [&quot;https://shop.example.com/callback&quot;],
  scopes: [&quot;openid&quot;,&quot;profile&quot;,&quot;email&quot;],
  grant_types: [&quot;authorization_code&quot;,&quot;refresh_token&quot;],
  is_confidential: null,
  requires_pkce: null,
  ciba_enabled: null,
  allowed_origins: [&quot;https://shop.example.com&quot;],
  post_logout_redirect_uris: [&quot;https://shop.example.com/&quot;],
  frontchannel_logout_uri: https://shop.example.com/logout/frontchannel,
  backchannel_logout_uri: https://shop.example.com/logout/backchannel,
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
  token_exchange_enabled: null
)
```

