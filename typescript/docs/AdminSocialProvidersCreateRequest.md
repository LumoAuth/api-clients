# AdminSocialProvidersCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider** | **string** | The provider key, for example google, microsoft, github or apple. | [default to undefined]
**clientId** | **string** |  | [optional] [default to undefined]
**clientSecret** | **string** |  | [optional] [default to undefined]
**displayName** | **string** |  | [optional] [default to undefined]
**enabled** | **boolean** |  | [optional] [default to undefined]
**enableForOAuthApps** | **boolean** |  | [optional] [default to undefined]
**requestedScopes** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**claimMapping** | **{ [key: string]: any; }** |  | [optional] [default to undefined]
**providerConfig** | **{ [key: string]: any; }** |  | [optional] [default to undefined]
**defaultRoles** | **Array&lt;string&gt;** | Role slugs; roles that open the portal are refused. | [optional] [default to undefined]
**brandColor** | **string** |  | [optional] [default to undefined]
**iconUrl** | **string** |  | [optional] [default to undefined]
**authorizationUrl** | **string** |  | [optional] [default to undefined]
**tokenUrl** | **string** |  | [optional] [default to undefined]
**userInfoUrl** | **string** |  | [optional] [default to undefined]
**hostedDomain** | **string** | Google: Workspace domain. | [optional] [default to undefined]
**tenantId** | **string** | Microsoft: Entra tenant. | [optional] [default to undefined]
**issuerUrl** | **string** |  | [optional] [default to undefined]
**teamId** | **string** | Apple. | [optional] [default to undefined]
**keyId** | **string** | Apple. | [optional] [default to undefined]
**privateKey** | **string** | Apple: the .p8 key. | [optional] [default to undefined]

## Example

```typescript
import { AdminSocialProvidersCreateRequest } from '@lumoauth/api-client';

const instance: AdminSocialProvidersCreateRequest = {
    provider,
    clientId,
    clientSecret,
    displayName,
    enabled,
    enableForOAuthApps,
    requestedScopes,
    claimMapping,
    providerConfig,
    defaultRoles,
    brandColor,
    iconUrl,
    authorizationUrl,
    tokenUrl,
    userInfoUrl,
    hostedDomain,
    tenantId,
    issuerUrl,
    teamId,
    keyId,
    privateKey,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
