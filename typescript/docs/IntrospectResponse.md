# IntrospectResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **boolean** |  | [default to undefined]
**token_type** | **string** | Bearer for access tokens; refresh_token for refresh tokens. | [optional] [default to undefined]
**scope** | **string** | Space-separated scopes. | [optional] [default to undefined]
**client_id** | **string** |  | [optional] [default to undefined]
**sub** | **string** | User id, or client_… / agent_… for non-user subjects. | [optional] [default to undefined]
**username** | **string** | The user\&#39;s email (user-bound tokens only). | [optional] [default to undefined]
**exp** | **number** | Expiry, Unix seconds. | [optional] [default to undefined]
**iat** | **number** | Issued-at, Unix seconds. | [optional] [default to undefined]
**nbf** | **number** | Not-before, Unix seconds (JWT tokens only). | [optional] [default to undefined]
**iss** | **string** | Issuer identifier of this organization. | [optional] [default to undefined]
**aud** | [**IntrospectResponseAud**](IntrospectResponseAud.md) |  | [optional] [default to undefined]
**jti** | **string** | JWT id (JWT tokens only). | [optional] [default to undefined]

## Example

```typescript
import { IntrospectResponse } from '@lumoauth/api-client';

const instance: IntrospectResponse = {
    active,
    token_type,
    scope,
    client_id,
    sub,
    username,
    exp,
    iat,
    nbf,
    iss,
    aud,
    jti,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
