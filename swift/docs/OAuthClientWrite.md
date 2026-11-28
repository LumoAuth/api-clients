# OAuthClientWrite

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**redirectUris** | **[String]** | https, an http loopback address, or a custom native scheme. | [optional] 
**scopes** | **[String]** |  | [optional] 
**grantTypes** | **[String]** | At least one grant type. | [optional] 
**isConfidential** | **Bool** | false makes a public client (no secret, PKCE). | [optional] 
**requiresPkce** | **Bool** |  | [optional] 
**cibaEnabled** | **Bool** | Needs a confidential client and the ciba plan feature. | [optional] 
**allowedOrigins** | **[String]** | Browser CORS origins: http or https, a host, no path, query or fragment. Stored as scheme://host[:port]. | [optional] 
**postLogoutRedirectUris** | **[String]** | Addresses that the end-session endpoint may return to (post_logout_redirect_uri). Same schemes as redirectUris. | [optional] 
**frontchannelLogoutUri** | **String** | OIDC Front-Channel Logout 1.0: scheme, host and port of a redirect URI, no fragment. | [optional] 
**backchannelLogoutUri** | **String** | OIDC Back-Channel Logout 1.0: an https address without a fragment. Logout tokens are sent only to public addresses. | [optional] 
**accessTokenFormat** | **String** | Format of the access tokens that the client receives. | [optional] 
**tokenEndpointAuthMethod** | **String** | How the client authenticates at the token endpoint. client_secret_post is stored as client_secret_basic (both are accepted). A public client cannot use private_key_jwt; with a secret method it is stored as none. private_key_jwt needs jwksUri or jwks. | [optional] 
**jwksUri** | **String** | https address of the client&#39;s public keys. | [optional] 
**jwks** | **[String: AnyCodable]** | The client&#39;s public keys, inline (a JWKS with public keys only). | [optional] 
**fapiMode** | **String** | FAPI 2.0 security profile (plan feature fapi). A profile needs private_key_jwt with keys, or attestation-based client authentication, requires PAR and DPoP and turns requirePar and dpopBoundAccessTokens on. Setting it to disabled turns both off again unless the same request sets them. | [optional] 
**requirePar** | **Bool** | Require pushed authorization requests (RFC 9126). | [optional] 
**dpopBoundAccessTokens** | **Bool** | Require DPoP-bound access tokens (RFC 9449; plan feature dpop). | [optional] 
**attestationBasedAuthEnabled** | **Bool** | Attestation-based client authentication; needs attesterIssuer and attesterJwksUri. | [optional] 
**attesterIssuer** | **String** |  | [optional] 
**attesterJwksUri** | **String** | https address of the attester&#39;s public keys. | [optional] 
**tokenExchangeEnabled** | **Bool** | Allow token exchange (RFC 8693) for this client. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


