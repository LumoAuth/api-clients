# AttestRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attestation_token** | **string** | The workload OIDC token (JWT). | [default to undefined]
**scope** | [**AttestRequestScope**](AttestRequestScope.md) |  | [optional] [default to undefined]

## Example

```typescript
import { AttestRequest } from '@lumoauth/api-client';

const instance: AttestRequest = {
    attestation_token,
    scope,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
