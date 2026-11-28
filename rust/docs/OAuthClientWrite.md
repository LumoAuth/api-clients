# OAuthClientWrite

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | Option<**String**> |  | [optional]
**redirect_uris** | Option<**Vec<String>**> | https, an http loopback address, or a custom native scheme. | [optional]
**scopes** | Option<**Vec<String>**> |  | [optional]
**grant_types** | Option<**Vec<String>**> | At least one grant type. | [optional]
**is_confidential** | Option<**bool**> | false makes a public client (no secret, PKCE). | [optional]
**requires_pkce** | Option<**bool**> |  | [optional]
**ciba_enabled** | Option<**bool**> | Needs a confidential client and the ciba plan feature. | [optional]
**allowed_origins** | Option<**Vec<String>**> | Browser CORS origins: http or https, a host, no path, query or fragment. Stored as scheme://host[:port]. | [optional]
**post_logout_redirect_uris** | Option<**Vec<String>**> | Addresses that the end-session endpoint may return to (post_logout_redirect_uri). Same schemes as redirectUris. | [optional]
**frontchannel_logout_uri** | Option<**String**> | OIDC Front-Channel Logout 1.0: scheme, host and port of a redirect URI, no fragment. | [optional]
**backchannel_logout_uri** | Option<**String**> | OIDC Back-Channel Logout 1.0: an https address without a fragment. Logout tokens are sent only to public addresses. | [optional]
**access_token_format** | Option<**String**> | Format of the access tokens that the client receives. | [optional]
**token_endpoint_auth_method** | Option<**String**> | How the client authenticates at the token endpoint. client_secret_post is stored as client_secret_basic (both are accepted). A public client cannot use private_key_jwt; with a secret method it is stored as none. private_key_jwt needs jwksUri or jwks. | [optional]
**jwks_uri** | Option<**String**> | https address of the client's public keys. | [optional]
**jwks** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | The client's public keys, inline (a JWKS with public keys only). | [optional]
**fapi_mode** | Option<**String**> | FAPI 2.0 security profile (plan feature fapi). A profile needs private_key_jwt with keys, or attestation-based client authentication, and requires PAR and DPoP. | [optional]
**require_par** | Option<**bool**> | Require pushed authorization requests (RFC 9126). | [optional]
**dpop_bound_access_tokens** | Option<**bool**> | Require DPoP-bound access tokens (RFC 9449; plan feature dpop). | [optional]
**attestation_based_auth_enabled** | Option<**bool**> | Attestation-based client authentication; needs attesterIssuer and attesterJwksUri. | [optional]
**attester_issuer** | Option<**String**> |  | [optional]
**attester_jwks_uri** | Option<**String**> | https address of the attester's public keys. | [optional]
**token_exchange_enabled** | Option<**bool**> | Allow token exchange (RFC 8693) for this client. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


