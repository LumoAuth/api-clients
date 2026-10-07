# IssuePlatformTokenResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **string** |  | [optional] [default to undefined]
**issued_token_type** | **string** |  | [optional] [default to undefined]
**token_type** | **string** |  | [optional] [default to undefined]
**expires_in** | **number** |  | [optional] [default to undefined]
**scope** | **string** |  | [optional] [default to undefined]
**agent_id** | **string** |  | [optional] [default to undefined]
**cnf_jkt** | **string** | RFC 7638 thumbprint of the agent key the token is bound to. | [optional] [default to undefined]

## Example

```typescript
import { IssuePlatformTokenResponse } from '@lumoauth/api-client';

const instance: IssuePlatformTokenResponse = {
    access_token,
    issued_token_type,
    token_type,
    expires_in,
    scope,
    agent_id,
    cnf_jkt,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
