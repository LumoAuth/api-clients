# SmsEnrollmentStarted


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] [default to undefined]
**state** | **string** |  | [optional] [default to undefined]
**masked_phone** | **string** |  | [optional] [default to undefined]
**resend_after** | **number** | Seconds until a new code may be requested | [optional] [default to undefined]

## Example

```typescript
import { SmsEnrollmentStarted } from '@lumoauth/api-client';

const instance: SmsEnrollmentStarted = {
    id,
    state,
    masked_phone,
    resend_after,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
