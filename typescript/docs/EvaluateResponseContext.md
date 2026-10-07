# EvaluateResponseContext

Only present on a deny, and only for callers holding policies.view

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] [default to undefined]
**reason_admin** | [**EvaluateResponseContextReasonAdmin**](EvaluateResponseContextReasonAdmin.md) |  | [optional] [default to undefined]

## Example

```typescript
import { EvaluateResponseContext } from '@lumoauth/api-client';

const instance: EvaluateResponseContext = {
    id,
    reason_admin,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
