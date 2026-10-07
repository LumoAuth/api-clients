# IssuePlatformTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**grant_type** | **string** |  | [optional] [default to undefined]
**subject_token** | **string** | A valid AAuth agent token (agent+jwt). | [optional] [default to undefined]
**subject_token_type** | **string** |  | [optional] [default to undefined]
**scope** | **string** | Optional space-delimited scopes; narrows (never widens) the agent capabilities. | [optional] [default to undefined]

## Example

```typescript
import { IssuePlatformTokenRequest } from '@lumoauth/api-client';

const instance: IssuePlatformTokenRequest = {
    grant_type,
    subject_token,
    subject_token_type,
    scope,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
