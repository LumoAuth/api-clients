# GetMyAttributesResponseAttributes


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] [default to undefined]
**email** | **string** |  | [optional] [default to undefined]
**username** | **string** |  | [optional] [default to undefined]
**name** | **string** |  | [optional] [default to undefined]
**isAdmin** | **boolean** |  | [optional] [default to undefined]
**isSuperAdmin** | **boolean** |  | [optional] [default to undefined]
**emailVerified** | **boolean** |  | [optional] [default to undefined]
**mfaEnabled** | **boolean** |  | [optional] [default to undefined]
**isActive** | **boolean** |  | [optional] [default to undefined]
**blocked** | **boolean** |  | [optional] [default to undefined]
**givenName** | **string** |  | [optional] [default to undefined]
**familyName** | **string** |  | [optional] [default to undefined]
**locale** | **string** |  | [optional] [default to undefined]
**zoneinfo** | **string** |  | [optional] [default to undefined]
**roles** | **Array&lt;string&gt;** | Role slugs | [optional] [default to undefined]
**groups** | **Array&lt;string&gt;** | Group slugs | [optional] [default to undefined]
**permissions** | **Array&lt;string&gt;** | Permission slugs | [optional] [default to undefined]
**tenantId** | **number** |  | [optional] [default to undefined]
**orgId** | **string** | Organization slug | [optional] [default to undefined]

## Example

```typescript
import { GetMyAttributesResponseAttributes } from '@lumoauth/api-client';

const instance: GetMyAttributesResponseAttributes = {
    id,
    email,
    username,
    name,
    isAdmin,
    isSuperAdmin,
    emailVerified,
    mfaEnabled,
    isActive,
    blocked,
    givenName,
    familyName,
    locale,
    zoneinfo,
    roles,
    groups,
    permissions,
    tenantId,
    orgId,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
