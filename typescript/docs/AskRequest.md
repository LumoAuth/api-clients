# AskRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **string** | The action to authorize. | [optional] [default to undefined]
**context** | **object** | Optional resource/attribute context for the decision. | [optional] [default to undefined]
**audit** | **string** | Which decisions go to the audit log. denials (default): refusals only. always: allowed decisions too (agent.capability_check_allowed), for a tool-call hook that wants every decision on record. | [optional] [default to Audit_DENIALS]

## Example

```typescript
import { AskRequest } from '@lumoauth/api-client';

const instance: AskRequest = {
    action,
    context,
    audit,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
