# OAuthClient


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **number** |  | [default to undefined]
**clientId** | **string** |  | [default to undefined]
**name** | **string** |  | [default to undefined]
**isConfidential** | **boolean** |  | [default to undefined]
**isPublic** | **boolean** |  | [default to undefined]
**isActive** | **boolean** |  | [default to undefined]
**requiresPkce** | **boolean** |  | [default to undefined]
**createdAt** | **string** |  | [default to undefined]
**redirectUris** | **Array&lt;string&gt;** | Detailed responses only | [optional] [default to undefined]
**scopes** | **Array&lt;string&gt;** | Detailed responses only | [optional] [default to undefined]
**grantTypes** | **Array&lt;string&gt;** | Detailed responses only | [optional] [default to undefined]
**cibaEnabled** | **boolean** | Detailed responses only. Whether the client may use CIBA (backchannel authentication). | [optional] [default to undefined]
**allowedOrigins** | **Array&lt;string&gt;** | Detailed responses only. Browser CORS origins (scheme://host[:port]). | [optional] [default to undefined]
**postLogoutRedirectUris** | **Array&lt;string&gt;** | Detailed responses only. Addresses that the end-session endpoint may return to. | [optional] [default to undefined]
**frontchannelLogoutUri** | **string** | Detailed responses only. OIDC Front-Channel Logout address. | [optional] [default to undefined]
**backchannelLogoutUri** | **string** | Detailed responses only. OIDC Back-Channel Logout address. | [optional] [default to undefined]
**accessTokenFormat** | **string** | Detailed responses only. Format of the access tokens that the client receives. | [optional] [default to undefined]
**tokenEndpointAuthMethod** | **string** | Detailed responses only. | [optional] [default to undefined]
**jwksUri** | **string** | Detailed responses only. https address of the client\&#39;s public keys. | [optional] [default to undefined]
**jwks** | **{ [key: string]: any; }** | Detailed responses only. The client\&#39;s public keys, inline. | [optional] [default to undefined]
**fapiMode** | **string** | Detailed responses only. FAPI 2.0 security profile. | [optional] [default to undefined]
**requirePar** | **boolean** | Detailed responses only. The stored switch; a FAPI profile requires PAR whatever it says. | [optional] [default to undefined]
**dpopBoundAccessTokens** | **boolean** | Detailed responses only. The stored switch; a FAPI profile requires DPoP whatever it says. | [optional] [default to undefined]
**attestationBasedAuthEnabled** | **boolean** | Detailed responses only. | [optional] [default to undefined]
**attesterIssuer** | **string** | Detailed responses only. | [optional] [default to undefined]
**attesterJwksUri** | **string** | Detailed responses only. | [optional] [default to undefined]
**tokenExchangeEnabled** | **boolean** | Detailed responses only. Whether the client may use token exchange (RFC 8693). | [optional] [default to undefined]

## Example

```typescript
import { OAuthClient } from '@lumoauth/api-client';

const instance: OAuthClient = {
    id,
    clientId,
    name,
    isConfidential,
    isPublic,
    isActive,
    requiresPkce,
    createdAt,
    redirectUris,
    scopes,
    grantTypes,
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
