# # OAuthClientWrite

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [optional]
**redirectUris** | **string[]** | https, an http loopback address, or a custom native scheme. | [optional]
**scopes** | **string[]** |  | [optional]
**grantTypes** | **string[]** | At least one grant type. | [optional]
**isConfidential** | **bool** | false makes a public client (no secret, PKCE). | [optional]
**requiresPkce** | **bool** |  | [optional]
**cibaEnabled** | **bool** | Needs a confidential client and the ciba plan feature. | [optional]
**allowedOrigins** | **string[]** | Browser CORS origins: http or https, a host, no path, query or fragment. Stored as scheme://host[:port]. | [optional]
**postLogoutRedirectUris** | **string[]** | Addresses that the end-session endpoint may return to (post_logout_redirect_uri). Same schemes as redirectUris. | [optional]
**frontchannelLogoutUri** | **string** | OIDC Front-Channel Logout 1.0: scheme, host and port of a redirect URI, no fragment. | [optional]
**backchannelLogoutUri** | **string** | OIDC Back-Channel Logout 1.0: an https address without a fragment. Logout tokens are sent only to public addresses. | [optional]
**accessTokenFormat** | **string** | Format of the access tokens that the client receives. | [optional]
**tokenEndpointAuthMethod** | **string** | How the client authenticates at the token endpoint. client_secret_post is stored as client_secret_basic (both are accepted). A public client cannot use private_key_jwt; with a secret method it is stored as none. private_key_jwt needs jwksUri or jwks. | [optional]
**jwksUri** | **string** | https address of the client&#39;s public keys. | [optional]
**jwks** | **array<string,mixed>** | The client&#39;s public keys, inline (a JWKS with public keys only). | [optional]
**fapiMode** | **string** | FAPI 2.0 security profile (plan feature fapi). A profile needs private_key_jwt with keys, or attestation-based client authentication, and requires PAR and DPoP. | [optional]
**requirePar** | **bool** | Require pushed authorization requests (RFC 9126). | [optional]
**dpopBoundAccessTokens** | **bool** | Require DPoP-bound access tokens (RFC 9449; plan feature dpop). | [optional]
**attestationBasedAuthEnabled** | **bool** | Attestation-based client authentication; needs attesterIssuer and attesterJwksUri. | [optional]
**attesterIssuer** | **string** |  | [optional]
**attesterJwksUri** | **string** | https address of the attester&#39;s public keys. | [optional]
**tokenExchangeEnabled** | **bool** | Allow token exchange (RFC 8693) for this client. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
