

# OAuthClient


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **Integer** |  |  |
|**clientId** | **String** |  |  |
|**name** | **String** |  |  |
|**isConfidential** | **Boolean** |  |  |
|**isPublic** | **Boolean** |  |  |
|**isActive** | **Boolean** |  |  |
|**requiresPkce** | **Boolean** |  |  |
|**createdAt** | **OffsetDateTime** |  |  |
|**redirectUris** | **List&lt;String&gt;** | Detailed responses only |  [optional] |
|**scopes** | **List&lt;String&gt;** | Detailed responses only |  [optional] |
|**grantTypes** | **List&lt;String&gt;** | Detailed responses only |  [optional] |
|**cibaEnabled** | **Boolean** | Detailed responses only. Whether the client may use CIBA (backchannel authentication). |  [optional] |
|**allowedOrigins** | **List&lt;String&gt;** | Detailed responses only. Browser CORS origins (scheme://host[:port]). |  [optional] |
|**postLogoutRedirectUris** | **List&lt;String&gt;** | Detailed responses only. Addresses that the end-session endpoint may return to. |  [optional] |
|**frontchannelLogoutUri** | **String** | Detailed responses only. OIDC Front-Channel Logout address. |  [optional] |
|**backchannelLogoutUri** | **String** | Detailed responses only. OIDC Back-Channel Logout address. |  [optional] |
|**accessTokenFormat** | [**AccessTokenFormatEnum**](#AccessTokenFormatEnum) | Detailed responses only. Format of the access tokens that the client receives. |  [optional] |
|**tokenEndpointAuthMethod** | [**TokenEndpointAuthMethodEnum**](#TokenEndpointAuthMethodEnum) | Detailed responses only. |  [optional] |
|**jwksUri** | **String** | Detailed responses only. https address of the client&#39;s public keys. |  [optional] |
|**jwks** | **Map&lt;String, Object&gt;** | Detailed responses only. The client&#39;s public keys, inline. |  [optional] |
|**fapiMode** | [**FapiModeEnum**](#FapiModeEnum) | Detailed responses only. FAPI 2.0 security profile. |  [optional] |
|**requirePar** | **Boolean** | Detailed responses only. The stored switch; a FAPI profile requires PAR whatever it says. |  [optional] |
|**dpopBoundAccessTokens** | **Boolean** | Detailed responses only. The stored switch; a FAPI profile requires DPoP whatever it says. |  [optional] |
|**attestationBasedAuthEnabled** | **Boolean** | Detailed responses only. |  [optional] |
|**attesterIssuer** | **String** | Detailed responses only. |  [optional] |
|**attesterJwksUri** | **String** | Detailed responses only. |  [optional] |
|**tokenExchangeEnabled** | **Boolean** | Detailed responses only. Whether the client may use token exchange (RFC 8693). |  [optional] |



## Enum: AccessTokenFormatEnum

| Name | Value |
|---- | -----|
| OPAQUE | &quot;opaque&quot; |
| JWT | &quot;jwt&quot; |



## Enum: TokenEndpointAuthMethodEnum

| Name | Value |
|---- | -----|
| CLIENT_SECRET_BASIC | &quot;client_secret_basic&quot; |
| PRIVATE_KEY_JWT | &quot;private_key_jwt&quot; |
| NONE | &quot;none&quot; |
| ATTEST_JWT_CLIENT_AUTH | &quot;attest_jwt_client_auth&quot; |



## Enum: FapiModeEnum

| Name | Value |
|---- | -----|
| DISABLED | &quot;disabled&quot; |
| FAPI2_BASELINE | &quot;fapi2_baseline&quot; |
| FAPI2_ADVANCED | &quot;fapi2_advanced&quot; |



