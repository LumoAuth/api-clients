# IssueDelegateTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delegate_sub** | **string** | Subject identifier of the delegate the agent token is issued to. | [optional] [default to undefined]
**delegate_public_key** | **object** | The delegate public key (JWK) bound into the agent token cnf. | [optional] [default to undefined]
**audience** | **any** | Optional audience (string or array of strings). | [optional] [default to undefined]

## Example

```typescript
import { IssueDelegateTokenRequest } from '@lumoauth/api-client';

const instance: IssueDelegateTokenRequest = {
    delegate_sub,
    delegate_public_key,
    audience,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
