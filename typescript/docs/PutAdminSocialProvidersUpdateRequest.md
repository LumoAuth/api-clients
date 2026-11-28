# PutAdminSocialProvidersUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientId** | **string** |  | [optional] [default to undefined]
**clientSecret** | **string** |  | [optional] [default to undefined]
**displayName** | **string** |  | [optional] [default to undefined]
**enabled** | **boolean** |  | [optional] [default to undefined]
**enableForOAuthApps** | **boolean** |  | [optional] [default to undefined]
**requestedScopes** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**claimMapping** | **{ [key: string]: any; }** |  | [optional] [default to undefined]
**providerConfig** | **{ [key: string]: any; }** |  | [optional] [default to undefined]
**defaultRoles** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**brandColor** | **string** |  | [optional] [default to undefined]
**iconUrl** | **string** |  | [optional] [default to undefined]
**authorizationUrl** | **string** |  | [optional] [default to undefined]
**tokenUrl** | **string** |  | [optional] [default to undefined]
**userInfoUrl** | **string** |  | [optional] [default to undefined]
**hostedDomain** | **string** |  | [optional] [default to undefined]
**tenantId** | **string** |  | [optional] [default to undefined]
**issuerUrl** | **string** |  | [optional] [default to undefined]
**teamId** | **string** |  | [optional] [default to undefined]
**keyId** | **string** |  | [optional] [default to undefined]
**privateKey** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { PutAdminSocialProvidersUpdateRequest } from '@lumoauth/api-client';

const instance: PutAdminSocialProvidersUpdateRequest = {
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
