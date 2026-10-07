# CreateMfaChallengeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**purpose** | **string** |  | [optional] [default to Purpose_STEP_UP]
**authenticator_id** | **string** |  | [optional] [default to undefined]
**min_tier** | **number** | Require a factor at least this strong (1 &#x3D; passkey only) | [optional] [default to undefined]
**action_description** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { CreateMfaChallengeRequest } from '@lumoauth/api-client';

const instance: CreateMfaChallengeRequest = {
    purpose,
    authenticator_id,
    min_tier,
    action_description,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
