# TokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**grant_type** | **string** |  | [default to undefined]
**code** | **string** |  | [optional] [default to undefined]
**redirect_uri** | **string** |  | [optional] [default to undefined]
**code_verifier** | **string** |  | [optional] [default to undefined]
**refresh_token** | **string** |  | [optional] [default to undefined]
**device_code** | **string** |  | [optional] [default to undefined]
**auth_req_id** | **string** | CIBA | [optional] [default to undefined]
**scope** | **string** |  | [optional] [default to undefined]
**resource** | **string** |  | [optional] [default to undefined]
**subject_token** | **string** | Token exchange (RFC 8693) | [optional] [default to undefined]
**subject_token_type** | **string** |  | [optional] [default to undefined]
**actor_token** | **string** |  | [optional] [default to undefined]
**actor_token_type** | **string** |  | [optional] [default to undefined]
**requested_token_type** | **string** |  | [optional] [default to undefined]
**assertion** | **string** | JWT bearer / ID-JAG grant | [optional] [default to undefined]
**client_id** | **string** | Required for a public client; a confidential client may authenticate with HTTP Basic instead. | [optional] [default to undefined]
**client_secret** | **string** | client_secret_post | [optional] [default to undefined]
**client_assertion_type** | **string** |  | [optional] [default to undefined]
**client_assertion** | **string** | private_key_jwt (RFC 7523) | [optional] [default to undefined]

## Example

```typescript
import { TokenRequest } from '@lumoauth/api-client';

const instance: TokenRequest = {
    grant_type,
    code,
    redirect_uri,
    code_verifier,
    refresh_token,
    device_code,
    auth_req_id,
    scope,
    resource,
    subject_token,
    subject_token_type,
    actor_token,
    actor_token_type,
    requested_token_type,
    assertion,
    client_id,
    client_secret,
    client_assertion_type,
    client_assertion,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
