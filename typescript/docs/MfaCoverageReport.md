# MfaCoverageReport


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_users** | **number** |  | [optional] [default to undefined]
**enrolled_users** | **number** |  | [optional] [default to undefined]
**enrolled_pct** | **number** |  | [optional] [default to undefined]
**by_type** | **{ [key: string]: number; }** |  | [optional] [default to undefined]
**by_tier** | **{ [key: string]: number; }** |  | [optional] [default to undefined]
**requirement** | **string** |  | [optional] [default to undefined]
**in_grace** | **number** |  | [optional] [default to undefined]
**past_grace** | **number** |  | [optional] [default to undefined]
**deferred** | **number** |  | [optional] [default to undefined]
**generated_at** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { MfaCoverageReport } from '@lumoauth/api-client';

const instance: MfaCoverageReport = {
    total_users,
    enrolled_users,
    enrolled_pct,
    by_type,
    by_tier,
    requirement,
    in_grace,
    past_grace,
    deferred,
    generated_at,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
