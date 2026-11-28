# PutAbacPoliciesUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [optional] [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**resourceType** | **string** |  | [optional] [default to undefined]
**action** | **string** |  | [optional] [default to undefined]
**effect** | **string** |  | [optional] [default to undefined]
**priority** | **number** |  | [optional] [default to undefined]
**conditions** | **{ [key: string]: any; }** |  | [optional] [default to undefined]

## Example

```typescript
import { PutAbacPoliciesUpdateRequest } from '@lumoauth/api-client';

const instance: PutAbacPoliciesUpdateRequest = {
    name,
    description,
    resourceType,
    action,
    effect,
    priority,
    conditions,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
