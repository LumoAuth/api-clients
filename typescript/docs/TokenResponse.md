# TokenResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **string** |  | [default to undefined]
**token_type** | **string** | DPoP for sender-constrained tokens; N_A for ID-JAG and Txn-Token exchanges (RFC 8693 §2.2.1). | [default to undefined]
**expires_in** | **number** |  | [default to undefined]
**scope** | **string** | Space-separated granted scopes. Omitted for Txn-Token and for ID-JAG when no scopes were granted. | [optional] [default to undefined]
**refresh_token** | **string** | Only when the client is registered for the refresh_token grant. | [optional] [default to undefined]
**id_token** | **string** | OpenID Connect ID Token (JWT) when the openid scope was granted. | [optional] [default to undefined]
**issued_token_type** | **string** | Token exchange only (RFC 8693). | [optional] [default to undefined]
**authorization_details** | **Array&lt;{ [key: string]: any; }&gt;** | Agent-initiated CIBA only: the approved RFC 9396 authorization details. | [optional] [default to undefined]
**jit_request_id** | **string** | Agent-initiated CIBA only. | [optional] [default to undefined]
**task_id** | **string** | Agent-initiated CIBA only. | [optional] [default to undefined]

## Example

```typescript
import { TokenResponse } from '@lumoauth/api-client';

const instance: TokenResponse = {
    access_token,
    token_type,
    expires_in,
    scope,
    refresh_token,
    id_token,
    issued_token_type,
    authorization_details,
    jit_request_id,
    task_id,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
