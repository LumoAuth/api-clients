# McpServerPosture

Computed security posture checklist (src/Service/McpPosture).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**level** | **string** |  | [optional] [default to undefined]
**label** | **string** |  | [optional] [default to undefined]
**passes** | **number** |  | [optional] [default to undefined]
**applicable** | **number** |  | [optional] [default to undefined]
**checks** | [**Array&lt;McpServerPostureChecksInner&gt;**](McpServerPostureChecksInner.md) |  | [optional] [default to undefined]

## Example

```typescript
import { McpServerPosture } from '@lumoauth/api-client';

const instance: McpServerPosture = {
    level,
    label,
    passes,
    applicable,
    checks,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
