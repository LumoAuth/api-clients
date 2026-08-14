# AdminAgentsGenerateTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scopes** | **Array&lt;string&gt;** | Optional scopes to embed in the token. | [optional] [default to undefined]
**ttl** | **number** | Optional token lifetime in seconds. | [optional] [default to undefined]

## Example

```typescript
import { AdminAgentsGenerateTokenRequest } from '@lumoauth/api-client';

const instance: AdminAgentsGenerateTokenRequest = {
    scopes,
    ttl,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
