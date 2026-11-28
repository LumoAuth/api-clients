# AbacPoliciesCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [default to undefined]
**slug** | **string** |  | [optional] [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**resourceType** | **string** |  | [default to undefined]
**action** | **string** | One action, a comma-separated list of actions, or *. | [default to undefined]
**effect** | **string** |  | [default to undefined]
**priority** | **number** |  | [optional] [default to undefined]
**conditions** | **{ [key: string]: any; }** | A condition group: {\&quot;operator\&quot;: \&quot;AND\&quot;|\&quot;OR\&quot;, \&quot;conditions\&quot;: [...]}. | [default to undefined]

## Example

```typescript
import { AbacPoliciesCreateRequest } from '@lumoauth/api-client';

const instance: AbacPoliciesCreateRequest = {
    name,
    slug,
    description,
    resourceType,
    action,
    effect,
    priority,
    conditions,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
