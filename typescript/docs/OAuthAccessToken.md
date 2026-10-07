# OAuthAccessToken


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **number** |  | [optional] [default to undefined]
**clientId** | **string** |  | [optional] [default to undefined]
**userId** | **string** |  | [optional] [default to undefined]
**scopes** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**revoked** | **boolean** |  | [optional] [default to undefined]
**expiresAt** | **string** |  | [optional] [default to undefined]
**createdAt** | **string** |  | [optional] [default to undefined]
**isExpired** | **boolean** |  | [optional] [default to undefined]

## Example

```typescript
import { OAuthAccessToken } from '@lumoauth/api-client';

const instance: OAuthAccessToken = {
    id,
    clientId,
    userId,
    scopes,
    revoked,
    expiresAt,
    createdAt,
    isExpired,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
