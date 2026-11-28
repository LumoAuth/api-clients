# OAuthClientWrite

Fields of POST /admin/clients (name is required there) and PUT|PATCH /admin/clients/{clientId} (only the fields that are sent change). The browser and sign-out fields follow the rules of the portal forms; null clears one.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [optional] [default to undefined]
**redirectUris** | **Array&lt;string&gt;** | https, an http loopback address, or a custom native scheme. | [optional] [default to undefined]
**scopes** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**grantTypes** | **Array&lt;string&gt;** | At least one grant type. | [optional] [default to undefined]
**isConfidential** | **boolean** | false makes a public client (no secret, PKCE). | [optional] [default to undefined]
**requiresPkce** | **boolean** |  | [optional] [default to undefined]
**cibaEnabled** | **boolean** | Needs a confidential client and the ciba plan feature. | [optional] [default to undefined]
**allowedOrigins** | **Array&lt;string&gt;** | Browser CORS origins: http or https, a host, no path, query or fragment. Stored as scheme://host[:port]. | [optional] [default to undefined]
**postLogoutRedirectUris** | **Array&lt;string&gt;** | Addresses that the end-session endpoint may return to (post_logout_redirect_uri). Same schemes as redirectUris. | [optional] [default to undefined]
**frontchannelLogoutUri** | **string** | OIDC Front-Channel Logout 1.0: scheme, host and port of a redirect URI, no fragment. | [optional] [default to undefined]
**backchannelLogoutUri** | **string** | OIDC Back-Channel Logout 1.0: an https address without a fragment. Logout tokens are sent only to public addresses. | [optional] [default to undefined]
**accessTokenFormat** | **string** | Format of the access tokens that the client receives. | [optional] [default to undefined]
**tokenEndpointAuthMethod** | **string** | How the client authenticates at the token endpoint. client_secret_post is stored as client_secret_basic (both are accepted). A public client cannot use private_key_jwt; with a secret method it is stored as none. private_key_jwt needs jwksUri or jwks. | [optional] [default to undefined]
**jwksUri** | **string** | https address of the client\&#39;s public keys. | [optional] [default to undefined]
**jwks** | **{ [key: string]: any; }** | The client\&#39;s public keys, inline (a JWKS with public keys only). | [optional] [default to undefined]
**fapiMode** | **string** | FAPI 2.0 security profile (plan feature fapi). A profile needs private_key_jwt with keys, or attestation-based client authentication, requires PAR and DPoP and turns requirePar and dpopBoundAccessTokens on. Setting it to disabled turns both off again unless the same request sets them. | [optional] [default to undefined]
**requirePar** | **boolean** | Require pushed authorization requests (RFC 9126). | [optional] [default to undefined]
**dpopBoundAccessTokens** | **boolean** | Require DPoP-bound access tokens (RFC 9449; plan feature dpop). | [optional] [default to undefined]
**attestationBasedAuthEnabled** | **boolean** | Attestation-based client authentication; needs attesterIssuer and attesterJwksUri. | [optional] [default to undefined]
**attesterIssuer** | **string** |  | [optional] [default to undefined]
**attesterJwksUri** | **string** | https address of the attester\&#39;s public keys. | [optional] [default to undefined]
**tokenExchangeEnabled** | **boolean** | Allow token exchange (RFC 8693) for this client. | [optional] [default to undefined]

## Example

```typescript
import { OAuthClientWrite } from '@lumoauth/api-client';

const instance: OAuthClientWrite = {
    name,
    redirectUris,
    scopes,
    grantTypes,
    isConfidential,
    requiresPkce,
    cibaEnabled,
    allowedOrigins,
    postLogoutRedirectUris,
    frontchannelLogoutUri,
    backchannelLogoutUri,
    accessTokenFormat,
    tokenEndpointAuthMethod,
    jwksUri,
    jwks,
    fapiMode,
    requirePar,
    dpopBoundAccessTokens,
    attestationBasedAuthEnabled,
    attesterIssuer,
    attesterJwksUri,
    tokenExchangeEnabled,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
