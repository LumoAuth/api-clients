

# OAuthClientWrite

Fields of POST /admin/clients (name is required there) and PUT|PATCH /admin/clients/{clientId} (only the fields that are sent change). The browser and sign-out fields follow the rules of the portal forms; null clears one.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**name** | **String** |  |  [optional] |
|**redirectUris** | **List&lt;String&gt;** | https, an http loopback address, or a custom native scheme. |  [optional] |
|**scopes** | **List&lt;String&gt;** |  |  [optional] |
|**grantTypes** | **List&lt;String&gt;** | At least one grant type. |  [optional] |
|**isConfidential** | **Boolean** | false makes a public client (no secret, PKCE). |  [optional] |
|**requiresPkce** | **Boolean** |  |  [optional] |
|**cibaEnabled** | **Boolean** | Needs a confidential client and the ciba plan feature. |  [optional] |
|**allowedOrigins** | **List&lt;String&gt;** | Browser CORS origins: http or https, a host, no path, query or fragment. Stored as scheme://host[:port]. |  [optional] |
|**postLogoutRedirectUris** | **List&lt;String&gt;** | Addresses that the end-session endpoint may return to (post_logout_redirect_uri). Same schemes as redirectUris. |  [optional] |
|**frontchannelLogoutUri** | **String** | OIDC Front-Channel Logout 1.0: scheme, host and port of a redirect URI, no fragment. |  [optional] |
|**backchannelLogoutUri** | **String** | OIDC Back-Channel Logout 1.0: an https address without a fragment. Logout tokens are sent only to public addresses. |  [optional] |
|**accessTokenFormat** | [**AccessTokenFormatEnum**](#AccessTokenFormatEnum) | Format of the access tokens that the client receives. |  [optional] |
|**tokenEndpointAuthMethod** | [**TokenEndpointAuthMethodEnum**](#TokenEndpointAuthMethodEnum) | How the client authenticates at the token endpoint. client_secret_post is stored as client_secret_basic (both are accepted). A public client cannot use private_key_jwt; with a secret method it is stored as none. private_key_jwt needs jwksUri or jwks. |  [optional] |
|**jwksUri** | **String** | https address of the client&#39;s public keys. |  [optional] |
|**jwks** | **Map&lt;String, Object&gt;** | The client&#39;s public keys, inline (a JWKS with public keys only). |  [optional] |
|**fapiMode** | [**FapiModeEnum**](#FapiModeEnum) | FAPI 2.0 security profile (plan feature fapi). A profile needs private_key_jwt with keys, or attestation-based client authentication, requires PAR and DPoP and turns requirePar and dpopBoundAccessTokens on. Setting it to disabled turns both off again unless the same request sets them. |  [optional] |
|**requirePar** | **Boolean** | Require pushed authorization requests (RFC 9126). |  [optional] |
|**dpopBoundAccessTokens** | **Boolean** | Require DPoP-bound access tokens (RFC 9449; plan feature dpop). |  [optional] |
|**attestationBasedAuthEnabled** | **Boolean** | Attestation-based client authentication; needs attesterIssuer and attesterJwksUri. |  [optional] |
|**attesterIssuer** | **String** |  |  [optional] |
|**attesterJwksUri** | **String** | https address of the attester&#39;s public keys. |  [optional] |
|**tokenExchangeEnabled** | **Boolean** | Allow token exchange (RFC 8693) for this client. |  [optional] |



## Enum: AccessTokenFormatEnum

| Name | Value |
|---- | -----|
| OPAQUE | &quot;opaque&quot; |
| JWT | &quot;jwt&quot; |



## Enum: TokenEndpointAuthMethodEnum

| Name | Value |
|---- | -----|
| CLIENT_SECRET_BASIC | &quot;client_secret_basic&quot; |
| CLIENT_SECRET_POST | &quot;client_secret_post&quot; |
| PRIVATE_KEY_JWT | &quot;private_key_jwt&quot; |
| NONE | &quot;none&quot; |



## Enum: FapiModeEnum

| Name | Value |
|---- | -----|
| DISABLED | &quot;disabled&quot; |
| FAPI2_BASELINE | &quot;fapi2_baseline&quot; |
| FAPI2_ADVANCED | &quot;fapi2_advanced&quot; |



