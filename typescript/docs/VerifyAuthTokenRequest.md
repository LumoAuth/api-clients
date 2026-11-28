# VerifyAuthTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auth_token** | **string** | The auth token presented by the agent. | [default to undefined]
**resource** | **string** | Required. The resource identifier of the calling resource (&#x60;resource_identifier&#x60; is accepted as well). The HTTP message signature is checked with the registered keys of this resource. | [default to undefined]

## Example

```typescript
import { VerifyAuthTokenRequest } from '@lumoauth/api-client';

const instance: VerifyAuthTokenRequest = {
    auth_token,
    resource,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
