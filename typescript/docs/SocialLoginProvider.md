# SocialLoginProvider


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **number** |  | [default to undefined]
**provider** | **string** |  | [default to undefined]
**displayName** | **string** |  | [default to undefined]
**enabled** | **boolean** |  | [default to undefined]
**brandColor** | **string** |  | [optional] [default to undefined]
**iconUrl** | **string** |  | [optional] [default to undefined]
**jitProvisioningEnabled** | **boolean** |  | [default to undefined]
**clientId** | **string** | Detailed responses only | [optional] [default to undefined]
**callbackUrl** | **string** | Detailed responses only | [optional] [default to undefined]
**requestedScopes** | **Array&lt;string&gt;** | Detailed responses only | [optional] [default to undefined]
**customClaims** | **{ [key: string]: any; }** | Detailed responses only | [optional] [default to undefined]
**claimMapping** | **{ [key: string]: any; }** | Detailed responses only | [optional] [default to undefined]
**providerConfig** | **{ [key: string]: any; }** | Detailed responses only; secrets redacted | [optional] [default to undefined]
**authorizationUrl** | **string** | Detailed responses only | [optional] [default to undefined]
**tokenUrl** | **string** | Detailed responses only | [optional] [default to undefined]
**userInfoUrl** | **string** | Detailed responses only | [optional] [default to undefined]
**defaultRoles** | [**Array&lt;RoleRef&gt;**](RoleRef.md) | Detailed responses only | [optional] [default to undefined]

## Example

```typescript
import { SocialLoginProvider } from '@lumoauth/api-client';

const instance: SocialLoginProvider = {
    id,
    provider,
    displayName,
    enabled,
    brandColor,
    iconUrl,
    jitProvisioningEnabled,
    clientId,
    callbackUrl,
    requestedScopes,
    customClaims,
    claimMapping,
    providerConfig,
    authorizationUrl,
    tokenUrl,
    userInfoUrl,
    defaultRoles,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
