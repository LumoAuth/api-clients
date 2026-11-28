# IntrospectRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | **string** |  | [default to undefined]
**token_type_hint** | **string** |  | [optional] [default to undefined]
**client_id** | **string** | Required for a public client; a confidential client may authenticate with HTTP Basic instead. | [optional] [default to undefined]
**client_secret** | **string** | client_secret_post | [optional] [default to undefined]
**client_assertion_type** | **string** |  | [optional] [default to undefined]
**client_assertion** | **string** | private_key_jwt (RFC 7523) | [optional] [default to undefined]

## Example

```typescript
import { IntrospectRequest } from '@lumoauth/api-client';

const instance: IntrospectRequest = {
    token,
    token_type_hint,
    client_id,
    client_secret,
    client_assertion_type,
    client_assertion,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
