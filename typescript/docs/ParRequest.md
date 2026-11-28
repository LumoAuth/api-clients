# ParRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**response_type** | **string** |  | [optional] [default to undefined]
**redirect_uri** | **string** |  | [optional] [default to undefined]
**scope** | **string** |  | [optional] [default to undefined]
**state** | **string** |  | [optional] [default to undefined]
**nonce** | **string** |  | [optional] [default to undefined]
**code_challenge** | **string** |  | [optional] [default to undefined]
**code_challenge_method** | **string** |  | [optional] [default to undefined]
**request** | **string** | A signed request object (JAR, RFC 9101). | [optional] [default to undefined]
**resource** | **string** |  | [optional] [default to undefined]
**authorization_details** | **string** |  | [optional] [default to undefined]
**prompt** | **string** |  | [optional] [default to undefined]
**login_hint** | **string** |  | [optional] [default to undefined]
**client_id** | **string** | Required for a public client; a confidential client may authenticate with HTTP Basic instead. | [optional] [default to undefined]
**client_secret** | **string** | client_secret_post | [optional] [default to undefined]
**client_assertion_type** | **string** |  | [optional] [default to undefined]
**client_assertion** | **string** | private_key_jwt (RFC 7523) | [optional] [default to undefined]

## Example

```typescript
import { ParRequest } from '@lumoauth/api-client';

const instance: ParRequest = {
    response_type,
    redirect_uri,
    scope,
    state,
    nonce,
    code_challenge,
    code_challenge_method,
    request,
    resource,
    authorization_details,
    prompt,
    login_hint,
    client_id,
    client_secret,
    client_assertion_type,
    client_assertion,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
