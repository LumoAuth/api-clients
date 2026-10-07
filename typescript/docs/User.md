# User


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [default to undefined]
**email** | **string** |  | [default to undefined]
**username** | **string** |  | [optional] [default to undefined]
**name** | **string** |  | [optional] [default to undefined]
**givenName** | **string** |  | [optional] [default to undefined]
**familyName** | **string** |  | [optional] [default to undefined]
**picture** | **string** |  | [optional] [default to undefined]
**emailVerified** | **boolean** |  | [default to undefined]
**phoneNumber** | **string** |  | [optional] [default to undefined]
**phoneNumberVerified** | **boolean** |  | [optional] [default to undefined]
**isActive** | **boolean** |  | [default to undefined]
**blocked** | **boolean** |  | [default to undefined]
**mfaEnabled** | **boolean** |  | [default to undefined]
**isAdmin** | **boolean** |  | [default to undefined]
**createdAt** | **string** |  | [default to undefined]
**lastLoginAt** | **string** |  | [optional] [default to undefined]
**loginCount** | **number** |  | [default to undefined]
**roles** | [**Array&lt;RoleRef&gt;**](RoleRef.md) | Detailed (single-user) responses only | [optional] [default to undefined]
**groups** | [**Array&lt;GroupRef&gt;**](GroupRef.md) | Detailed responses only | [optional] [default to undefined]
**locale** | **string** | Detailed responses only | [optional] [default to undefined]
**zoneinfo** | **string** | Detailed responses only | [optional] [default to undefined]
**updatedAt** | **string** | Detailed responses only | [optional] [default to undefined]
**blockedAt** | **string** | Detailed responses only | [optional] [default to undefined]
**isJitProvisioned** | **boolean** | Detailed responses only | [optional] [default to undefined]
**jitProvisionedBy** | **string** | Detailed responses only | [optional] [default to undefined]
**socialProvider** | **string** | Detailed responses only | [optional] [default to undefined]

## Example

```typescript
import { User } from '@lumoauth/api-client';

const instance: User = {
    id,
    email,
    username,
    name,
    givenName,
    familyName,
    picture,
    emailVerified,
    phoneNumber,
    phoneNumberVerified,
    isActive,
    blocked,
    mfaEnabled,
    isAdmin,
    createdAt,
    lastLoginAt,
    loginCount,
    roles,
    groups,
    locale,
    zoneinfo,
    updatedAt,
    blockedAt,
    isJitProvisioned,
    jitProvisionedBy,
    socialProvider,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
