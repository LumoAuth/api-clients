# LumoAuth.ApiClient.Model.OAuthClientWrite
Fields of POST /admin/clients (name is required there) and PUT|PATCH /admin/clients/{clientId} (only the fields that are sent change). The browser and sign-out fields follow the rules of the portal forms; null clears one.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** |  | [optional] 
**RedirectUris** | **List&lt;string&gt;** | https, an http loopback address, or a custom native scheme. | [optional] 
**Scopes** | **List&lt;string&gt;** |  | [optional] 
**GrantTypes** | **List&lt;string&gt;** | At least one grant type. | [optional] 
**IsConfidential** | **bool** | false makes a public client (no secret, PKCE). | [optional] 
**RequiresPkce** | **bool** |  | [optional] 
**CibaEnabled** | **bool** | Needs a confidential client and the ciba plan feature. | [optional] 
**AllowedOrigins** | **List&lt;string&gt;** | Browser CORS origins: http or https, a host, no path, query or fragment. Stored as scheme://host[:port]. | [optional] 
**PostLogoutRedirectUris** | **List&lt;string&gt;** | Addresses that the end-session endpoint may return to (post_logout_redirect_uri). Same schemes as redirectUris. | [optional] 
**FrontchannelLogoutUri** | **string** | OIDC Front-Channel Logout 1.0: scheme, host and port of a redirect URI, no fragment. | [optional] 
**BackchannelLogoutUri** | **string** | OIDC Back-Channel Logout 1.0: an https address without a fragment. Logout tokens are sent only to public addresses. | [optional] 
**AccessTokenFormat** | **string** | Format of the access tokens that the client receives. | [optional] 
**TokenEndpointAuthMethod** | **string** | How the client authenticates at the token endpoint. client_secret_post is stored as client_secret_basic (both are accepted). A public client cannot use private_key_jwt; with a secret method it is stored as none. private_key_jwt needs jwksUri or jwks. | [optional] 
**JwksUri** | **string** | https address of the client&#39;s public keys. | [optional] 
**Jwks** | **Dictionary&lt;string, Object&gt;** | The client&#39;s public keys, inline (a JWKS with public keys only). | [optional] 
**FapiMode** | **string** | FAPI 2.0 security profile (plan feature fapi). A profile needs private_key_jwt with keys, or attestation-based client authentication, requires PAR and DPoP and turns requirePar and dpopBoundAccessTokens on. Setting it to disabled turns both off again unless the same request sets them. | [optional] 
**RequirePar** | **bool** | Require pushed authorization requests (RFC 9126). | [optional] 
**DpopBoundAccessTokens** | **bool** | Require DPoP-bound access tokens (RFC 9449; plan feature dpop). | [optional] 
**AttestationBasedAuthEnabled** | **bool** | Attestation-based client authentication; needs attesterIssuer and attesterJwksUri. | [optional] 
**AttesterIssuer** | **string** |  | [optional] 
**AttesterJwksUri** | **string** | https address of the attester&#39;s public keys. | [optional] 
**TokenExchangeEnabled** | **bool** | Allow token exchange (RFC 8693) for this client. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

