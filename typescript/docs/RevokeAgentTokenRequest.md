# RevokeAgentTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | **string** | The auth token JTI or refresh token value to revoke. | [optional] [default to undefined]
**token_type** | **string** | auth_token (default) or refresh_token. | [optional] [default to undefined]

## Example

```typescript
import { RevokeAgentTokenRequest } from '@lumoauth/api-client';

const instance: RevokeAgentTokenRequest = {
    token,
    token_type,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
