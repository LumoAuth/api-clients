# SubmitLoginJsonResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **string** |  | [default to undefined]
**challenge_url** | **string** | Path of the MFA challenge page; only when status&#x3D;mfa_required. | [optional] [default to undefined]

## Example

```typescript
import { SubmitLoginJsonResponse } from '@lumoauth/api-client';

const instance: SubmitLoginJsonResponse = {
    status,
    challenge_url,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
