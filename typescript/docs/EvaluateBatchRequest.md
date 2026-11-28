# EvaluateBatchRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **{ [key: string]: any; }** | Default for every evaluation. | [optional] [default to undefined]
**action** | **{ [key: string]: any; }** |  | [optional] [default to undefined]
**resource** | **{ [key: string]: any; }** |  | [optional] [default to undefined]
**context** | **{ [key: string]: any; }** |  | [optional] [default to undefined]
**evaluations** | **Array&lt;{ [key: string]: any; }&gt;** | Evaluation requests; each member overrides the defaults. | [default to undefined]

## Example

```typescript
import { EvaluateBatchRequest } from '@lumoauth/api-client';

const instance: EvaluateBatchRequest = {
    subject,
    action,
    resource,
    context,
    evaluations,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
