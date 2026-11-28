# EvaluateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **{ [key: string]: any; }** | {\&quot;type\&quot;, \&quot;id\&quot;, \&quot;properties\&quot;} | [default to undefined]
**action** | **{ [key: string]: any; }** | {\&quot;name\&quot;, \&quot;properties\&quot;} | [default to undefined]
**resource** | **{ [key: string]: any; }** | {\&quot;type\&quot;, \&quot;id\&quot;, \&quot;properties\&quot;} | [default to undefined]
**context** | **{ [key: string]: any; }** |  | [optional] [default to undefined]

## Example

```typescript
import { EvaluateRequest } from '@lumoauth/api-client';

const instance: EvaluateRequest = {
    subject,
    action,
    resource,
    context,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
