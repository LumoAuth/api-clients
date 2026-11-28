# # CreateClientResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  |
**clientId** | **string** |  |
**name** | **string** |  |
**isConfidential** | **bool** |  |
**isPublic** | **bool** |  |
**isActive** | **bool** |  |
**requiresPkce** | **bool** |  |
**createdAt** | **\DateTime** |  |
**redirectUris** | **string[]** | Detailed responses only | [optional]
**scopes** | **string[]** | Detailed responses only | [optional]
**grantTypes** | **string[]** | Detailed responses only | [optional]
**cibaEnabled** | **bool** | Detailed responses only. Whether the client may use CIBA (backchannel authentication). | [optional]
**allowedOrigins** | **string[]** | Detailed responses only. Browser CORS origins (scheme://host[:port]). | [optional]
**postLogoutRedirectUris** | **string[]** | Detailed responses only. Addresses that the end-session endpoint may return to. | [optional]
**frontchannelLogoutUri** | **string** | Detailed responses only. OIDC Front-Channel Logout address. | [optional]
**backchannelLogoutUri** | **string** | Detailed responses only. OIDC Back-Channel Logout address. | [optional]
**accessTokenFormat** | **string** | Detailed responses only. Format of the access tokens that the client receives. | [optional]
**tokenEndpointAuthMethod** | **string** | Detailed responses only. | [optional]
**jwksUri** | **string** | Detailed responses only. https address of the client&#39;s public keys. | [optional]
**jwks** | **array<string,mixed>** | Detailed responses only. The client&#39;s public keys, inline. | [optional]
**fapiMode** | **string** | Detailed responses only. FAPI 2.0 security profile. | [optional]
**requirePar** | **bool** | Detailed responses only. The stored switch; a FAPI profile requires PAR whatever it says. | [optional]
**dpopBoundAccessTokens** | **bool** | Detailed responses only. The stored switch; a FAPI profile requires DPoP whatever it says. | [optional]
**attestationBasedAuthEnabled** | **bool** | Detailed responses only. | [optional]
**attesterIssuer** | **string** | Detailed responses only. | [optional]
**attesterJwksUri** | **string** | Detailed responses only. | [optional]
**tokenExchangeEnabled** | **bool** | Detailed responses only. Whether the client may use token exchange (RFC 8693). | [optional]
**secret** | **string** | Plaintext client secret — returned only once, never retrievable again. Absent for a public client | [optional]
**note** | **string** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
