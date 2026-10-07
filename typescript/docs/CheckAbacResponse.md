# CheckAbacResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed** | **boolean** |  | [optional] [default to undefined]
**reason** | **string** |  | [optional] [default to undefined]
**matchedPolicies** | [**Array&lt;CheckAbacResponseMatchedPoliciesItem&gt;**](CheckAbacResponseMatchedPoliciesItem.md) | Policies that produced the decision. Callers holding policies.view receive the full AbacPolicy objects; everyone else only id and name. | [optional] [default to undefined]
**user_id** | **string** |  | [optional] [default to undefined]
**resourceType** | **string** |  | [optional] [default to undefined]
**action** | **string** |  | [optional] [default to undefined]
**resourceId** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { CheckAbacResponse } from '@lumoauth/api-client';

const instance: CheckAbacResponse = {
    allowed,
    reason,
    matchedPolicies,
    user_id,
    resourceType,
    action,
    resourceId,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
