# AttestResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **string** |  | [default to undefined]
**token_type** | **string** |  | [default to undefined]
**expires_in** | **number** |  | [default to undefined]
**scope** | **string** | The issued scope values (the agent\&#39;s capabilities, or the requested subset), separated by one space. Left out when none was issued. | [optional] [default to undefined]
**identity** | [**AttestResponseIdentity**](AttestResponseIdentity.md) |  | [default to undefined]

## Example

```typescript
import { AttestResponse } from '@lumoauth/api-client';

const instance: AttestResponse = {
    access_token,
    token_type,
    expires_in,
    scope,
    identity,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
