# AttestResponseIdentity

The verified workload identity.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider** | **string** |  | [optional] [default to undefined]
**subject** | **string** |  | [optional] [default to undefined]
**issuer** | **string** |  | [optional] [default to undefined]
**audience_generic** | **boolean** | True when the registered audience is not specific to this deployment (operators should move to the agent-specific audience). | [optional] [default to undefined]

## Example

```typescript
import { AttestResponseIdentity } from '@lumoauth/api-client';

const instance: AttestResponseIdentity = {
    provider,
    subject,
    issuer,
    audience_generic,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
