# VerifyAuthTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auth_token** | **string** | The auth token presented by the agent. | [optional] [default to undefined]
**resource** | **string** | Resource identifier; defaults to the authenticated resource. | [optional] [default to undefined]

## Example

```typescript
import { VerifyAuthTokenRequest } from '@lumoauth/api-client';

const instance: VerifyAuthTokenRequest = {
    auth_token,
    resource,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
