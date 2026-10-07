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
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
