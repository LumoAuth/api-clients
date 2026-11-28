# OAuthClient

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | 
**clientId** | **String** |  | 
**name** | **String** |  | 
**isConfidential** | **Bool** |  | 
**isPublic** | **Bool** |  | 
**isActive** | **Bool** |  | 
**requiresPkce** | **Bool** |  | 
**createdAt** | **Date** |  | 
**redirectUris** | **[String]** | Detailed responses only | [optional] 
**scopes** | **[String]** | Detailed responses only | [optional] 
**grantTypes** | **[String]** | Detailed responses only | [optional] 
**cibaEnabled** | **Bool** | Detailed responses only. Whether the client may use CIBA (backchannel authentication). | [optional] 
**allowedOrigins** | **[String]** | Detailed responses only. Browser CORS origins (scheme://host[:port]). | [optional] 
**postLogoutRedirectUris** | **[String]** | Detailed responses only. Addresses that the end-session endpoint may return to. | [optional] 
**frontchannelLogoutUri** | **String** | Detailed responses only. OIDC Front-Channel Logout address. | [optional] 
**backchannelLogoutUri** | **String** | Detailed responses only. OIDC Back-Channel Logout address. | [optional] 
**accessTokenFormat** | **String** | Detailed responses only. Format of the access tokens that the client receives. | [optional] 
**tokenEndpointAuthMethod** | **String** | Detailed responses only. | [optional] 
**jwksUri** | **String** | Detailed responses only. https address of the client&#39;s public keys. | [optional] 
**jwks** | **[String: AnyCodable]** | Detailed responses only. The client&#39;s public keys, inline. | [optional] 
**fapiMode** | **String** | Detailed responses only. FAPI 2.0 security profile. | [optional] 
**requirePar** | **Bool** | Detailed responses only. The stored switch; a FAPI profile requires PAR whatever it says. | [optional] 
**dpopBoundAccessTokens** | **Bool** | Detailed responses only. The stored switch; a FAPI profile requires DPoP whatever it says. | [optional] 
**attestationBasedAuthEnabled** | **Bool** | Detailed responses only. | [optional] 
**attesterIssuer** | **String** | Detailed responses only. | [optional] 
**attesterJwksUri** | **String** | Detailed responses only. | [optional] 
**tokenExchangeEnabled** | **Bool** | Detailed responses only. Whether the client may use token exchange (RFC 8693). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


