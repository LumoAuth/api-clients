# LumoAuth.ApiClient.Model.OAuthClient

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int** |  | 
**ClientId** | **string** |  | 
**Name** | **string** |  | 
**IsConfidential** | **bool** |  | 
**IsPublic** | **bool** |  | 
**IsActive** | **bool** |  | 
**RequiresPkce** | **bool** |  | 
**CreatedAt** | **DateTime** |  | 
**RedirectUris** | **List&lt;string&gt;** | Detailed responses only | [optional] 
**Scopes** | **List&lt;string&gt;** | Detailed responses only | [optional] 
**GrantTypes** | **List&lt;string&gt;** | Detailed responses only | [optional] 
**CibaEnabled** | **bool** | Detailed responses only. Whether the client may use CIBA (backchannel authentication). | [optional] 
**AllowedOrigins** | **List&lt;string&gt;** | Detailed responses only. Browser CORS origins (scheme://host[:port]). | [optional] 
**PostLogoutRedirectUris** | **List&lt;string&gt;** | Detailed responses only. Addresses that the end-session endpoint may return to. | [optional] 
**FrontchannelLogoutUri** | **string** | Detailed responses only. OIDC Front-Channel Logout address. | [optional] 
**BackchannelLogoutUri** | **string** | Detailed responses only. OIDC Back-Channel Logout address. | [optional] 
**AccessTokenFormat** | **string** | Detailed responses only. Format of the access tokens that the client receives. | [optional] 
**TokenEndpointAuthMethod** | **string** | Detailed responses only. | [optional] 
**JwksUri** | **string** | Detailed responses only. https address of the client&#39;s public keys. | [optional] 
**Jwks** | **Dictionary&lt;string, Object&gt;** | Detailed responses only. The client&#39;s public keys, inline. | [optional] 
**FapiMode** | **string** | Detailed responses only. FAPI 2.0 security profile. | [optional] 
**RequirePar** | **bool** | Detailed responses only. The stored switch; a FAPI profile requires PAR whatever it says. | [optional] 
**DpopBoundAccessTokens** | **bool** | Detailed responses only. The stored switch; a FAPI profile requires DPoP whatever it says. | [optional] 
**AttestationBasedAuthEnabled** | **bool** | Detailed responses only. | [optional] 
**AttesterIssuer** | **string** | Detailed responses only. | [optional] 
**AttesterJwksUri** | **string** | Detailed responses only. | [optional] 
**TokenExchangeEnabled** | **bool** | Detailed responses only. Whether the client may use token exchange (RFC 8693). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

