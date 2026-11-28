# VerifyResourceTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **string** | Required. The resource identifier of the calling resource (&#x60;resource_identifier&#x60; is accepted as well). The HTTP message signature is checked with the registered keys of this resource. | [default to undefined]
**resource_token** | **string** | The resource token to validate. | [default to undefined]
**agent** | **string** | Agent identifier the token must be bound to. | [default to undefined]
**agent_jkt** | **string** | JWK thumbprint of the agent key. | [default to undefined]

## Example

```typescript
import { VerifyResourceTokenRequest } from '@lumoauth/api-client';

const instance: VerifyResourceTokenRequest = {
    resource,
    resource_token,
    agent,
    agent_jkt,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
