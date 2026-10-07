# VerifyResourceTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource_token** | **string** | The resource token to validate. | [optional] [default to undefined]
**agent** | **string** | Agent identifier the token must be bound to. | [optional] [default to undefined]
**agent_jkt** | **string** | JWK thumbprint of the agent key. | [optional] [default to undefined]

## Example

```typescript
import { VerifyResourceTokenRequest } from '@lumoauth/api-client';

const instance: VerifyResourceTokenRequest = {
    resource_token,
    agent,
    agent_jkt,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
